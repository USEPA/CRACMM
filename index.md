# Overview

The Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM) is a description of atmospheric NO<sub>X</sub>-VOC-O<sub>3</sub>-aerosol chemistry and associated metadata ([Pye et al., 2023](https://doi.org/10.5194/acp-23-5043-2023); [Place et al., 2023](https://doi.org/10.5194/acp-23-9173-2023)). CRACMM has been available in the EPA [Community Multiscale Air Quality (CMAQ) modeling system](https://github.com/USEPA/CMAQ) since version 5.4 (2022 release) and will continue to be updated (see the [EPA fact sheet on the CMAQ website](https://www.epa.gov/cmaq/cracmm)). In CMAQ, CRACMM was initially released with two representations of isoprene chemistry (see [Wiser et al., 2023](https://doi.org/10.5194/gmd-16-1801-2023)) that were merged together in CRACMM2 ([Skipper et al., 2024](https://doi.org/10.5194/acp-24-12903-2024)). The main repository branch on github will evolve (see [Version History](additional_info.md#Version-history)) and be periodically tagged to reflect official release versions. To obtain frozen versions of CRACMM, select the appropriate branch or tag on github. 

## Point of Contact
Havala Pye, pye.havala@epa.gov

## Purpose and Organization of the CRACMM Github Repository

The official, frozen versions of CRACMM reside in CMAQ in the [US EPA Github repository](https://github.com/USEPA/CMAQ). Here, we bring together CRACMM metadata from across CMAQ and provide additional information such as how to map emissions to the mechanism. This information is intended to support CMAQ users and provide the atmospheric chemistry community with information about CRACMM. This repository is organized as follows:
 * [Chemistry](chemistry/README.md): The mechanism in CMAQ-ready format, F0AM box model format, and markdown format
 * [Emissions](emissions/README.md): Descriptions of tools and methods to perform mapping of individual species to CRACMM.
 * [Metadata](metadata/README.md): Information about CRACMM species (molecular weights, volatility, solubility, representative structures, etc.)
 * [Logos](logos/logos.md): CRACMM logos in PNG and PDF formats
 * [Python Utilities](utilities/README.md): Python modules and jupyter notebook tutorials.

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

   utilities/markdown_metadata
   utilities/BEISMEGAN_biogenicmapping2cracmm
   utilities/smiles2cracmm
   utilities/SPECIATE_map2cracmm

.. toctree::
   :maxdepth: 2
   :caption: Additional Information
   :hidden:

   additional_info.md
   license.md

.. toctree::
   :maxdepth: 1
   :caption: External Resources
   :hidden:

   CRACMM GitHub <https://github.com/USEPA/CRACMM>
   EPA CRACMM Fact Sheet <https://www.epa.gov/cmaq/cracmm>
   CMAQ Documentation <https://jbrunto.github.io/CMAQ_Docs_v55/>

   ```