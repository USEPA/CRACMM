# -*- coding: utf-8 -*-
"""
Created on Wed May 26 17:07:35 2021

@author: phavala
contributors: Havala Pye, Karl Seltzer USEPA, Nash Skipper

Nash Skipper - updates for CRACMM2
    1. Standardize input SMILES string to rdkit canonical SMILES.
    2. Use canonical SMILES for explicit species mapping. This eliminates the need to account
       for different valid SMILES for the same species.
    3. Map MEK, MVK, and TOL explicitly with SMILES. Previously these were mapped based on atom
       counts and functional groups.
    4. Map STY (styrene) and EBZ (ethylbenzene) explicitly for CRACMM2.
    5. Remove dependence on kOH for mapping xylenes. All xylenes are now XYL instead of being
       split into XYE or XYM depending on kOH.
    6. Update alkene (OLI and OLT) mapping to use rdkit properties instead of being based on
       the position of the double bond in the SMILES string.
    7. Update ROC[N|P]#ALK species mapping to include mapping to ROC[N|P]#OXY# species based on 
       O:C ratio.
    8. Add V or A to the start of ROC* species to indicate gas or particle phase.
    9. Add warning if input was not mapped to a CRACMM species (mapped to UNKCRACMM).

"""

import warnings
import rdkit
from rdkit import Chem
from rdkit.Chem import Fragments
from rdkit.Chem import rdMolDescriptors

def get_cracmm_roc(smiles_input,koh,log10cstar,phase=None):
    '''
    Function maps input reactive organic carbon (ROC) species to cracmm ROC species.
    Uses functional group and molecule info from RDKit http://www.rdkit.org/
    Function inputs, for ONE compound (make loop outside this function):
        smiles string (should be canonical for explicit species, some alt added) 
        kOH (in cm3/molec-s)
        log10(Cstar in micrograms/m3)
        phase (optional; default value is None; options are 'gas', 'particle', or None)
              This is only used to label species that can exist in both gas and particle phases.
              It does not do any calculations on what phase the species should be in. Semivolatile
              partitioning should be calculated external to this function.
    kOH and C* may not be used if the compound can be mapped without it. 
    RACM2 reference: https://ars.els-cdn.com/content/image/1-s2.0-S1352231012011065-mmc1.pdf
    '''
    
    # CRACMM2
    
    # Prep inputs
    if smiles_input == '-':
        unksmiles_msg = (
            f'SMILES {smiles_input} not recognized. Mapping to UNKSMILES.'
        )
        warnings.warn(unksmiles_msg)
        return 'UNKSMILES'
    smiles       = Chem.CanonSmiles(smiles_input) # standardize input SMILES string
    m            = Chem.MolFromSmiles(smiles)
    smiles_upper = smiles_input.upper()
    
    # Count C=C and atoms
    nCdblC  = smiles_upper.count('=C')-smiles_upper.count('O=C')
    if nCdblC < 0:
        nCdblC = 0
    nC      = smiles_upper.count('C')-smiles_upper.count('CL')
    nO      = smiles_upper.count('O')
    nN      = smiles_upper.count('N')
    nSi     = smiles_upper.count('SI')
    nH      = 0
    for atom in m.GetAtoms():
        nH += atom.GetTotalNumHs()
    # O:C ratio
    if nC > 0:
        OtoC = nO/nC
    
    # Count functional groups (http://rdkit.org/docs/source/rdkit.Chem.Fragments.html)
    nacid     = rdkit.Chem.Fragments.fr_COO(m,countUnique=True)     # carboxylic acid
    nketone   = rdkit.Chem.Fragments.fr_ketone(m,countUnique=True)
    naldehyde = rdkit.Chem.Fragments.fr_aldehyde(m,countUnique=True)
    ncarbonyl = nketone + naldehyde
    nbenzene  = rdkit.Chem.Fragments.fr_benzene(m,countUnique=True)
    nalcohol  = rdkit.Chem.Fragments.fr_Al_OH(m,countUnique=True) + \
                  rdkit.Chem.Fragments.fr_Ar_OH(m,countUnique=True)      # aliphatic and aromatic
    nfuran    = rdkit.Chem.Fragments.fr_furan(m,countUnique=True) # number of furan rings
    # gotring variable is never used so this could be removed
    #     it may be useful to keep it here commented out in case it is needed in the future
    #for atom in range(len(m.GetAtoms())):
        #if m.GetAtomWithIdx(atom).IsInRing():
        #    gotring = 1 # 0 = no ring, 1 = ring
        #    break
        #else: gotring = 0
    nnitrate = smiles_upper.count('O[N+](=O)[O-]') + smiles_upper.count('O[N+]([O-])=O')
    nperoxide = smiles_upper.count('COO') +  smiles_upper.count('OOC') - smiles_upper.count('COOC')
    #namine = smiles_upper.count('CN') + smiles_upper.count('NC') + smiles_upper.count('C(N') + smiles_upper.count('N(C')
    tfmonoterpene = (nC == 10 and nH == 18 and nO == 1) or (nC == 10 and nH == 16) 

    # Mapper is for ROC only and not elemental carbon
    if   ( nC <= 0 ):                 mechspecies = 'UNKCRACMM'
    elif ( smiles == '[C]' ):         mechspecies = 'UNKCRACMM'
    # Map CO to UNKCRACMM; CO will be mapped to SLOWROC if not handled explicitly
    elif ( smiles == 'C#[O+]' or smiles == '[C-]#[O+]' ):
                                      mechspecies = 'UNKCRACMM'
    # The same applies to CO2
    elif ( smiles = 'O=C=O' ):        mechspecies = 'UNKCRACMM'

    # Explicit species
    elif ( smiles == 'CC=O' ):        mechspecies = 'ACD'   # acetaldehyde
    elif ( smiles == 'C#C' ):         mechspecies = 'ACE'   # acetylene
    elif ( smiles == 'CC(C)=O' ):     mechspecies = 'ACT'   # acetone
    elif ( nC==6 and nH==6 and nO==0 and nbenzene==1 ):
                                      mechspecies = 'BEN'   # benzene
    elif ( smiles == 'C'  ):          mechspecies = 'ECH4'  # methane
    elif ( smiles == 'CCO'):          mechspecies = 'EOH'   # ethanol
    elif ( smiles == 'C=C'):          mechspecies = 'ETE'   # ethene aka ethylene
    elif ( smiles == 'OCCO'):         mechspecies = 'ETEG'  # ethylene glycol
    elif ( smiles == 'CC' ):          mechspecies = 'ETH'   # ethane
    elif ( smiles == 'C=O'):          mechspecies = 'HCHO'  # formaldehyde
    elif ( smiles == 'C=CC(=C)C' ):   mechspecies = 'ISO'   # isoprene (output of Chem.CanonSmiles)
    elif ( smiles == 'CO'):           mechspecies = 'MOH'   # methanol
    elif ( smiles == 'O=CO'):         mechspecies = 'ORA1'  # formic acid
    elif ( smiles == 'COO'):          mechspecies = 'OP1'   # methyl hydrogen peroxide
    elif ( smiles == 'C=Cc1ccccc1'):  mechspecies = 'STY'   # styrene (added in CRACMM2)
    elif ( smiles == 'CCc1ccccc1'):   mechspecies = 'EBZ'   # ethylbenzene (added in CRACMM2)
    elif ( smiles == 'CCC(C)=O' ):    mechspecies = 'MEK'   # methyl ethyl ketone
    elif ( smiles == 'C=CC(C)=O' ):   mechspecies = 'MVK'   # methly vinyl ketone
    elif ( smiles == 'Cc1ccccc1' ):   mechspecies = 'TOL'   # toluene
    elif ( smiles == 'C=CC=C' ):      mechspecies = 'BDE13' # 1,3 butadiene   
    elif ( smiles == 'C=CC=O' ):      mechspecies = 'ACRO'  # acrolein

    # Glyoxal and glycoaldehyde (here due to solubility alt mappings: ACD, ETEG)
    elif ( nC==2 and nO==2 and naldehyde>=1 ):     
                                      mechspecies = 'GLY'   # glyoxal
    # Propylene glycol
    elif ( nC==3 and nO==2 and nalcohol==2): mechspecies = 'PROG' # propylene glycol and other 3 carbon dialcohols                                

    # Low reactivity species (new to v0.1)
    elif ( koh < 3.5e-13 ):           mechspecies = 'SLOWROC' # low reactivity gas

    # Lumped terpene species 
    elif ( nC == 15 and nH == 24 ) and ( nCdblC>=1 ): mechspecies = 'SESQ' # sesquiterpenes
    elif ( tfmonoterpene and nCdblC==1 ): mechspecies = 'API' # a-pinene monoterpenes
    elif ( tfmonoterpene and nCdblC>=2 ): mechspecies = 'LIM' # limonene monoterpenes

    # Furans and dienes other than 1,3 BDE
    elif ( nfuran > 0 ):               mechspecies = 'FURAN' # furans and other dienes

    # Multi-ring aromatics (PAH and NAPH can be collapsed together if necessary)  
    # elif ( nbenzene >= 1 and log10cstar < 3.5 and (nO/nC) == 0 ): mechspecies = 'PAH'  # PAH and other lower-volatility aromatics (v0.1)
    elif ( nbenzene > 1 and nO/nC == 0 ): mechspecies = 'NAPH' # Naphthalene-like, PAH with 2 rings

    # SVOC species binned
    elif ( log10cstar < -1.5 ): # C* bin centered on 0.01 ug/m3 
        if OtoC > 0.6:
            mechspecies = 'ROCN2OXY8'
        elif OtoC > 0.3:
            mechspecies = 'ROCN2OXY4'
        elif OtoC > 0.1:
            mechspecies = 'ROCN2OXY2'
        else:
            mechspecies = 'ROCN2ALK'
    elif ( log10cstar < -0.5 ): # C* bin centered on 0.1 ug/m3
        if OtoC > 0.45:
            mechspecies = 'ROCN1OXY6'
        elif OtoC > 0.2:
            mechspecies = 'ROCN1OXY3'
        elif OtoC > 0.05:
            mechspecies = 'ROCN1OXY1'
        else:
            mechspecies = 'ROCN1ALK'
    elif ( log10cstar < 0.5 ): # C* bin centered on 1
        if OtoC > 0.3:
            mechspecies = 'ROCP0OXY4'
        elif OtoC > 0.1:
            mechspecies = 'ROCP0OXY2'
        else:
            mechspecies = 'ROCP0ALK'
    elif ( log10cstar < 1.5 ): # C* bin centered on 10^1
        if OtoC > 0.2:
            mechspecies = 'ROCP1OXY3'
        elif OtoC > 0.05:
            mechspecies = 'ROCP1OXY1'
        else:
            mechspecies = 'ROCP1ALK'
    elif ( log10cstar < 2.5 ): # C* bin centered on 10^2
        if OtoC > 0.1:
            mechspecies = 'ROCP2OXY2'
        else:
            mechspecies = 'ROCP2ALK'

    # Single-ring aromatics (excluding explicit species)
    elif ( nbenzene > 0 ): # Single-ring aromatics
        if ( naldehyde > 0 ):                mechspecies = 'BALD'     # Benzaldehyde and arom. aldehydes
        elif ( nC>=7 and nalcohol>=2 ):      mechspecies = 'MCT'      # methylcatechol
        elif ( nC>=7 and nalcohol>=1 ):      mechspecies = 'CSL'      # cresol
        elif ( nC==6 and nalcohol>=1 ):      mechspecies = 'PHEN'     # phenol
        elif ( log10cstar < 5.5 ):           mechspecies = 'VROCP5ARO' # C* bin centered on 10^5 (v0.1)
        elif ( log10cstar < 6.5 ):           mechspecies = 'VROCP6ARO' # C* bin centered on 10^6 (v0.1)
        # any single-ring aromatics that have not been mapped by rules above
        else:                                mechspecies = 'XYL'      # xylenes and other aromatics (CRACMM2)
    
    # Species with double bonds, not aromatic
    elif ( nCdblC>=1 and log10cstar < 5.5 ): mechspecies = 'VROCP5ARO' # C* bin centered on 10^5 (v0.1)
    elif ( nCdblC>=1 and log10cstar < 6.5 ): mechspecies = 'VROCP6ARO' # C* bin centered on 10^6 (v0.1) 
    elif ( nCdblC>=2 ):                      mechspecies = 'FURAN'    # some additional dienes (nC>=4 gauranteed)
    elif ( nCdblC==1 and ncarbonyl>=2 ):     mechspecies = 'DCB1'     # unsaturated dicarbonyls
    elif ( nCdblC==1 and nC==4 and naldehyde==1 ): 
                                             mechspecies = 'MACR'     # methacrolein (2.9e-11) (and crotonaldehyde)
    elif ( nCdblC==1 and naldehyde>=1 ):     mechspecies = 'UALD'     # unsaturated aldehydes (3.4e-11)
    # map OLI and OLT
    elif ( nCdblC==1 ):
        atoms = [a for a in m.GetAtoms()]
        bonds = [b for b in m.GetBonds()]
        bondtype = [b.GetBondType() for b in bonds]
        #        double bond at end                         bond isn't part of a ring    the double bond is to a carbon
        if bondtype[0]==rdkit.Chem.rdchem.BondType.DOUBLE and not bonds[0].IsInRing() and atoms[0].GetSymbol()=='C':
                                               mechspecies = 'OLT'
        elif bondtype[-1]==rdkit.Chem.rdchem.BondType.DOUBLE and not bonds[-1].IsInRing() and atoms[-1].GetSymbol()=='C':
                                               mechspecies = 'OLT'
        else:                                  mechspecies = 'OLI'
    
    # IVOC species binned
    elif ( ( log10cstar < 6.5 and nO/nC >= 0.1 ) or nSi > 0 ):  
                                       mechspecies = 'VROCIOXY' # Oxygenated IVOCs and any silanes/siloxanes
    elif ( log10cstar < 3.5 ): # C* bin centered on 1000 ug/m3
        if OtoC > 0.1:
            mechspecies = 'ROCP3OXY2'
        else:
            mechspecies = 'ROCP3ALK'
    # gas phase only for C* bins above 1000 ug/m3 so it can only be VROC (not AROC)
    elif ( log10cstar < 4.5 ): # C* bin centered on 10^4
        if OtoC > 0.1:
            mechspecies = 'VROCP4OXY2'
        else:
            mechspecies = 'VROCP4ALK'
    elif ( log10cstar < 5.5 ): # C* bin centered on 10^5
        if OtoC > 0.05:
            mechspecies = 'VROCP5OXY1'
        else:
            mechspecies = 'VROCP5ALK'
    elif ( log10cstar < 6.5 ): # C* bin centered on 10^6
        if OtoC > 0.05:
            mechspecies = 'VROCP6OXY1'
        else:
            mechspecies = 'VROCP6ALK'
    
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
    elif ( koh < 3.4E-12 ):                     mechspecies = 'HC3'  # slow "alkanes"
    elif ( koh >= 3.4E-12 and koh <= 6.8E-12 ): mechspecies = 'HC5'  # medium "alkanes"   
    elif ( koh > 6.8E-12 ):                     mechspecies = 'HC10' # fast "alkanes"

    else: mechspecies = 'UNKCRACMM' # Species is unknown to CRACMM
    
    # append V or A to ROC* species to indicate gas (V) or particle (A)
    # except log10(C*)>3 are only in gas phase and already have the V added above
    if mechspecies[:3]=='ROC':
        # only 'gas', 'particle', or None allowed; otherwise exit with error
        try:
            assert phase in ['gas', 'particle', None]
        except AssertionError as e:
            err_msg = f'Invalid phase option {phase} supplied. Valid options are "gas", "particle", or None.'
            raise Exception(err_msg).with_traceback(e.__traceback__)
        if phase=='particle':
            append = 'A'
        else:
            append = 'V' # assumes gas if phase=None was supplied
        mechspecies = append + mechspecies
    
    # warning if species was not mapped
    if mechspecies == 'UNKCRACMM':
        unkcracmm_msg = (
            f'Species with SMILES {smiles_input} is unknown in CRACMM'
            + ' and has been mapped to UNKCRACMM.'
        )
        warnings.warn(unkcracmm_msg)
    
    return mechspecies
    # end of function
