# Chemistry

CRACMM includes a full set of gas and particle species ([Pye et al., 2023](https://doi.org/10.5194/acp-23-5043-2023)). The gas and heterogeneous chemistry kinetic reactions are described in files provided here. Absorptive partitioning in the CMAQ implementation of CRACMM assumes equilibrium. Note that markdown files round coefficients to the thousandths place for brevity and the true mechanism is represented in the mech.def files.

Box model inputs are provided for the F0AM model ([Wolfe et al., 2016](https://doi.org/10.5194/gmd-9-3309-2016)). The official F0AM release, [https://github.com/AirChem/F0AM](https://github.com/AirChem/F0AM), includes some version(s) of CRACMM.

## CRACMM1 mechanism
  * [CRACMM1 mechanism table](cracmm1/mech_cracmm1_aq.md)
  * CMAQ-ready [CRACMM1 mechanism definition file](cracmm1/mech_cracmm1_aq.def)
  * [F0AM chemistry files](https://github.com/USEPA/CRACMM/tree/main/chemistry/cracmm1/F0AM) for CRACMM1 mechanism as implemented by [Place et al. (2023)](https://doi.org/10.5194/acp-23-9173-2023).

## CRACMM1AMORE mechanism
  * [CRACMM1AMORE mechanism table](cracmm1amore/mech_cracmm1amore_aq.md) (see [Wiser et al., 2023](https://doi.org/10.5194/gmd-16-1801-2023))
  * CMAQ-ready [CRACMM1AMORE mechanism definition file](cracmm1amore/mech_cracmm1amore_aq.def)
 
## CRACMM2 mechanism
   * [CRACMM2 mechanism table](cracmm2/mech_cracmm2.md)
   * CMAQ-ready [CRACMM2 mechanism definition file](cracmm2/mech_cracmm2.def)
   * [F0AM chemistry files](https://github.com/USEPA/CRACMM/tree/main/chemistry/cracmm2/F0AM) for CRACMM2 mechanism as implemented by [Skipper et al. (2024)](https://doi.org/10.5194/acp-24-12903-2024).
   * [Documentation by reaction](cracmm2/cracmm2_rxn_metadata.csv) indicating the mechanism version where reaction was introduced (reaction_family), the publication documenting the reaction (publication_string and publication_doi), and the data underlying the reaction (underlying_data_publication, underlying_data_publication_doi) as well as additional notes  

**References**  
Wolfe, G. M., Marvin, M. R., Roberts, S. J., Travis, K. R., and Liao, J.: The Framework for 0-D Atmospheric Modeling (F0AM) v3.1, Geosci. Model Dev., 9, 3309-3319, [https://doi.org/10.5194/gmd-9-3309-2016](https://doi.org/10.5194/gmd-9-3309-2016), 2016.

See also the [CRACMM reference list](../additional_info.md#references).
