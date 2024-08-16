### CRACMM Emissions

CMAQ-ready emissions, meteorology, and other input files following EQUATES methods (Foley et al., 2023) are available to run CRACMM across the contiguous U.S. for 2018 at 12km horizontal resolution via:

US EPA, 2023, "CMAQ Model Version 5.4 CRACMM Input Data -- 1/1/2018 - 12/31/2018 12km CONUS", [https://doi.org/10.15139/S3/9AV907](https://doi.org/10.15139/S3/9AV907), UNC Dataverse, V1.


Additional files supporting CRACMM emissions are available within this directory. EPA's SPECIATE to SMOKE Tool, [S2S-Tool](https://github.com/USEPA/S2S-Tool), also supports CRACMM speciation and can generate SMOKE-ready speciation files (gspro files). When running CMAQ, the user is encouraged to check the main log file and the log file from one individual processor for diagnostic information from DESID (Murphy et al., 2021) that could indicate any mismatches in species naming conventions.

#### Directory contents

For [CRACMM1](cracmm1) and [CRACMM2](cracmm2), the following are provided:

- CRACMM species mapping flowchart in PDF: PDF of how individual species map to CRACMM. 

- CRACMM mapper in python (cracmm_mapper.py): python code to map individual species to CRACMM mechanism species. The mapper requires use of the python RDKit (see the [python notebook](smiles2cracmm.ipynb) for an example of how to run the mapper). The mapper workflow is displayed graphically in the pdf file. Inputs to the mapper are a SMILES string, OH rate constant, and saturation concentration. OH rate constants can be estimated with [OPERA algorithms](https://github.com/kmansouri/OPERA). Saturation concentrations can be calculated from vapor pressures obtained via OPERA or other sources. OPERA algorithms can be run for any organic species with a SMILES in the [EPA Chemical Transformation Simulator](https://qed.epa.gov/cts/pchemprop/input/) and OPERA predictions are precalculated for species in the [EPA Chemicals Dashboard](https://comptox.epa.gov/dashboard/). 

The following contain species mapped to CRACMM1 and CRACMM2:

- [SPECIATE Inputs](SPECIATEInputs): Speciation table for interim [SPECIATE](https://www.epa.gov/air-emissions-modeling/speciate) v5.2. Contains representative compound identifiers (DTXSID and name) for all species in SPECIATE. The last two columns indicates the CRACMM1-2 species where the emitted species should map (organic only).

- [Biogenic Species Mappings](BiogenicMappings): [MEGAN](https://bai.ess.uci.edu/megan) and [BEIS](https://www.epa.gov/air-emissions-modeling/biogenic-emission-inventory-system-beis) biogenic species mapped to CRACMM. Mapping files used for inline prediction of biogenic emissions in CMAQ are available in the [CMAQ repository](https://github.com/USEPA/CMAQ/tree/main/CCTM/src/biog).

#### Version compatibility

##### CRACMM version 2
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

##### CRACMM version 1
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

CRACMM1 cannot be easily mapped to Carbon Bond.

### References
Foley, K. M., Pouliot, G. A., Eyth, A., Aldridge, M. F., Allen, C., Appel, K. W., Bash, J. O., Beardsley, M., Beidler, J., Choi, D., Farkas, C., Gilliam, R. C., Godfrey, J., Henderson, B. H., Hogrefe, C., Koplitz, S. N., Mason, R., Mathur, R., Misenis, C., Possiel, N., Pye, H. O. T., Reynolds, L., Roark, M., Roberts, S., Schwede, D. B., Seltzer, K. M., Sonntag, D., Talgo, K., Toro, C., Vukovich, J., Xing, J., and Adams, E.: 2002–2017 anthropogenic emissions data for air quality modeling over the United States, Data in Brief, 47, 109022, [https://doi.org/10.1016/j.dib.2023.109022](https://doi.org/10.1016/j.dib.2023.109022), 2023.

Murphy, B. N., Nolte, C. G., Sidi, F., Bash, J. O., Appel, K. W., Jang, C., Kang, D., Kelly, J., Mathur, R., Napelenok, S., Pouliot, G., and Pye, H. O. T.: The Detailed Emissions Scaling, Isolation, and Diagnostic (DESID) module in the Community Multiscale Air Quality (CMAQ) modeling system version 5.3.2, Geosci. Model Dev., 14, 3407–3420, [https://doi.org/10.5194/gmd-14-3407-2021](https://doi.org/10.5194/gmd-14-3407-2021), 2021.
