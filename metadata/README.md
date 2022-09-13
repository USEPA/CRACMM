### Metadata for CRACMM

CRACMM workflows require that each species in CRACMM has a representative structure specified by a SMILES string. These structures are used to obtain metadata such as solubility (Henry's law coefficients), volatility, and other parameters.

#### Species Information

- [CRACMM species in markdown](cracmm1_aq_species_table.md)
- [Properties of species emitted in CRACMM](CRACMM2017_emiss_properties.csv) based on 2017 U.S. anthropogenic and biomass burning emissions as used by Pye et al. 2022
- [Metadata file in csv](cracmm1_aq_metadata.csv) describing species and their properties in CMAQv5.4. Properties include:
  * Species name
  * Description
  * Phase (G=gas, P=particle, GP=gas and particle)
  * Stable ("Yes" indicates species with sufficient lifetime to warrant transport in the host model)
  * Molecular weight (g/mol)
  * Representative (compound that best represents the species)
  * SMILES (for representative compound structure)
  * Henry's Law Coefficient for wet removal processes (M/atm)
  * Enthalpy of solvation used to adjust the Henry's Law Coefficient for temperature (K)
  * Density of species in the particulate phase (kg m<sup>-3</sup>})
  * Hygroscopicity parameter, &kappa, for organic aerosol species (water uptake on inorganic species should be calculated with a thermodynamic model such as E-AIM, ISORROPIA, or similar)
  * Saturation concentration (&mu;g m<sup>-3</sup>)
  * Enthalpy of vaporization used to adjust the saturation concentration for temperature (J/mol)
  * Organic matter to organic carbon ratio for organic aerosol (g/g)






