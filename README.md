### CRACMM
Community Regional Atmospheric Chemistry Multiphase Mechanism

### Point of Contact
Havala Pye, pye.havala@epa.gov

### Disclaimer and Terms of use
This code is currently in development. Please check with Havala if you want to confirm this is the latest version. Information should be considered preliminary and is not ready for distribution or publication. To request addition to the repo (close collaborators only for now), send a github username to Havala.

### Repo contents

#### emissions
Contains python code to map individual species to CRACMM model species. The mapper requires use of the python RDKit (see environment.yml file for anaconda setup).

Contains inputs to Speciation Tool and SMOKE as well as the SPECIATEv5.2x developmental version of the species properties table.

#### chemistry
CRACMM mechanism files. (placeholder)

#### metadata
Metadata for CRACMM species (Henry's law coefficients, molecular weights, etc). (placeholder)

### Version history

#### Version: 0.22
Renamed XYOP to XYE to avoid overlap with name of exisiting peroxy radical.

#### Version: 0.21
Known issues: XYOP emitted species name overlaps with a peroxy radical in RACM2. In future versions, XYOP will be named XYE as it's major contributorys are o-xylene and ethylbenzne.

Date: 20210812

Updated carbons (Speciation Tool input) for missing species.

Date: 20210806

Updated Misc Silanes surrogate and removed non-ROC species from mech4import.

Date: 20210805

Mineral oil surrogate changed from decane to linoleic acid (mapping changed from HC8 to ROCP1). 8 new SPECIATE species added.


#### Version: 0.2
Date: 20210716

* PAH eliminated. The most abundant species that was in PAH fit better in the existing oxygenated aromatics. When PAHs were defined with O:C=0, very little mass was left. 
* NAPH includes small amounts of O:C=0 PAHs.
* Propylene glycol (and potential one other species) is now explicit as PROG.
* FURAN has been fully implemented as a species.
* S/IVOCs are now called ROC species. IVOCOXY is now ROCIOXY.
* SVOC ROC binning now occurs before single-ring aromatic mapping.
* ROCP4ARO was eliminated due to lack of significant emissions and OA potential.
* Glycoaldehyde was moved from ALD to GLY to better represent its solubility.
* Silanes and siloxanes of any volatility are ROCIOXY.
* UNKCRACMM is now used for non-carbon-containing species and elemental carbon (and TC).
* DIEN has been deleted. Small amount of anthropogenic dienes appear in FURAN. BDE13 is the major anthropogenic diene and already explicit.
* Some representative compounds (SPECIATE) have been updated: OC, NCOM, POC, PNCOM.


#### Version 0.11
Date: 20210702

Added IVOCOXY to mapper; updated representative compounds for IVOCP6ARO, SVOCN1, and SVOCP0 in SPECIATE.

#### Version 0.1 
Date: 20210621

initial mapper and species properties for CRACMM
