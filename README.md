### CRACMM
Community Regional Atmospheric Chemistry Multiphase Mechanism

### Point of Contact
Havala Pye, pye.havala@epa.gov

### Description

The Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM) is a description of atmospheric NO<sub>X</sub>-VOC-O<sub>3</sub>-aerosol chemistry and associated metadata (Pye et al., 2023; Place et al., 2023). CRACMM is available in the EPA [Community Multiscale Air Quality (CMAQ) modeling system](https://github.com/USEPA/CMAQ) starting with version 5.4 (2022 release). In CMAQ, CRACMM is available as CRACMM1 and CRACMM1AMORE. The two mechanisms are identical in their representation of emissions and chemistry except for the isoprene system. CRACMM1 isoprene chemistry is the same as in RACM2. CRACMM1AMORE isoprene chemistry is based on the Columbia University [Atmospheric Chemistry Model Reduction (AMORE)](https://cfpub.epa.gov/ncer_abstracts/index.cfm/fuseaction/display.abstractDetail/abstract_id/11084) algorithm (Wiser et al. 2023). For more information about the plans for CRACMM, see the [EPA fact sheet on the CMAQ website](https://www.epa.gov/cmaq/cmaq-fact-sheets).

### Purpose and Organization of the CRACMM Github Repository

The official version of CRACMM1 and CRACMM1AMORE reside in CMAQv5.4 in the [US EPA Github repository](https://github.com/USEPA/CMAQ) (v5.4). Here, we bring together CRACMM metadata from across CMAQ and provide additional information such as how to map emissions to the mechanism. This information is intended to support CMAQ users and provide the atmospheric chemistry community with information about CRACMM. This repository is organized as follows:
 * [Chemistry](chemistry): the mechanism in CMAQ-ready and markdown formats
 * [Emissions](emissions): inputs and outputs to emission mapping tools and code to perform mapping of individual species to CRACMM (informed by Foley et al. 2023)
 * [Metadata](metadata): information about CRACMM species (molecular weights, volatility, solubility, representative structures, etc.)
 * [Utilities](utilities): python code to assemble metadata from CMAQ code and routines for screening level predictions of organic aerosol and ozone formation potential

### References

Foley, K. M., Pouliot, G. A., Eyth, A., Aldridge, M. F., Allen, C., Appel, K. W., Bash, J. O., Beardsley, M., Beidler, J., Choi, D., Farkas, C., Gilliam, R. C., Godfrey, J., Henderson, B. H., Hogrefe, C., Koplitz, S. N., Mason, R., Mathur, R., Misenis, C., Possiel, N., Pye, H. O. T., Reynolds, L., Roark, M., Roberts, S., Schwede, D. B., Seltzer, K. M., Sonntag, D., Talgo, K., Toro, C., Vukovich, J., Xing, J., and Adams, E.: 2002–2017 anthropogenic emissions data for air quality modeling over the United States, Data in Brief, 47, 109022, [https://doi.org/10.1016/j.dib.2023.109022](https://doi.org/10.1016/j.dib.2023.109022), 2023.

Place, B. K., Hutzell, W. T., Appel, K. W., Farrell, S., Valin, L., Murphy, B. N., Seltzer, K. M., Sarwar, G., Allen, C., Piletic, I. R., D'Ambro, E. L., Saunders, E., Simon, H., Torres-Vasquez, A., Pleim, J., Schwantes, R. H., Coggon, M. M., Xu, L., Stockwell, W. R., and Pye, H. O. T.: Sensitivity of Northeast U.S. surface ozone predictions to the representation of atmospheric chemistry in CRACMMv1.0, EGUsphere [preprint], [https://doi.org/10.5194/egusphere-2023-288](https://doi.org/10.5194/egusphere-2023-288), 2023.

Pye, H. O. T., Place, B. K., Murphy, B. N., Seltzer, K. M., D'Ambro, E. L., Allen, C., Piletic, I. R., Farrell, S., Schwantes, R. H., Coggon, M. M., Saunders, E., Xu, L., Sarwar, G., Hutzell, W. T., Foley, K. M., Pouliot, G., Bash, J., and Stockwell, W. R.: Linking gas, particulate, and toxic endpoints to air emissions in the Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM), Atmos. Chem. Phys., 23, 5043–5099, [https://doi.org/10.5194/acp-23-5043-2023](https://doi.org/10.5194/acp-23-5043-2023), 2023.

Wiser, F., Place, B. K., Sen, S., Pye, H. O. T., Yang, B., Westervelt, D. M., Henze, D. K., Fiore, A. M., and McNeill, V. F.: AMORE-Isoprene v1.0: a new reduced mechanism for gas-phase isoprene oxidation, Geosci. Model Dev., 16, 1801–1821, [https://doi.org/10.5194/gmd-16-1801-2023](https://doi.org/10.5194/gmd-16-1801-2023), 2023.

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
- Renamed XYOP to XYE to avoid overlap with name of existing peroxy radical.

#### Version: 0.21
- This version used to create initial SMOKE inputs.
- Known issues: 
  - XYOP emitted species name overlaps with a peroxy radical in RACM2. XYOP renamed to XYE (major contributors are o-xylene and ethylbenzene).
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

