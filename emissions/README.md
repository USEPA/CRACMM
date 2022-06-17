### CRACMM Emissions

#### Directory contents

- cracmm_mapping_flowchart_v1.pdf: PDF of how individual species map to CRACMM

- cracmm_mapper.py: python code to map individual species to CRACMM mechanism species. The mapper requires use of the python RDKit (see environment.yml file for anaconda setup). The mapper workflow is displayed graphically in the pdf file. 

- SPECIATEInputs: Speciation table for interim SPECIATE v5.2. Contains representative compound identifiers (DTXSID and name) for all species in SPECIATE. SPECIATEv5.2 will contain the representative compounds when released in summer 2022.

- SpeciationToolInputs: inputs to [Speciation Tool](https://github.com/CMASCenter/Speciation-Tool) that create SMOKE-ready mechanism species for profiles.

- SMOKEInputs: Speciation profiles for VOC and PM in terms of CRACMM species for use with SMOKE (these are output by Speciation Tool). SMOKE Inputs include [gspro files](https://www.cmascenter.org/smoke/documentation/2.1/html/ch08s05s02.html) which give the mass fraction of total VOC (or TOG, total organic gas) and/or PM that is each mechanism species for different sectors. 
  For gspro files based on SPECIATE v5.2, a [gscnv file](https://www.cmascenter.org/smoke/documentation/2.1/html/ch08s05.html#sect_input_gscnv) that converts VOC (which is inventoried by EPA in the NEI) to total organic gas (TOG) is also available. VOC in the NEI is defined by the [code of federal regulation 51.100(s)](https://www.govinfo.gov/content/pkg/CFR-2019-title40-vol2/xml/CFR-2019-title40-vol2-part51.xml#seqnum51.100) and excludes species with negligible photochemical reactivity such as ethane which are needed for photochemical modeling.
  - Files labeled v0_21_Spec_5_2 are based on an interim version of CRACMM (v0.21) and an interim version of SPECIATE v5.2. Several CRACMM species were renamed in the final v1.0.
  - Files labeled v1_Spec_5_2 match CRACMMv1.0 and interim SPECIATE v5.2. CRACMMv1 is implemented in CMAQv5.4.
  - Files labeled HTAP provide speciation for HTAP sectors (aircraft, ships, energy, industry, transport, residential, agriculture) based on U.S. 2018 emission speciation.

- BiogenicMappings: MEGAN and BEIS biogenic species mapped to CRACMM
