# -*- coding: utf-8 -*-
"""
Created on Mon Jun 14 10:03:41 2021

@author: Karl Seltzer
modifications by HOT Pye
"""

import pandas as pd
import numpy as np
import rdkit
from rdkit import Chem
from rdkit.Chem import Fragments
from rdkit.Chem import rdMolDescriptors
from datetime import date

def dfappend_soayield(dfin):
  '''
    Estimates SOA yield for all
    compounds in SPECIATE
  '''

  dfin['est_soa_yield']=''  
  
  # Perform mapping, append info to data frame, create mech4import df
  for idx, row in dfin.iterrows():
    smiles      = row['SMILES']
    pvap        = row['VAPOR_PRESSURE_MMHG_OPERA_PRED']
    molwght     = row['AVERAGE_MASS']
    if (smiles == '-' or np.isnan(pvap) or np.isnan(molwght)):
        soayield = 0.0
    else:
        soayield    = get_soayield(smiles,pvap,molwght)
    dfin.at[idx,'est_soa_yield']=soayield

  # Write to file the spc table + comptox + map results
  #today = date.today()
  #filenameout = today.strftime('%Y%m%d')+r'_speciespropv2_withcomptox_withcracmm0.0_withSOA.csv'
  #dfin.to_csv(filenameout,index=False)
  #print("Results saved to "+filenameout)

  return dfin

def get_soayield(smiles,pvap,molwght):
  '''
  Estimate SOA yield using composition, structure, and volatility information.
  Empirical estimates largely follow methods outlined in Seltzer et al., ACP, 2021.
  '''
  # Prep inputs
  m       = Chem.MolFromSmiles(smiles)
  smiles  = smiles.upper()

  # Count C=C, atoms, and calculate properties
  nCdblC  = smiles.count('=C')
  nC      = smiles.count('C')-smiles.count('CL')
  nO      = smiles.count('O')
  nSi     = smiles.count('SI')
  nHalo   = smiles.count('CL') + smiles.count('F') + smiles.count('BR')
  cstar   = np.log10( pvap * 133.322 * molwght / 8.31451 / 298.15 * 1E6)
  nH      = 0
  for atom in m.GetAtoms():
      nH += atom.GetTotalNumHs()
  
  # Count functional groups (http://rdkit.org/docs/source/rdkit.Chem.Fragments.html)
  nbenzene  = rdkit.Chem.Fragments.fr_benzene(m,countUnique=True)
  for atom in range(len(m.GetAtoms())):
      if m.GetAtomWithIdx(atom).IsInRing(): 
          gotring = 1 # 0 = no ring, 1 = ring
          break
      else: gotring = 0
  nBranch = smiles.count('(C')
  
  # Determine Group
  if   ( nHalo > 0 ):               group       = 'halocarbon'
  elif ( nC < 5 ):                  group       = 'ncless5'
  elif ( nSi > 0 ):                 group       = 'siloxane'
  elif ( nC == 15 and nH == 24 ) and ( nCdblC>=1 ): 
                                    group       = 'sesquiterpene' # sesquiterpenes
  elif ( (nC == 10 and nH == 18 and nO == 1) or (nC == 10 and nH == 16) ) \
         and nCdblC==1 :            group       = 'monoterpeneapi' # a-pinene monoterpenes
  elif ( (nC == 10 and nH == 18 and nO == 1) or (nC == 10 and nH == 16) ) \
         and nCdblC>=2 :            group       = 'monoterpenelim' # limonene monoterpenes
  elif ( nO > 0 ):                  group       = 'oxygenated'
  elif ( nbenzene > 1 ):            group       = 'pah'
  elif ( nC == 6 and nH == 6 and nO == 0 and nbenzene == 1 ):   
                                    group       = 'benzene'
  elif ( nC == 7 and nH == 8 and nO == 0 and nbenzene == 1 ):   
                                    group       = 'toluene'
  elif ( nC == 8 and nH == 10 and nO == 0 and nbenzene == 1 ):   
                                    group       = 'xylene'
  elif ( nbenzene > 0 ):            group       = 'aromatic'
  elif ( nCdblC > 0 ):              group       = 'alkene'
  elif ( gotring == 1 ):            group       = 'c-alkane'
  elif ( nBranch > 0 ):             group       = 'b-alkane'
  elif ( nH == (2 * nC + 2) ):      group       = 'n-alkane'
  else:                             group       = 'unknown'

  # Assign yield
  if ( group == 'halocarbon' ):
      # Assume yield of zero for all halocarbons.
      soayield  = 0.0
  elif ( group == 'ncless5' ):
      # Assume yield of zero for all compounds with 
      # nC < 5.
      soayield  = 0.0
  elif ( group == 'siloxane' ):
      # Volatile methyl siloxanes use the two-product 
      # model parameters from Janecheck et al. 2019, 
      # which includes additional SOA yields from 
      # Wu and Johnson 2017, at 10 μg/m3
      soayield  = 0.1445
  elif ( group == 'sesquiterpene' ): 
      # high/low-NOx avg SESQ Pye et al. 2010 ACP
      soayield = ( 0.84 + 0.42 )/2
  elif ( group == 'monoterpeneapi' ): 
      # high/low-NOx avg MTPA Pye et al. 2010 ACP
      soayield = ( 0.09 + 0.19 )/2
  elif ( group == 'monoterpenelim' ): 
      # high/low-NOx avg LIMO Pye et al. 2010 ACP
      soayield = ( 0.62 + 0.57 )/2
  elif ( group == 'oxygenated' ):
      # quadratic polynomial fit to oxygenated SOA yields
      # reported in Table S8 of McDonald et al., 2018.
      # Does not include volatile methyl siloxanes
      soayield  = 0.0133 * (cstar**2) - 0.2006 * cstar + 0.7716
  elif ( group == 'pah' ):
      # linear fit to PAH SOA yields
      # reported in Table S8 of McDonald et al., 2018.
      soayield  = -0.1208 * cstar + 1.0128
  elif ( group == 'benzene' ):
      # Benzene uses predicted high-NOx yield at 10 ug/m3 averaged w/ low NOx from Ng 2007 with 
      # with wall loss correction of Zhang 2014 
      soayield  = ( 0.1432*1.25 + 0.37*1.8 )/2
  elif ( group == 'toluene' ):
      # Toluene uses predicted high-NOx yield at 10 ug/m3 averaged w/ low NOx from Ng 2007 with 
      # with wall loss correction of Zhang 2014 
      soayield  = ( 0.0832*1.13 + 0.30*1.9 )/2
  elif ( group == 'xylene' ):
      # Xylenes uses predicted high-NOx yield at 10 ug/m3 averaged w/ low NOx from Ng 2007 with 
      # with wall loss correction of Zhang 2014 
      soayield  = ( 0.0476*1.2 + 0.36*1.8 )/2
  elif ( group == 'aromatic' ):
      # quadratic polynomial fit to non-PAH aromatic SOA yields
      # reported in Table S8 of McDonald et al., 2018.
      soayield  = 0.0715 * (cstar**2) - 1.0698 * cstar + 4.0555
  elif ( group == 'alkene' ):
      # exponential fit to alkene SOA yields
      # reported in Table S8 of McDonald et al., 2018.
      soayield  = 66.092 * np.exp( -0.843 * cstar )
  elif ( group == 'c-alkane' ):
      # all c-alkanes use a quadratic polynomial fit 
      # to the n-alkane VBS data from Presto et al., 2010 
      # at 10 μg/m3, adjusted to nC + 3 (Tkacik et al., 2012)
      soayield  = 0.0033 * ((nC+3)**2) - 0.0323 * (nC+3) + 0.0626
  elif ( group == 'b-alkane' ):
      # quadratic polynomial fit to b-alkane SOA yields
      # reported in Table S8 of McDonald et al., 2018.
      soayield  = 0.0045 * (nC**2) - 0.0695 * nC + 0.254
  elif ( group == 'n-alkane' ):
      # all n-alkanes use a quadratic polynomial fit 
      # to the n-alkane VBS data from Presto et al., 2010 
      soayield  = 0.0033 * (nC**2) - 0.0323 * nC + 0.0626
  elif ( group == 'unknown' and cstar <= 6.5):
      # all remaining compounds with a C* <= 6.5 
      # assigned a n-dodecane yield
      soayield  = 0.082
  else: 
      soayield  = 0.0

  # Modified Karl's cap from 1.0 to 1.5 (HOTP)
  if soayield > 1.5:
      soayield = 1.5
  elif soayield < 0:
      soayield = 0.0
  else: pass
  
  return soayield
  # end of function