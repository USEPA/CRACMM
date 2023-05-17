### CRACMM v1.0 Chemistry

The gas and heterogeneous chemistry kinetic reactions are described in files provided here. Absorptive partitioning in CMAQ assumes equilibirum. Note that markdown files round coefficients to the thousandths place for brevity and the true mechanism is represented in the mech.def files.

Box model inputs developed by Place et al. (2023) are provided for the F0AM model (Wolfe et al., 2016) which can be obtained from [https://github.com/AirChem/F0AM](https://github.com/AirChem/F0AM).

- CRACMM1 mechanism
  * [CRACMM1 in markdown](cracmm1/mech_cracmm1_aq.md)
  * [CMAQ-ready CRACMM1 mechanism definition file](cracmm1/mech_cracmm1_aq.def)
  * [F0AM chemistry files for CRACMM1 mechanism](cracmm1/F0AM) as implemented by Place et al. (2023).

- CRACMM1AMORE mechanism
  * [CRACMM1AMORE in markdown](cracmm1amore/mech_cracmm1amore_aq.md)
  * [CMAQ-ready CRACMM1AMORE mechanism definition file](cracmm1amore/mech_cracmm1amore_aq.def)

###References:

Place, B. K., Hutzell, W. T., Appel, K. W., Farrell, S., Valin, L., Murphy, B. N., Seltzer, K. M., Sarwar, G., Allen, C., Piletic, I. R., D'Ambro, E. L., Saunders, E., Simon, H., Torres-Vasquez, A., Pleim, J., Schwantes, R. H., Coggon, M. M., Xu, L., Stockwell, W. R., and Pye, H. O. T.: Sensitivity of Northeast U.S. surface ozone predictions to the representation of atmospheric chemistry in CRACMMv1.0, EGUsphere [preprint], [https://doi.org/10.5194/egusphere-2023-288](https://doi.org/10.5194/egusphere-2023-288), 2023.

Wolfe, G. M., Marvin, M. R., Roberts, S. J., Travis, K. R., and Liao, J.: The Framework for 0-D Atmospheric Modeling (F0AM) v3.1, Geosci. Model Dev., 9, 3309–3319, [https://doi.org/10.5194/gmd-9-3309-2016](https://doi.org/10.5194/gmd-9-3309-2016), 2016.