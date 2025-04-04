# Overview

The Community Regional Atmospheric Chemistry Multiphase Mechanism (CRACMM; pronounced CRACK-um) is a description of atmospheric NO<sub>X</sub>-VOC-O<sub>3</sub>-aerosol chemistry and associated metadata ([Pye et al., 2023](https://doi.org/10.5194/acp-23-5043-2023); [Place et al., 2023](https://doi.org/10.5194/acp-23-9173-2023)). It builds on the history of the Regional Atmospheric Chemistry Mechanism (RACM, [Stockwell et al., 1997](https://doi.org/10.1029/97JD00849); and RACM2, [Goliff et al., 2013](https://doi.org/10.1016/j.atmosenv.2012.11.038)). In CRACMM, the RACM mechanisms are further expanded to include multiphase chemistry which is inherently linked to gas-phase chemistry by precursor gases as well as the ability of aerosols to modulate oxidant chemistry through reactive uptake. The “community” aspect of CRACMM reflects the importance of incorporating advances from a multi-institution community of researchers (see [Pye et al., 2024 EM Magazine](https://www.epa.gov/system/files/documents/2024-05/cmaq_pye_em-magazine_original_508-compliant.pdf)) in addition to the EPA scientists that lead the development. 

CRACMM has been available in the EPA [Community Multiscale Air Quality (CMAQ) modeling system](https://github.com/USEPA/CMAQ) since version 5.4 (2022 release) and will continue to be updated (see the [EPA fact sheet on the CMAQ website](https://www.epa.gov/cmaq/cracmm)). In CMAQ, CRACMM was initially released with two representations of isoprene chemistry (see [Wiser et al., 2023](https://doi.org/10.5194/gmd-16-1801-2023)) that were merged together in CRACMM2 ([Skipper et al., 2024](https://doi.org/10.5194/acp-24-12903-2024)). The main repository branch on GitHub will evolve (see [Version History](additional_info.md#version-history)) and be periodically tagged to reflect official release versions. To obtain frozen versions of CRACMM, select the appropriate branch or tag on GitHub. 

## Point of Contact
Havala Pye, pye.havala@epa.gov

## Purpose and Organization of the CRACMM GitHub Repository

The official, frozen versions of CRACMM reside in CMAQ in the [US EPA GitHub repository](https://github.com/USEPA/CMAQ). Here, we bring together CRACMM metadata from across CMAQ and provide additional information such as how to map emissions to the mechanism. This information is intended to support CMAQ users and provide the atmospheric chemistry community with information about CRACMM. This repository is organized as follows:
* [Chemistry](chemistry/README.md): The mechanism in CMAQ-ready format, F0AM box model format, and markdown format
* [Emissions](emissions/README.md): Descriptions of tools and methods to perform mapping of individual species to CRACMM.
* [Metadata](metadata/README.md): Information about CRACMM species (molecular weights, volatility, solubility, representative structures, etc.)
* [Logos](logos/logos.md): CRACMM logos in PNG and PDF formats
* [Python Utilities](utilities/README.md): Python modules and Jupyter notebook tutorials.

* [Open source license](license.md)

**References**  
Goliff, W. S., Stockwell, W. R., and Lawson, C. V.: The regional atmospheric chemistry mechanism, version 2, Atmospheric Environment, 68, 174-185, [https://doi.org/10.1016/j.atmosenv.2012.11.038](https://doi.org/10.1016/j.atmosenv.2012.11.038), 2013.

Stockwell, W. R., Kirchner, F., Kuhn, M., and Seefeld, S.: A new mechanism for regional atmospheric chemistry modeling, Journal of Geophysical Research: Atmospheres, 102, 25847-25879, [https://doi.org/10.1029/97JD00849](https://doi.org/10.1029/97JD00849), 1997.


See also the [CRACMM reference list](additional_info.md#references).



































































