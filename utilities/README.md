### Support utilities for CRACMM

[Python code to create species markdown file for CMAQ](markdown_metadata.py):
Requires as input the CMAQ-ready species namelists, species description file, AERO_DATA.F, SOA_DEFN.F, and hlconst.F

#### Screening level estimation of organic aerosol and ozone formation
The following python code allows for estimation of the organic aerosol and ozone formation potential of reactive organic carbon (ROC) species. In both cases, an example function is first given illustrating how the main function can be called. The user will need to supply their own ROC inputs (SMILES, OH rate constant in cm<sup>3</sup> molec<sup>-1</sup> s<sup>-1</sup>, and vapor pressure in mmHg).

 * [Python code to estimate SOA yields](soa_yields.py):
Described by Pye et al. 2022

 * [Python code to estimate ozone MIR](mir_estimates.py):
Developed by Karl Seltzer as described by Pye et al. 2022
