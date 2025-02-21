# Python Utilities

## Python Modules

 * CRACMM1 Reactive Emission Compounds (ROC) Emission Mapper [[Download]](cracmm1_mapper.py): Maps individual emitted ROC species to CRACMM species. See [Emissions page](../emissions/README.md) for more information.

 * CRACMM2 ROC Emission Mapper [[Download]](cracmm2_mapper.py): Maps individual emitted ROC species to CRACMM species. See [Emissions page](../emissions/README.md) for more information.

 * Python code to estimate SOA yields [[Download]](soa_yields.py):
Performs a screening level estimation of the organic aerosol formation potential of ROC species. The user will need to supply their own ROC inputs (SMILES, OH rate constant in cm3 molec-1 s-1, and vapor pressure in mmHg). Method is described by [Pye et al. 2023](https://doi.org/10.5194/acp-23-5043-2023)

 * Python code to estimate ozone MIR [[Download]](mir_estimates.py):
Performs a screening level estimation of the ozone formation potential (Maximum Incremental Reactivity, MIR) of ROC species. The user will need to supply their own ROC inputs (SMILES, OH rate constant in cm3 molec-1 s-1, and vapor pressure in mmHg). Method is described by [Pye et al. 2023](https://doi.org/10.5194/acp-23-5043-2023)

 ## Tutorials (Jupyter Notebooks)

 * [Assemble CRACMM Species Metadata from CMAQ](markdown_metadata.ipynb): Creates species markdown files from CMAQ. Requires as input the CMAQ-ready species namelists, species description file, AERO_DATA.F, SOA_DEFN.F, and hlconst.F.

 * [Map BEIS and MEGAN species to CRACMM](BEISMEGAN_biogenicmapping2cracmm.ipynb): Maps individual ROC species from biogenic sources to CRACMM mechanism species.

 * [Find CRACMM species based on CRACMM](smiles2cracmm.ipynb): Demonstrates CRACMM emission mapper.

 * [Map SPECIATE species to CRACMM](SPECIATE_map2cracmm.ipynb): Maps a database of speciated emissions (SPECIATEv5.2) to CRACMM species.

