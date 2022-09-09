### Metadata for CRACMM

CRACMM workflows require that each species in CRACMM has a representative structure specified by a SMILES string. These structures are used to obtain metadata such as solubility (Henry's law coefficients), volatility, and other parameters.

#### Species Information

- [CRACMM species in markdown](cracmm1_aq_species_table.md)
- [Properties of species emitted in CRACMM](CRACMM2017_emiss_properties.csv) based on 2017 U.S. anthropogenic and biomass burning emissions as used by Pye et al. 2022


#### CMAQ-ready files

These files are used directly by CMAQv5.4 and contain information about molecular weights and representative structures. See [CMAQ documentation](https://github.com/USEPA/CMAQ) for futher information.

- [Aerosol species](AE_cracmm1_aq.nml)
- [Gas phase species](GC_cracmm1_aq.nml)
- [Non-reactive species](NR_cracmm1_aq.nml) (HCl and NH3)




