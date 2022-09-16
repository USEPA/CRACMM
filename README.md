### CRACMM
Community Regional Atmospheric Chemistry Multiphase Mechanism

### Point of Contact
Havala Pye, pye.havala@epa.gov

### Description

The Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM) is a description of atmospheric NOx-VOC-O3-aerosol chemistry and associated metadata (Pye et al. in prep.). CRACMM is available in the EPA [Community Multiscale Air Quality (CMAQ) modeling system](https://github.com/USEPA/CMAQ) starting with version 5.4 (2022 release). In CMAQ, CRACMM is available as CRACMM1 and CRACMM1AMORE. The two mechanisms are identical in their representation of emissions and chemistry except for the isoprene system. CRACMM1 isoprene chemistry is the same as in RACM2. CRACMM1AMORE isoprene chemistry is based on the Columbia University [Atmospheric Chemistry Model Reduction (AMORE)](https://cfpub.epa.gov/ncer_abstracts/index.cfm/fuseaction/display.abstractDetail/abstract_id/11084) algorithm (Wiser et al. in prep.).

### References

Place, B. K., Hutzell, W. T., Appel, K. W., Farrell, S., Valin, L., Murphy, B. N., Seltzer, K. M., Sarwar, G., Piletic, I. R., D’Ambro, E. L., Saunders, E., Simon, H., Torres-Vasquez, A., Pleim, J., Schwantes, R., Coggon, M. M., Xu, L., Stockwell, W. R., and Pye, H. O. T.: Initial evaluation of the CRACMMv1.0 chemical mechanism: Surface ozone predictions across the Northeast US summer 2018 in CMAQ, in preparation for Atmospheric Chemistry and Physics.

Pye, H., B. Place, B. Murphy, K. Seltzer, C. Allen, I. Piletic, E. D'Ambro, R. Schwantes, M. Coggon, S. Farrell, E. Saunders, L. Xu, G. Sarwar, W. Hutzell, K. Foley, G. Pouliot and W. Stockwell, Linking Gas, Particulate, and Toxic Endpoints to Air Emissions In The Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM) version 1.0, in preparation for Atmospheric Chemistry and Physics.

Wiser, F. W., Place, B. K., Siddhartha, S., Pye, H. O. T., Westervelt, D. M., Henze, D. K., Fiore, A. M., and McNeill, V. F.: AMORE-Isoprene v1.0: A new reduced mechanism for gas-phase isoprene oxidation, in preparation for Geoscientific Model Development.

### Version history

#### Version 1.0
- Final version for release in CMAQv5.4
- ROCALK names updated

#### Version 0.3
- Renamed HC8 to HC10
- Renamed ROCN/P series to ROCN/PALK
- Synced with latest CMAQ version of chemistry and metadata

#### Version 0.24 
- Renamed toluene surrogate (explicit) to TOL
- Added flowchart

#### Skip v0.23

#### Version: 0.22
- Renamed XYOP to XYE to avoid overlap with name of exisiting peroxy radical.

#### Version: 0.21
- This version used to create initial SMOKE inputs.
- Known issues: 
  - XYOP emitted species name overlaps with a peroxy radical in RACM2. XYOP renamed to XYE (major contributorys are o-xylene and ethylbenzne).
  - TOLUENE named to TOL in later versions.
- Date: 20210812. Updated carbons (Speciation Tool input) for missing species.
- Date: 20210806. Updated Misc Silanes surrogate and removed non-ROC species from mech4import.
- Date: 20210805. Mineral oil surrogate changed from decane to linoleic acid (mapping changed from HC8 to ROCP1). 8 new SPECIATE species added.

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
- Date: 20210702. Added IVOCOXY to mapper; updated representative compounds for IVOCP6ARO, SVOCN1, and SVOCP0 in SPECIATE.

#### Version 0.1 
- Date: 20210621. initial mapper and species properties for CRACMM.

## EPA Disclaimer
The United States Environmental Protection Agency (EPA) GitHub project code is provided on an "as is" basis and the user assumes responsibility for its use. EPA has relinquished control of the information and no longer has responsibility to protect the integrity, confidentiality, or availability of the information. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by EPA. The EPA seal and logo shall not be used in any manner to imply endorsement of any commercial product or activity by EPA or the United States Government.

* [Open source license](license.md)

