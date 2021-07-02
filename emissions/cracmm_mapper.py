# -*- coding: utf-8 -*-
"""
Created on Wed May 26 17:07:35 2021

@author: phavala
"""

import rdkit
from rdkit import Chem
from rdkit.Chem import Fragments
from rdkit.Chem import rdMolDescriptors

def get_cracmm_roc(smiles,koh,log10cstar):
  '''
  Function maps input reactive organic carbon (ROC) species to cracmm ROC species.
  Uses functional group and molecule info from RDKit http://www.rdkit.org/
  Function inputs, for ONE compound (make loop outside this function):
      smiles string (should be canonical for explicit species, some alt added) 
      kOH (in cm3/molec-s)
      log10(Cstar in micrograms/m3) 
  kOH and C* may not be used if the compound can be mapped without it. 
  RACM2 reference: https://ars.els-cdn.com/content/image/1-s2.0-S1352231012011065-mmc1.pdf
  '''
  # CRACMMv0.1 
  
  # Prep inputs
  m       = Chem.MolFromSmiles(smiles)
  smiles  = smiles.upper()

  # Count C=C and atoms
  nCdblC  = smiles.count('=C')
  nC      = smiles.count('C')-smiles.count('CL')
  nO      = smiles.count('O')
  nN      = smiles.count('N')
  nH      = 0
  for atom in m.GetAtoms():
      nH += atom.GetTotalNumHs()

  # Count functional groups (http://rdkit.org/docs/source/rdkit.Chem.Fragments.html)
  nacid     = rdkit.Chem.Fragments.fr_COO(m,countUnique=True)     # carboxylic acid
  nketone   = rdkit.Chem.Fragments.fr_ketone(m,countUnique=True)
  naldehyde = rdkit.Chem.Fragments.fr_aldehyde(m,countUnique=True)
  ncarbonyl = nketone + naldehyde
  nbenzene  = rdkit.Chem.Fragments.fr_benzene(m,countUnique=True)
  nalcohol  = rdkit.Chem.Fragments.fr_Al_OH(m,countUnique=True) + \
              rdkit.Chem.Fragments.fr_Ar_OH(m,countUnique=True)      # aliphatic and aromatic
  for atom in range(len(m.GetAtoms())):
      if m.GetAtomWithIdx(atom).IsInRing(): 
          gotring = 1 # 0 = no ring, 1 = ring
          break
      else: gotring = 0
  nnitrate = smiles.count('O[N+](=O)[O-]') + smiles.count('O[N+]([O-])=O') 
  nperoxide = smiles.count('COO') +  smiles.count('OOC') - smiles.count('COOC')
#  namine = smiles.count('CN') + smiles.count('NC') + smiles.count('C(N') + smiles.count('N(C')                                           
  tfmonoterpene = (nC == 10 and nH == 18 and nO == 1) or (nC == 10 and nH == 16)
    
  # Explicit species
  if   ( smiles == 'CC=O' ):        mechspecies = 'ACD'   # acetaldehyde
  elif ( smiles == 'C#C' ):         mechspecies = 'ACE'   # acetylene
  elif ( smiles == 'CC(=O)C' or smiles == 'CC(C)=O' ): 
                                    mechspecies = 'ACT'   # acetone
  elif ( nC==6 and nH==6 and nO==0 and nbenzene==1 ):   
                                    mechspecies = 'BEN'   # benzene   
  elif ( smiles == "C"  ):          mechspecies = 'ECH4'  # methane
  elif ( smiles == 'CCO'):          mechspecies = 'EOH'   # ethanol
  elif ( smiles == 'C=C'):          mechspecies = 'ETE'   # ethene aka ethylene  
  elif ( smiles == 'C(CO)O' or smiles == 'OCCO'): 
                                    mechspecies = 'ETEG'  # ethylene glycol  
  elif ( smiles == "CC" ):          mechspecies = 'ETH'   # ethane  
  elif ( smiles == 'C(=O)C=O' or smiles == 'O=CC=O' ):     
                                    mechspecies = 'GLY'   # glyoxal
  elif ( smiles == 'C=O'):          mechspecies = 'HCHO'  # formaldehyde  
  elif ( smiles == 'CC(=C)C=C' ):   mechspecies = 'ISO'   # isoprene (canonical SMILES)  
  elif ( smiles == 'CO'):           mechspecies = 'MOH'   # methanol   
  elif ( smiles == 'C(=O)O' or smiles == 'OC=O'):       
                                    mechspecies = 'ORA1'  # formic acid
  elif ( smiles == 'COO'):          mechspecies = 'OP1'   # methyl hydrogen peroxide
  elif ( nC==4 and nH==8 and nO==1 and nketone==1 ): 
                                    mechspecies = 'MEK'  # methyl ethyl ketone (1.2e-12) 
  elif ( nC==4 and nH==6 and nO==1 and nketone==1 ): 
                                    mechspecies = 'MVK'  # methyl vinyl ketone (2.0e-11)
                                    
  # Explicit toxics added (new to v0.1)                                 
  elif ( nC==7 and nH==8 and nO==0 and nN==0 and nbenzene==1): 
                                    mechspecies = 'TOLUENE'  # toluene explicit
  elif ( smiles == 'C=CC=C' ):      mechspecies = 'BDE13'    # 1,3 butadiene   
  elif ( smiles == 'C=CC=O' or smiles == 'O=CC=C'):      
                                    mechspecies = 'ACRO' # acrolein                                  

  # Low reactivity species (new to v0.1)
  elif ( koh < 3.5e-13 ):                mechspecies = 'SLOWROC' # low reactivity gas    
  #elif ( koh < 1e-13.5 ):                mechspecies = 'ACT' #  
  #elif ( koh < 1e-13.5 ):                mechspecies = 'ACT' #  

  # Lumped terpene species 
  elif ( nC == 15 and nH == 24 ) and ( nCdblC>=1 ): mechspecies = 'SESQ' # sesquiterpenes
  elif ( tfmonoterpene and nCdblC==1 ): mechspecies = 'API' # a-pinene monoterpenes
  elif ( tfmonoterpene and nCdblC>=2 ): mechspecies = 'LIM' # limonene monoterpenes
    
  # Multi-ring aromatics (PAH and NAPH can be collapsed together if necessary)  
  elif ( nbenzene >= 1 and log10cstar < 3.5 ): mechspecies = 'PAH'  # PAH and other lower-volatility aromatics (v0.1)
  elif ( nbenzene > 1 ):               mechspecies = 'NAPH' # Naphthalene-like, PAH with 2 rings
    
  # Single-ring aromatics
  elif ( nbenzene > 0 ): # Single-ring aromatics
    if ( naldehyde > 0 ):              mechspecies = 'BALD' # Benzaldehyde and arom. aldehydes
    elif ( nC>=7 and nalcohol>=2 ):    mechspecies = 'MCT'  # methylcatechol
    elif ( nC>=7 and nalcohol>=1 ):    mechspecies = 'CSL'  # cresol
    elif ( nC==6 and nalcohol>=1 ):    mechspecies = 'PHEN' # phenol
    elif ( log10cstar < 4.5 ):         mechspecies = 'IVOCP4ARO' # C* bin centered on 10^4 (v0.1)
    elif ( log10cstar < 5.5 ):         mechspecies = 'IVOCP5ARO' # C* bin centered on 10^5 (v0.1)
    elif ( log10cstar < 6.5 ):         mechspecies = 'IVOCP6ARO' # C* bin centered on 10^6 (v0.1)
    elif ( koh<=(1.02*1.43e-11) ):     mechspecies = 'XYOP'      # o-,p-xylene and less reactive aromatics (v0.1)
    else:                              mechspecies = 'XYM'       # m-xylene and more reactive aromatics (v0.1)

  # SVOC species binned (new to v0.1)
  elif ( log10cstar < -0.5 ):        mechspecies = 'SVOCN1' # C* bin centered on 0.1 ug/m3
  elif ( log10cstar < 0.5 ):         mechspecies = 'SVOCP0' # C* bin centered on 1
  elif ( log10cstar < 1.5 ):         mechspecies = 'SVOCP1' # C* bin centered on 10^1
  elif ( log10cstar < 2.5 ):         mechspecies = 'SVOCP2' # C* bin centered on 10^2

  # Species with double bonds, not aromatic
  elif ( nCdblC>=1 and log10cstar < 4.5 ): mechspecies = 'IVOCP4ARO' # C* bin centered on 10^4 (v0.1)
  elif ( nCdblC>=1 and log10cstar < 5.5 ): mechspecies = 'IVOCP5ARO' # C* bin centered on 10^5 (v0.1)
  elif ( nCdblC>=1 and log10cstar < 6.5 ): mechspecies = 'IVOCP6ARO' # C* bin centered on 10^6 (v0.1) 
  elif ( nCdblC>=2 ):                      mechspecies = 'DIEN' # diene (nC>=4 gauranteed)
  elif ( nCdblC==1 and ncarbonyl>=2 ):     mechspecies = 'DCB1' # unsaturated dicarbonyls
  elif ( nCdblC==1 and nC==4 and naldehyde==1 ): 
                                           mechspecies = 'MACR' # methacrolein (2.9e-11) (and crotonaldehyde)
  elif ( nCdblC==1 and naldehyde>=1 ):     mechspecies = 'UALD' # unsaturated aldehydes (3.4e-11)
  elif ( nCdblC==1 and (smiles[0:2] == 'C=' or smiles[-2:] == '=C')): 
                                           mechspecies = 'OLT'  # terminal alkene (3.1e-11)  
  elif ( nCdblC==1 ):                      mechspecies = 'OLI'  # internal alkene (7.1e-11)

  # IVOC species binned (new to v0.1)
  elif ( log10cstar < 3.5 ):         mechspecies = 'IVOCP3' # C* bin centered on 1000 ug/m3
  elif ( log10cstar < 4.5 ):         mechspecies = 'IVOCP4' # C* bin centered on 10^4
  elif ( log10cstar < 5.5 ):         mechspecies = 'IVOCP5' # C* bin centered on 10^5
  elif ( log10cstar < 6.5 ):         mechspecies = 'IVOCP6' # C* bin centered on 10^6

  # Oxygenated species without double bonds (mapped in order of decreasing koh)
  elif ( naldehyde>=1 and nketone>=1 ):mechspecies = 'MGLY' # methylglyoxal and similar like C4H6O2 (1.5e-11)
  elif ( naldehyde>=1 ):               mechspecies = 'ALD'  # higher aldehydes (C>3) (1.98e-11)  
  elif ( nperoxide>=1 ):               mechspecies = 'OP2'  # higher organic peroxides (6.4e-12)  
  elif ( nalcohol>=1 and nketone>=1 ): mechspecies = 'HKET' # hydroxy ketone (3.0e-12) 
  elif ( nketone>=1 ):                 mechspecies = 'KET'  # all other ketones (2.9e-12) 
  elif ( nnitrate>=1 ):                mechspecies = 'ONIT' # organic nitrates (2.2e-12)
  elif ( nalcohol>=1 ):                mechspecies = 'ROH'  # C3 and higher alcohols (1.3e-12)  
  elif ( nacid>=1 ):                   mechspecies = 'ORA2' # acetic acid and higher acids (C>=2) (6.5e-13) 

  # HC Series, koh in cm3/s, 298 K, 1 atm
  elif ( koh < 3.4E-12 ):                     mechspecies = 'HC3' # slow "alkanes"
  elif ( koh >= 3.4E-12 and koh <= 6.8E-12 ): mechspecies = 'HC5' # medium "alkanes"   
  elif ( koh > 6.8E-12 ):                     mechspecies = 'HC8' # fast "alkanes"
  
  else: mechspecies = 'UNKCRACMM' # Species is unknown to CRACMM
    
  return mechspecies
  # end of function