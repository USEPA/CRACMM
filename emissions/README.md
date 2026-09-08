# Emissions

Additional files documenting and supporting CRACMM emissions are described here. 

## Emission mapping

Individual organic species may be represented explicitly in CRACMM or lumped with other species of similar properties. To ensure reproducibility and transparency in emission mapping, the mapping of individual organic species (e.g., benzene) to emitted CRACMM species (e.g., BEN) should be performed using the "CRACMM mapper" code. The mapper uses cheminformatics and properties of the individual emitted species to classify them into CRACMM species. To assist with mapper input, the [EPA Chemicals Dashboard](https://comptox.epa.gov/dashboard/) can provide SMILES, OH rate constants, vapor pressures, and molecular weights for a large set of curated species. Using the batch search at the [EPA Chemicals Dashboard](https://comptox.epa.gov/dashboard/), input by “Chemical Name” (e.g., benzene), then select SMILES (under Structures) and OPERA Model Predictions and Average Mass (under Intrinsic and Predicted Properties) as Export Options. OPERA algorithms to predict properties can also be run for any organic species with a SMILES in the [EPA Chemical Transformation Simulator](https://qed.epa.gov/cts/pchemprop/input/).

In terms of the organic species emissions, CRACMM2 and CRACMM3 are fully cross-compatible. CRACMM3M includes one new emitted organic species that was previously lumped in other CRACMM species: methyl iodide. Methyl iodide may also be estimated at runtime within a chemical transport model such as CMAQ and need not be prepared offline in advance. At this time, we recommend using the CRACMM2 organic species emission mappers for CRACMM3 (except in the case of methyl iodide in CRACMM3M).

For [CRACMM1](https://github.com/USEPA/CRACMM/tree/main/emissions/cracmm1) and [CRACMM2](https://github.com/USEPA/CRACMM/tree/main/emissions/cracmm2), the following are provided:

- CRACMM species mapping flowchart in PDF: PDF of how individual species map to CRACMM. 

- CRACMM mapper, available in [python utilities](../utilities/README.md#python-modules): python code to map individual species to CRACMM mechanism species. The mapper requires use of the python RDKit (see the [python notebook](../utilities/smiles2cracmm.ipynb) for an example of how to run the mapper). The mapper workflow is displayed graphically in the pdf file. Inputs to the mapper are a SMILES string, OH rate constant, and saturation concentration (C* = Vapor pressure x Molecular Weight / (R x 298 K) with unit conversions as appropriate).

The following contain species mapped to CRACMM1 and CRACMM2:

- [SPECIATE Inputs](https://github.com/USEPA/CRACMM/tree/main/emissions/SPECIATEInputs): Speciation table for interim [SPECIATE](https://www.epa.gov/air-emissions-modeling/speciate) v5.2. Contains representative compound identifiers (DTXSID and name) for all species in SPECIATE. The last two columns indicates the CRACMM1-2 species where the emitted species should map (organic only).

- [Biogenic Species Mappings](https://github.com/USEPA/CRACMM/tree/main/emissions/BiogenicMappings): Biogenic species from [MEGAN](https://bai.ess.uci.edu/megan) and [BEIS](https://www.epa.gov/air-emissions-modeling/biogenic-emission-inventory-system-beis) mapped to CRACMM. Mapping files used for inline prediction of biogenic emissions in CMAQ are available in the [CMAQ repository](https://github.com/USEPA/CMAQ/tree/main/CCTM/src/biog).

## Resources available

EPA's SPECIATE to SMOKE Tool, [S2S-Tool](https://github.com/USEPA/S2S-Tool), supports CRACMM speciation and can generate SMOKE-ready speciation files (gspro files). When running CMAQ, the user is encouraged to check the main log file and the log file from one individual processor for diagnostic information from DESID ([Murphy et al., 2021](https://doi.org/10.5194/gmd-14-3407-2021)) that could indicate any mismatches in species naming conventions. In most cases, an older set of CRACMM emissions can be used in a newer version with minor adjustment (see the version compatability section).

### CMAQ-ready emissions
- CRACMM2 emissions for 2023 over the contiguous U.S. and Canada at 12km horizontal resolution (used by [Pye et al., 2025](https://doi.org/10.26434/chemrxiv-2025-fx8f1)): US EPA, 2025, "CMAQ Model Version 5.5 CRACMM2 Input Data -- 12/01/2022 - 12/31/2013 12km CONUS + Canada", [https://doi.org/10.15139/S3/GL41QC](https://doi.org/10.15139/S3/GL41QC), UNC Dataverse, V1. 

- CRACMM2 emissions for 2022 over the contiguous U.S. at 12km horizontal resolution: US EPA, 2025, "CMAQ Model Version 5.5 CRACMM2 Input Data (2022r1) - 12/22/2021 - 12/31/2022 12km CONUS", [https://doi.org/10.15139/S3/BDLBTW](https://doi.org/10.15139/S3/BDLBTW), UNC Dataverse, V1

- CRACMM1 emissions for 2019 over the contiguous U.S. at 12km horizontal resolution (used by [Vannucci et al., 2024](https://doi.org/10.1021/acsearthspacechem.3c00333); [Pye et al., 2024](https://doi.org/10.1021/acs.est.4c06187); and [Skipper et al., 2024](https://doi.org/10.5194/acp-24-12903-2024)): US EPA, 2025, "CMAQ Model Version 5.4-5.5 CRACMM Input Data -- 1/1/2019 - 12/31/2019 12km CONUS", [https://doi.org/10.15139/S3/WZNGQB](https://doi.org/10.15139/S3/WZNGQB), UNC Dataverse, V1. 

- CRACMM1 emissions, meteorology, and other input files following EQUATES methods ([Foley et al., 2023](https://doi.org/10.1016/j.dib.2023.109022)) for 2018 over the contiguous U.S. at 12km horizontal resolution:
US EPA, 2023, "CMAQ Model Version 5.4 CRACMM Input Data -- 1/1/2018 - 12/31/2018 12km CONUS", [https://doi.org/10.15139/S3/9AV907](https://doi.org/10.15139/S3/9AV907), UNC Dataverse, V1.

- CMAQ-MPAS ready ([Wong, Willison, et al., 2024](https://doi.org/10.5194/gmd-17-7855-2024)) CRACMM1 emissions for 2017 over the globe: US EPA, 2024, "MPAS-CMAQ Model Version 5.5 CRACMM2 Input Data -- 1/1/2017 - 12/31/2017 120 km Global", [https://doi.org/10.15139/S3/PAHQFO](https://doi.org/10.15139/S3/PAHQFO), UNC Dataverse, V1.

- CMAQv5.5-CRACMM July 2018 benchmark test case for northeast U.S. at 12km horizontal resolution: US EPA, 2024, "CMAQ Model Version 5.5 Benchmark Input and Output Data", [https://doi.org/10.15139/S3/X5SZM2](https://doi.org/10.15139/S3/X5SZM2), UNC Dataverse, V1.

### SMOKE inputs
- EPA 2022v1 Platform, [https://www.epa.gov/air-emissions-modeling/2022v1-emissions-modeling-platform](https://www.epa.gov/air-emissions-modeling/2022v1-emissions-modeling-platform), Last updated on January 31, 2025.
- EPA 2016v3 Platform, [https://www.epa.gov/air-emissions-modeling/2016v3-platform](https://www.epa.gov/air-emissions-modeling/2016v3-platform), Last updated June 4, 2024.

## Version compatibility

### Primary organic aerosol in CMAQ processing
Any CMAQ-ready emissions labeled as CRACMM2 align inventoried primary organic aerosol (POA) with condensible reactive organic carbon (CROC, species with saturation concentrations, C*, of 100 &mu;g m<sup>-3</sup> (log<sub>10</sub> bin center) and below, Murphy et al., 2023). This assignment is performed in S2S-Tool and built into the gspro files input to SMOKE resulting in CMAQ-ready files having the model-ready species. The alignment is generally referred to as CROC/OM = 1 although the mobile sector may use custom CROC/OM ratios following Murphy et al. (2023) as in the 2022 CONUS inputs mentioned above. Any CMAQ-ready files labeled CRACMM2 will have this approach with the default allocation to species of different volatility and functionality (e.g., O:C ratio) described in the supporting information of Pye et al. (2025).

Any CMAQ-ready emissions labeled as CRACMM1 used PMNCOMN2 and PMOCN2 as pass-through species for POA. The user should use DESID (Murphy et al., 2021) at runtime to allocate those species to CRACMM species. CMAQv5.4-5.5 include DESID files with recommended mappings of PMNCOMN2 and PMOCN2 to species of specific volatility and functionality. The DESID mappings provided with CMAQ assume POA aligns with C* 10,000 &mu;g m<sup>-3</sup> and below (with the 10,000 &mu;g m<sup>-3</sup> C* mass included in the 1,000 &mu;g m<sup>-3</sup> species). This DESID mapping of PMNCOMN2 and PMOCN2 is required otherwise all POA will be dropped from the simuluation. The user can check one processor log to verify if any species on the emissions files were dropped.

### CRACMM version 3
CRACMM3 and CRACMM2 are fully cross-compatible in terms of organic emissions. For CRACMM3M, users should map methyl iodide to the explicit CRACMM3M species. In CRACMM2, methyl iodide is lumped with other species.

CRACMM1 inputs could be used in CRACMM3 after applying adjustments suggested in the following section.

### CRACMM version 2
Emission inputs that have been previously prepared for CRACMM1 can be used for CRACMM2 with some updates to emission mappings for aromatic species. The following emission mappings are recommended based on the total mass of emissions of ethylbenzene and styrene across all emission sectors:
- emission species `XYE`: 70% `XYL`; 30% `EBZ`
- emission species `XYM`: 93% `XYL`; 7% `STY`

This can be implemented in the DESID control file (`CMAQ_Control_DESID_cracmm2.nml`) by adding the following lines:
```
   'EVERYWHERE', 'ALL'         ,'XYE'    ,'XYL'         ,'GAS'  ,0.70,'UNIT','a',
   'EVERYWHERE', 'ALL'         ,'XYE'    ,'EBZ'         ,'GAS'  ,0.30,'UNIT','a',
   'EVERYWHERE', 'ALL'         ,'XYM'    ,'XYL'         ,'GAS'  ,0.93,'UNIT','a',
   'EVERYWHERE', 'ALL'         ,'XYM'    ,'STY'         ,'GAS'  ,0.07,'UNIT','a',
```
In some cases, CRACMM1 emissions may not contain a prepended A (for aerosol) of V (for vapor) indicator. The user can indicate phase in CMAQ by mapping the emitted species to the model species with A or V in DESID (Murphy et al., 2021). If lacking other information, all ROC species with C* 1000 μg/m<sup>3</sup> and above (ROC-P3, P4, P5, P6) can reasonably be assigned "V" and those below (ROC-P2, P1, P1, N1, N2) can be assigned "A". 

### CRACMM version 1
The following species names were updated between CRACMM v0.21 and v1.0. Species are fully compatible across CRACMM versions with renaming.

| Version 0.21  | Version 1 |
| ------------- | --------- |
| HC8           | HC10      |
| TOLUENE       | TOL       |
| XYOP          | XYE       |
| ROCIOXY       | VROCIOXY  |

CRACMM1 species that inherit their name from RACM2 are conceptualized as the same species (e.g. XYM is m-xylene in both). For species that differ between the mechanisms, mapping can occur between CRACMM1 and RACM2 emissions. However, the mapping will result in changes to the meaning of some species and approximations in the chemistry. 

The following CRACMM1 species can be mapped to the equivalent RACM2 species if CRACMM1 inputs are to be used in RACM2:

| CRACMM1 Species | RACM2 Species |
| -------- | --------- |
| ACRO     | MACR |
| BDE13    | DIEN |
| BEN      | BENZENE |
| FURAN    | HC8 |
| HC10     | HC8 |
| NAPH     | NAPH* |
| PROG     | HC8 |
| XYE      | Split between XYO and XYP |
| VROCIOXY | not applicable |
| SLOWROC  | not applicable |

*NAPH exists in the RACM2_AE6 implementation in CMAQ. If NAPH is not available, use XYM to represent the NAPH emitted mass.

Emissions of the following CRACMM1 species cannot be estimated from RACM2 inputs as they are aggregated with other species in RACM2: ACRO, FURAN, PROG, VROCIOXY, or SLOWROC. The following RACM2 species can be mapped to CRACMM1 species to use RACM2 emissions for CRACMM1.

| RACM2 Species | CRACMM1 Species |
| -------- | --------- |
| DIEN     | BDE13 |
| BENZENE  | BEN |
| HC8      | HC10 |
| XYO      | XYE |
| XYP      | XYE |

CRACMM1 cannot be easily mapped to Carbon Bond. For aged air, such as regional model boundary conditions, CMAQ users can use CB6 to CRACMM mapping information here: [https://github.com/USEPA/CMAQ/tree/main/PREP/bcon/map2mech](https://github.com/USEPA/CMAQ/tree/main/PREP/bcon/map2mech). 

**References**  
Foley, K. M., Pouliot, G. A., Eyth, A., Aldridge, M. F., Allen, C., Appel, K. W., Bash, J. O., Beardsley, M., Beidler, J., Choi, D., Farkas, C., Gilliam, R. C., Godfrey, J., Henderson, B. H., Hogrefe, C., Koplitz, S. N., Mason, R., Mathur, R., Misenis, C., Possiel, N., Pye, H. O. T., Reynolds, L., Roark, M., Roberts, S., Schwede, D. B., Seltzer, K. M., Sonntag, D., Talgo, K., Toro, C., Vukovich, J., Xing, J., and Adams, E.: 2002–2017 anthropogenic emissions data for air quality modeling over the United States, Data in Brief, 47, 109022, [https://doi.org/10.1016/j.dib.2023.109022](https://doi.org/10.1016/j.dib.2023.109022), 2023.

Murphy, B. N., Nolte, C. G., Sidi, F., Bash, J. O., Appel, K. W., Jang, C., Kang, D., Kelly, J., Mathur, R., Napelenok, S., Pouliot, G., and Pye, H. O. T.: The Detailed Emissions Scaling, Isolation, and Diagnostic (DESID) module in the Community Multiscale Air Quality (CMAQ) modeling system version 5.3.2, Geosci. Model Dev., 14, 3407-3420, [https://doi.org/10.5194/gmd-14-3407-2021](https://doi.org/10.5194/gmd-14-3407-2021), 2021.

Murphy, B. N., Sonntag, D., Seltzer, K. M., Pye, H. O. T., Allen, C., Murray, E., Toro, C., Gentner, D. R., Huang, C., Jathar, S., Li, L., May, A. A., and Robinson, A. L.: Reactive organic carbon air emissions from mobile sources in the United States, Atmos. Chem. Phys., 23, 13469–13483, [https://doi.org/10.5194/acp-23-13469-2023](https://doi.org/10.5194/acp-23-13469-2023), 2023.

Wong, D. C., Willison, J., Pleim, J. E., Sarwar, G., Beidler, J., Bullock, R., Herwehe, J. A., Gilliam, R., Kang, D., Hogrefe, C., Pouliot, G., and Foroutan, H.: Development of the MPAS-CMAQ coupled system (V1.0) for multiscale global air quality modeling, Geosci. Model Dev., 17, 7855-7866, [https://doi.org/10.5194/gmd-17-7855-2024](https://doi.org/10.5194/gmd-17-7855-2024), 2024.


See also the [CRACMM reference list](../additional_info.md#references).
