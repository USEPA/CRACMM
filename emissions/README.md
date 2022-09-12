### CRACMM Emissions

#### Directory contents

- [CRACMM species mapping flowchart in PDF](cracmm_mapping_flowchart_v1.pdf): PDF of how individual species map to CRACMM. This information is also available in the supporting information of Pye et al. (in prep for submission to Atmos Chem Phys).

- [CRACMM mapper in python](cracmm_mapper.py): python code to map individual species to CRACMM mechanism species. The mapper requires use of the python RDKit (see environment.yml file for anaconda setup). The mapper workflow is displayed graphically in the pdf file. Inputs to the mapper are a SMILES string, OH rate constant, and saturation concentration. OH rate constants can be estimated with [OPERA algorithms](https://github.com/kmansouri/OPERA). Saturation concentrations can be calculated from vapor pressures obtained via OPERA or other sources. OPERA algorithms can be run for any organic species with a SMILES in the [EPA Chemical Transformation Simulator](https://qed.epa.gov/cts/pchemprop/input/) and OPERA predictions are precalculated for species in the the [EPA Chemicals Dashboard](https://comptox.epa.gov/dashboard/). 

- [SPECIATE Inputs](SPECIATEInputs): Speciation table for interim [SPECIATE](https://www.epa.gov/air-emissions-modeling/speciate) v5.2. Contains representative compound identifiers (DTXSID and name) for all species in SPECIATE. The last column indicates the CRACMM species where the emitted species should map (organic only).

- [Speciation Tool Inputs](SpeciationToolInputs): inputs to [Speciation Tool](https://github.com/CMASCenter/Speciation-Tool) that create SMOKE-ready mechanism species for profiles.

- [SMOKE Inputs](SMOKEInputs): Speciation profiles for VOC and PM in terms of CRACMM species for use with SMOKE (these are output by Speciation Tool). SMOKE Inputs include [gspro files](https://www.cmascenter.org/smoke/documentation/2.1/html/ch08s05s02.html) which give the mass fraction of total VOC (or TOG, total organic gas) and/or PM that is each mechanism species for different sectors. 
  For gspro files based on SPECIATE v5.2, a [gscnv file](https://www.cmascenter.org/smoke/documentation/2.1/html/ch08s05.html#sect_input_gscnv) that converts VOC (which is inventoried by EPA in the NEI) to total organic gas (TOG) is also available.  VOC in the NEI is defined by the [code of federal regulation 51.100(s)](https://www.govinfo.gov/content/pkg/CFR-2019-title40-vol2/xml/CFR-2019-title40-vol2-part51.xml#seqnum51.100) and excludes species with negligible photochemical reactivity such as ethane which are needed for photochemical modeling. [Gsref files](https://www.cmascenter.org/smoke/documentation/2.5/html/ch08s05s04.html) map sources to profiles.
  - Files labeled v0_21_Spec_5_2 are based on an interim version of CRACMM (v0.21) and an interim version of SPECIATE v5.2. Several CRACMM species were renamed in the final v1.0. See notes regarding version compatability below.
  - Files labeled v1_Spec_5_2 match CRACMMv1.0 and interim SPECIATE v5.2. CRACMMv1 is implemented in CMAQv5.4.
  - Files labeled HTAP provide speciation for HTAP sectors (aircraft, ships, energy, industry, transport, residential, agriculture) based on U.S. 2018 emission speciation.

- [Biogenic Species Mappings](BiogenicMappings): [MEGAN](https://bai.ess.uci.edu/megan) and [BEIS](https://www.epa.gov/air-emissions-modeling/biogenic-emission-inventory-system-beis) biogenic species mapped to CRACMM.

#### Version compatability

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

*NAPH exists in the RACM2_AE6 implementaion in CMAQ. If NAPH is not available, use XYM to represent the NAPH emitted mass.

Emissions of the following CRACMM1 species cannot be estimated from RACM2 inputs as they are aggregated with other species in RACM2: ACRO, FURAN, PROG, VROCIOXY, or SLOWROC. The following RACM2 species can be mapped to CRACMM1 species to use RACM2 emissions for CRACMM1.

| RACM2 Species | CRACMM1 Species |
| -------- | --------- |
| DIEN     | BDE13 |
| BENZENE  | BEN |
| HC8      | HC10 |
| XYO      | XYE |
| XYP      | XYE |

CRACMM1 cannot be easily mapped to Carbon Bond.
