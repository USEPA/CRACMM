# Version history

## Version 2.0 (October 2024)
- CRACMM2 released in CMAQv5.5

## Version 2.0-alpha (in progress February 2024)
- Collecting updates leading to CRACMM2 

## Version 1.0 (October 2022)
- Final version for release in CMAQv5.4 
- ROCALK names updated

## Version 0.3
- Renamed HC8 to HC10
- Renamed ROCN/P series to ROCN/PALK
- Synced with latest CMAQ version of chemistry and metadata

## Version 0.24 
- Renamed toluene surrogate (explicit) to TOL
- Added flowchart

## Skip v0.23

## Version: 0.22
- Renamed XYOP to XYE to avoid overlap with name of existing peroxy radical.

## Version: 0.21
- This version used to create initial SMOKE inputs.
- Known issues: 
  - XYOP emitted species name overlaps with a peroxy radical in RACM2. XYOP renamed to XYE (major contributors are o-xylene and ethylbenzene).
  - TOLUENE named to TOL in later versions.
- Date: 20210812. Updated carbons (Speciation Tool input) for missing species.
- Date: 20210806. Updated Misc Silanes surrogate and removed non-ROC species from mech4import.
- Date: 20210805. Mineral oil surrogate changed from decane to linoleic acid (mapping changed from HC8 to ROCP1). 8 new SPECIATE species added.

## Version: 0.2
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


## Version 0.11
- Date: 20210702. Added IVOCOXY to mapper; updated representative compounds for IVOCP6ARO, SVOCN1, and SVOCP0 in SPECIATE.

## Version 0.1 
- Date: 20210621. initial mapper and species properties for CRACMM.  

# References

## Version 2 Development and Application

Skipper, T. N., D'Ambro, E. L., Wiser, F. C., McNeill, V. F., Schwantes, R. H., Henderson, B. H., Piletic, I. R., Baublitz, C. B., Bash, J. O., Whitehill, A. R., Valin, L. C., Mouat, A. P., Kaiser, J., Wolfe, G. M., St. Clair, J. M., Hanisco, T. F., Fried, A., Place, B. K., and Pye, H. O. T.: Role of chemical production and depositional losses on formaldehyde in the Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM), Atmos. Chem. Phys., 24, 12903–12924, [https://doi.org/10.5194/acp-24-12903-2024](https://doi.org/10.5194/acp-24-12903-2024), 2024.  

## Version 1 Development and Application

Place, B. K., Hutzell, W. T., Appel, K. W., Farrell, S., Valin, L., Murphy, B. N., Seltzer, K. M., Sarwar, G., Allen, C., Piletic, I. R., D'Ambro, E. L., Saunders, E., Simon, H., Torres-Vasquez, A., Pleim, J., Schwantes, R. H., Coggon, M. M., Xu, L., Stockwell, W. R., and Pye, H. O. T.: Sensitivity of northeastern US surface ozone predictions to the representation of atmospheric chemistry in the Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMMv1.0), Atmos. Chem. Phys., 23, 9173-9190, [https://doi.org/10.5194/acp-23-9173-2023](https://acp.copernicus.org/articles/23/9173/2023/), 2023.  

Pye, H. O. T., Place, B. K., Murphy, B. N., Seltzer, K. M., D'Ambro, E. L., Allen, C., Piletic, I. R., Farrell, S., Schwantes, R. H., Coggon, M. M., Saunders, E., Xu, L., Sarwar, G., Hutzell, W. T., Foley, K. M., Pouliot, G., Bash, J., and Stockwell, W. R.: Linking gas, particulate, and toxic endpoints to air emissions in the Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM), Atmos. Chem. Phys., 23, 5043-5099, [https://doi.org/10.5194/acp-23-5043-2023](https://acp.copernicus.org/articles/23/5043/2023/), 2023.  

Pye, H. O. T., Xu, L., Henderson, B. H., Pagonis, D., Campuzano-Jost, P., Guo, H., Jimenez, J. L., Allen, C., Skipper, T. N., Halliday, H. S., Murphy, B. N., D’Ambro, E. L., Wennberg, P. O., Place, B. K., Wiser, F. C., McNeill, V. F., Apel, E. C., Blake, D. R., Coggon, M. M., Crounse, J. D., Gilman, J. B., Gkatzelis, G. I., Hanisco, T. F., Huey, L. G., Katich, J. M., Lamplugh, A., Lindaas, J., Peischl, J., St Clair, J. M., Warneke, C., Wolfe, G. M., and Womack, C.: Evolution of Reactive Organic Compounds and Their Potential Health Risk in Wildfire Smoke, Environmental Science & Technology, 58, 19785-19796, [https://doi.org/10.1021/acs.est.4c06187](https://pubs.acs.org/doi/full/10.1021/acs.est.4c06187), 2024.  

Seltzer, K. M., Rao, V., Pye, H. O. T., Murphy, B. N., Place, B. K., Khare, P., Gentner, D. R., Allen, C., Cooley, D., Mason, R., and Houyoux, M.: Anthropogenic Secondary Organic Aerosol and Ozone Production from Asphalt-Related Emissions, Environ Sci Atmos, 3, 1221-1230, [https://doi.org/10.1039/d3ea00066d](https://pubs.rsc.org/en/content/articlelanding/2023/ea/d3ea00066d), 2023.  

Vannucci, P. F., Foley, K., Murphy, B. N., Hogrefe, C., Cohen, R. C., and Pye, H. O. T.: Temperature-dependent composition of summertime PM(2.5) in observations and model predictions across the Eastern U.S, ACS Earth Space Chem, 8, 381-392, [https://doi.org/10.1021/acsearthspacechem.3c00333](https://pubmed.ncbi.nlm.nih.gov/39440258/), 2024.  

Wiser, F., Place, B. K., Sen, S., Pye, H. O. T., Yang, B., Westervelt, D. M., Henze, D. K., Fiore, A. M., and McNeill, V. F.: AMORE-Isoprene v1.0: a new reduced mechanism for gas-phase isoprene oxidation, Geosci. Model Dev., 16, 1801-1821, [https://doi.org/10.5194/gmd-16-1801-2023](https://gmd.copernicus.org/articles/16/1801/2023/), 2023.  



# EPA Disclaimer
The United States Environmental Protection Agency (EPA) GitHub project code is provided on an "as is" basis and the user assumes responsibility for its use. EPA has relinquished control of the information and no longer has responsibility to protect the integrity, confidentiality, or availability of the information. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by EPA. The EPA seal and logo shall not be used in any manner to imply endorsement of any commercial product or activity by EPA or the United States Government.  
