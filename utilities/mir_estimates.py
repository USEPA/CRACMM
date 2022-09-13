# -*- coding: utf-8 -*-
"""
Created on Mon Jun 21 10:04:47 2021

@author: Karl Seltzer (seltzer.karl@epa.gov)
"""

#import pandas as pd
import numpy as np
import rdkit
from rdkit import Chem
from rdkit.Chem import Fragments
from rdkit.Chem import rdMolDescriptors
from datetime import date

def dfappend_mir(dfin):
  '''
    Estimates MIR for all
    compounds in SPECIATE
  '''

  dfin['est_mir']=''  
  
  # Perform mapping, append info to data frame, create mech4import df
  for idx, row in dfin.iterrows():
    smiles      = row['SMILES']
    koh         = row['ATMOSPHERIC_HYDROXYLATION_RATE_(AOH)_CM3/MOLECULE*SEC_OPERA_PRED']
    if (smiles == '-' or koh == '-'):
        mir = float('nan')
    else:
        koh = np.float(koh)
        mir = get_mir(smiles,koh)
    dfin.at[idx,'est_mir']=mir

  # Write to file the spc table + comptox + map results
  #today = date.today()
  #filenameout = today.strftime('%Y%m%d')+r'_speciespropv2_withcomptox_withcracmm0.0_withSOA_withMIR.csv'
  #dfin.to_csv(filenameout,index=False)
  #print("Results saved to "+filenameout)

  return dfin

def get_mir(smiles,koh):
  '''
  Estimate MIR using composition, structure, and kOH.
  '''
  # Prep inputs
  m       = Chem.MolFromSmiles(smiles)
  smiles  = smiles.upper()

  # Count C=C, atoms, and calculate properties
  nCdblC  = smiles.count('=C')
  ndblbnd = smiles.count('=')
  nC      = smiles.count('C')-smiles.count('CL')
  nSN     = smiles.count('S')-smiles.count('SI')+smiles.count('N')
  nO      = smiles.count('O')
  ndblO   = smiles.count('=O')
  nSi     = smiles.count('SI')
  nHalo   = smiles.count('CL') + smiles.count('F') + smiles.count('BR')
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
  nBranch = smiles.count('(C') + smiles.count('CC1') + smiles.count('C1C') + \
            smiles.count('(=C') + smiles.count('O1C') - smiles.count('(C)CC1')

  # Determine Group
  if   ( nHalo > 0 ):               group       = 'halocarbon'
  elif ( nSi > 0 ):                 group       = 'siloxane'
  elif ( nSN > 0 ):                 group       = 'sulfnit'
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
      if np.abs(np.log10(koh)) <= 11.0:
          mir = 8.5654 * np.exp(-0.216 * nC)
      else:
          mir = 0.8093
  elif ( group == 'siloxane' ):
      mir  = -0.0713
  elif ( group == 'benzene' ):
      mir  = 0.7207
  elif ( group == 'toluene' ):
      mir  = 4.0047
  elif ( group == 'xylene' ):
      mir  = 7.7442
  elif ( group == 'sulfnit' ):
      mir = 6.78964 - 5.3895 * nC**(1/4) + 2001.15 * koh**(1/4)
  elif ( group == 'pah' ):
      mir  = -0.001 * nC**4 + 0.0722 * nC**3 - 1.861 * nC**2 + 20.665 * nC - 79.553
  elif ( group == 'aromatic' ):
      if nBranch <= 1:
          mir = 3.4832 * np.exp(-0.056 * nC)
      elif nBranch == 2:
          mir = 12.787 * np.exp(-0.093 * nC)
      else:
          mir = 0.0813 * nC**2 - 2.7667 * nC + 28.778
  elif ( group == 'oxygenated' ):
      mir = 9.748548 - 9.32492 * nC**(1/4) - 0.32225 * nO + 3640.192 * koh**(1/4) + \
            0.203666 * ndblbnd + 1.686717 * ndblO - 0.25343 * gotring
  elif ( group == 'alkene' ):
      mir = 59.73998 - 69.5125 * nC**(1/10) + 339.6502 * koh**(1/10) - \
            0.8436 * ndblbnd - 0.78331 * gotring
  elif ( group == 'c-alkane' or group == 'b-alkane' or group == 'n-alkane'):
       if nC <= 5:
          mir = 0.0147 * np.exp(0.9558 * nC)
       else:
          mir = 2.6651 * np.exp(-0.098 * nC)
  elif ( group == 'unknown' ):
      mir = 8.642904 - 7.2293 * nC**(1/4) - 0.74867 * nO + 3002.81 * koh**(1/4) + \
            0.834186 * ndblbnd + 0.704594 * ndblO - 0.19314 * gotring

  if mir < 0.0:
      mir = 0.0
  
  return mir
  # end of function