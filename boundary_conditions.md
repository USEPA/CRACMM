# Boundary Conditions
Regional CRACMM simulations require chemical boundary and initial conditions. Several tools are available to assist with this process:

## General Process

1. Obtain output from a model with a larger domain or other chemical mechanism such as MPAS-CMAQ, HEMI-CMAQ, a larger CMAQ, GEOSCF, or GEOS-Chem or the CMAQ boundary profile.  

2. Extract and map the species to the regional CRACMM domain. 

## Tools 
* [BCON](https://github.com/USEPA/CMAQ/tree/main/PREP/bcon). BCON prepares chemical boundary conditions for CMAQ. Files specifying how CB6r5 species map to CRACMM are available [here](https://github.com/USEPA/CMAQ/tree/main/PREP/bcon/map2mech). BCON (and ICON) include a profile that can be used.

* [ICON](https://github.com/USEPA/CMAQ/blob/main/PREP/icon/README.md). ICON prepares initial conditions. The effect of initial conditions can be removed through proper spin-up, generally at least one month. See [Hogrefe et al. (2017)](https://doi.org/10.1016/j.atmosenv.2017.04.009) for information on spin-up times.  

* [AQMBC](https://barronh.github.io/aqmbc/). AQMBC currently supports mapping of GEOSCF to CRACMM2 for creating initial and boundary conditions. 

**Reference**  
Hogrefe, C., Roselle, S. J., and Bash, J. O.: Persistence of initial conditions in continental scale air quality simulations, Atmos Environ (1994), 160, 36-45, [10.1016/j.atmosenv.2017.04.009](https://doi.org/10.1016/j.atmosenv.2017.04.009), 2017.
 