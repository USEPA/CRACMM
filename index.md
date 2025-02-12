# CRACMM Documentation

The Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM) is a description of atmospheric NO<sub>X</sub>-VOC-O<sub>3</sub>-aerosol chemistry and associated metadata (Pye et al., 2023; Place et al., 2023). CRACMM has been available in the EPA [Community Multiscale Air Quality (CMAQ) modeling system](https://github.com/USEPA/CMAQ) since version 5.4 (2022 release) and will continue to be updated (see the [EPA fact sheet on the CMAQ website](https://www.epa.gov/cmaq/cracmm)). In CMAQ, CRACMM was initially released with two representations of isoprene chemistry (see Wiser et al., 2023) that were merged together in CRACMM2 (Skipper et al., 2024). The main repository branch on github will evolve (see [Version History](additional_info.md#Version-history)) and be periodically tagged to reflect official release versions. To obtain frozen versions of CRACMM, select the appropriate branch or tag on github. 

## Point of Contact
Havala Pye, pye.havala@epa.gov

## Purpose and Organization of the CRACMM Github Repository

The official, frozen versions of CRACMM reside in CMAQ in the [US EPA Github repository](https://github.com/USEPA/CMAQ). Here, we bring together CRACMM metadata from across CMAQ and provide additional information such as how to map emissions to the mechanism. This information is intended to support CMAQ users and provide the atmospheric chemistry community with information about CRACMM. This repository is organized as follows:
 * [Chemistry](chemistry/README.md): the mechanism in CMAQ-ready, F0AM box model, and markdown formats
 * [Emissions](emissions/README.md): inputs and outputs to emission mapping tools and code to perform mapping of individual species to CRACMM (informed by Foley et al., 2023)
 * [Metadata](metadata/README.md): information about CRACMM species (molecular weights, volatility, solubility, representative structures, etc.)
 * [Utilities](utilities/README.md): python code to assemble metadata from CMAQ code and routines for screening level predictions of organic aerosol and ozone formation potential

* [Open source license](license.md)


```{eval-rst}
.. toctree::
   :maxdepth: 2
   :caption: Contents
   :hidden:

   index_duplicate.md
   chemistry/README.md
   emissions/README.md
   metadata/README.md
   logos/logos.md
   utilities/README.md

.. toctree::
   :maxdepth: 2
   :caption: Tutorials
   :hidden:

   utilities/smiles2cracmm
   utilities/BEISMEGAN_biogenicmapping2cracmm
   utilities/markdown_metadata
   utilities/SPECIATE_map2cracmm

.. toctree::
   :maxdepth: 2
   :caption: Additional Information
   :hidden:

   additional_info.md
   license.md
   ```