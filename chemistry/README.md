# Chemistry

CRACMM includes a full set of gas and particle species ([Pye et al., 2023](https://doi.org/10.5194/acp-23-5043-2023)). The gas and heterogeneous chemistry kinetic reactions are described in files provided here. Absorptive partitioning in the CMAQ implementation of CRACMM assumes equilibrium. Note that markdown files round coefficients to the thousandths place for brevity and the true mechanism is represented in the mech.def files.

Box model inputs are provided for the F0AM model ([Wolfe et al., 2016](https://doi.org/10.5194/gmd-9-3309-2016)). The official F0AM release, [https://github.com/AirChem/F0AM](https://github.com/AirChem/F0AM), includes some version(s) of CRACMM. The photolysis rates in CRACMM F0AM files here are mapped to rates in MCM. For information on photolysis in CMAQ, see the [CMAQ CHEMMECH Utility](https://github.com/USEPA/CMAQ/tree/main/UTIL/chemmech#output-files-for-f0am-box-modeling) which generates F0AM files and [CMAQ inline photolysis preprocessor](https://github.com/USEPA/CMAQ/tree/main/UTIL/inline_phot_preproc) which contains cross section and quantum yield data.

## CRACMM3 mechanism
   * CRACMM3 is the latest base mechanism.
   * [CRACMM3 mechanism table](cracmm3/mech_cracmm3.md)
   * CMAQ-ready [CRACMM3 mechanism definition file](cracmm3/mech_cracmm3.def)
   * [F0AM chemistry files](https://github.com/USEPA/CRACMM/tree/main/chemistry/cracmm3/F0AM) for CRACMM3 mechanism. 

## CRACMM3M mechanism
   * CRACMM3M is consistent with CRACMM3 but replaces the condensed halogen reaction in CRACMM3 with additional detailed halogen and chlorine reactions as described by Sarwar et al. (2025).
   * [CRACMM3M mechanism table](cracmm3m/mech_cracmm3m.md)
   * CMAQ-ready [CRACMM3M mechanism definition file](cracmm3m/mech_cracmm3m.def)
   * [F0AM chemistry files](https://github.com/USEPA/CRACMM/tree/main/chemistry/cracmm3m/F0AM) for CRACMM3M mechanism. Note that some photolysis rates in CRACMM3M do not have direct analogs in MCM. The user will need to decide how to parameterize those rates.

## CRACMM3HAPs mechanism
   * CRACMM3HAPs includes additional hazardous air pollutants (HAPs). The additional HAPs are implemented as tracers with removal and/or reactive decay where applicable. The additional tracer HAPs do not affect the radical budget nor ozone or PM mass. 
   * For more information, see the work of Pye et al. (2025) and previous HAP implementations (Luecken et al., 2019) in the [CMAQ Repo](https://github.com/USEPA/CMAQ).
   * The CRACMM3HAPs radical budget and chemistry is the same as CRACMM3, so mechanism files are not separately provided.

## CRACMM2.001 mechanism
   * CRACMM2.001 is a minor update to CRACMM2 to improve some species naming conventions.
   * [CRACMM2.001 mechanism table](cracmm2.001/mech_cracmm2.md)
   * CMAQ-ready [CRACMM2.001 mechanism definition file](cracmm2.001/mech_cracmm2.def)
   * [F0AM chemistry files](https://github.com/USEPA/CRACMM/tree/main/chemistry/cracmm2.001/F0AM) for CRACMM2.001 mechanism which is the same as work by [Skipper et al. (2024)](https://doi.org/10.5194/acp-24-12903-2024) with minor changes.

## CRACMM2 mechanism
   * [CRACMM2 mechanism table](cracmm2/mech_cracmm2.md)
   * CMAQ-ready [CRACMM2 mechanism definition file](cracmm2/mech_cracmm2.def)
   * [F0AM chemistry files](https://github.com/USEPA/CRACMM/tree/main/chemistry/cracmm2/F0AM) for CRACMM2 mechanism as implemented by [Skipper et al. (2024)](https://doi.org/10.5194/acp-24-12903-2024).
   * [Documentation by reaction](cracmm2/cracmm2_rxn_metadata.csv) 

## CRACMM1 mechanism
  * [CRACMM1 mechanism table](cracmm1/mech_cracmm1_aq.md)
  * CMAQ-ready [CRACMM1 mechanism definition file](cracmm1/mech_cracmm1_aq.def)
  * [F0AM chemistry files](https://github.com/USEPA/CRACMM/tree/main/chemistry/cracmm1/F0AM) for CRACMM1 mechanism as implemented by [Place et al. (2023)](https://doi.org/10.5194/acp-23-9173-2023).

## CRACMM1AMORE mechanism
  * [CRACMM1AMORE mechanism table](cracmm1amore/mech_cracmm1amore_aq.md) (see [Wiser et al., 2023](https://doi.org/10.5194/gmd-16-1801-2023))
  * CMAQ-ready [CRACMM1AMORE mechanism definition file](cracmm1amore/mech_cracmm1amore_aq.def)
 
**References**  
Luecken, D., Yarwood, G., and Hutzell, W. T.: Multipollutant modeling of ozone, reactive nitrogen and HAPs across the continental US with CMAQ-CB6, Atmos Environ, 201, 62-72, [https://doi.org/10.1016/j.atmosenv.2018.11.060](https://doi.org/10.1016/j.atmosenv.2018.11.060), 2019.

Wolfe, G. M., Marvin, M. R., Roberts, S. J., Travis, K. R., and Liao, J.: The Framework for 0-D Atmospheric Modeling (F0AM) v3.1, Geosci. Model Dev., 9, 3309-3319, [https://doi.org/10.5194/gmd-9-3309-2016](https://doi.org/10.5194/gmd-9-3309-2016), 2016.

See also the [CRACMM reference list](../additional_info.md#references).
