CRACMM3M Species Table

Gas (G) and particle (P) species from the namelists. SMILES link to representative structures in the EPA Chemicals Dashboard (if available).

Note that for each particulate species in CMAQ, a letter will be appended to the name to designate the size, or mode, of the aerosol being represented: I = Aitken mode, J = Accumulation mode, K = Coarse mode. Prepending of a species with a V or A in CMAQ or the chemical mechanism files indicates the species resides in the gas or particulate phase. 

Note special handling for aerosol nitrate and chlorine ions (ANO3, ACL) to avoid overlap with radials in the gas-phase. CRACMM2 also has special handling for glyoxal aerosol (AGLY), and CRACMM3 has special handling for bromine aerosol (ABR) due to name overlaps.

 <sub>Species</sub> | <sub>Description</sub> | <sub>Phase</sub> | <sub>Molecular Weight (g/mol)</sub> | <sub>Explicit/ Lumped</sub> | <sub>Representative Structure</sub> | <sub>SMILES</sub> 
 ----- | ----- | ----- | ----- | ----- | ----- | ----- 
ACD|Acetaldehyde |G|44.0|E|Acetaldehyde|[CC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5039224)
ACE|Acetylene |G|26.0|E|Acetylene|[C#C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6026379)
ACO3|Acetyl peroxy radicals|G|75.0|E|Acetylperoxy|[CC\(=O\)O\[O\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID40957943)
ACRO|Acrolein|G|56.1|E|Acrolein|[C=CC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5020023)
ACT|Acetone|G|58.0|E|Acetone|[CC\(C\)=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8021482)
ACTP|Peroxy radicals formed from ACT|G|89.0|E|(2-oxopropyl)peroxy|CC\(=O\)CO\[O\]
ADCN|Aromatic-NO3 adduct from PHEN|G|155.0|L|4-oxocyclohex-2-en-1-yl nitrate|OC1=C\[C\]C\(O\[N+\]\(\[O-\]\)=O\)C=C1
ADDC|Aromatic-HO adduct from CSL|G|125.0|L|3-methyl-5-oxocyclohex-3-en-1-yloxidanyl|CC1=CC\(O\)=CC\(\[O\]\)C1
AL|Aluminum ion|P|27.0|E|Aluminum ion|[\[Al+3\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID70912343)
ALD|C3 and higher aldehydes|G|58.0|L|Propanal|[CCC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2021658)
API|Alpha-pinenes and other cyclic terpenes with one double bond|G|136.4|L|alpha-pinene|[CC1=CCC2CC1C2\(C\)C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4026501)
APINP1|Peroxy radicals from API+NO3 that do not undergo autoxidation|G|230.0|L|[2,6,6-trimethyl-3-(nitrooxy)bicyclo[3.1.1]heptan-2-yl]peroxy|\[O\]OC1\(C\)C\(ON\(=O\)=O\)CC2CC1C2\(C\)C
APINP2|Peroxy radicals from API+NO3 that undergo autoxidation|G|294.0|L|[4-hydroperoxy-6-(2-hydroperoxypropan-2-yl)-3-methyl-2-(nitrooxy)cyclohex-3-en-1-yl]peroxy|CC1=C\(CC\(C\(O\[O\]\)C1\(ON\(=O\)=O\)\)C\(C\)\(C\)OO\)OO
APIP1|Peroxy radicals from API+OH that do not undergo autoxidation|G|185.0|L|{3-hydroxy-2,6,6-trimethylbicyclo[3.1.1]heptan-2-yl}peroxy|\[O\]OC1\(C\)C\(O\)CC2CC1C2\(C\)C
APIP2|Peroxy radicals from API+OH that undergo autoxidation|G|249.0|L|[4-hydroperoxy-6-(2-hydroperoxypropan-2-yl)-2-hydroxy-3-methylcyclohex-3-en-1-yl]peroxy|CC1=C\(CC\(C\(O\[O\]\)C1O\)C\(C\)\(C\)OO\)OO
ABR| Bromide ion|P|79.9|E|Bromide ion|[\[Br-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6043967)
ACL|Chloride ion|P|35.5|E|Chloride ion|[\[Cl-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6043969)
ANO3|Nitrate ion|P|62.0|E|Nitrate ion|[\[N+\]\(=O\)\(\[O-\]\)\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5024217)
BAL1|Peroxy radicals formed from BALD |G|109.1|L|Phenylperoxy radical|\[O\]OC1=CC=CC=C1
BAL2|Peroxy radicals formed from BALD |G|93.1|L|phenoxy radical|\[O\]C1=CC=CC=C1
BALD|Benzaldehyde and other aromatic aldehydes|G|106.0|L|Benzaldehyde|[O=CC1=CC=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8039241)
BALP|Peroxy radicals formed from BALD |G|137.0|L|benzoylperoxy|O=C\(O\[O\]\)C1=CC=CC=C1
BDE13|1,3-butadiene|G|54.1|E|1,3-Butadiene|[C=CC=C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3020203)
BDE13P|Peroxy radicals from BDE13|G|103.0|L|(1-hydroxybut-3-en-2-yl)peroxy|C=CC\(O\[O\]\)CO
BEN|Benzene|G|78.11|E|Benzene|[C1=CC=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3039242)
BENP|Peroxy radicals formed from benzene|G|159.12|L|{8-hydroxy-6,7-dioxabicyclo[3.2.1]oct-3-en-2-yl}peroxy|\[O\]OC1C=CC2OOC1C2O
BR| Bromine atom|G|79.9|E|Bromine atom|[\[Br\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID201014232)
BR2| Bromine|G|159.8|E|Bromine|[BrBr](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1035238)
BRCL| Bromine chloride|G|115.4|E|Bromine chloride|[BrCl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4035259)
BRNO| Nitrosyl bromide|G|109.9|E|Nitrosyl bromide|[BrN=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID90158701)
BRNO2| Nitryl bromide|G|125.9|E|Nitryl bromide|BrN\(=O\)=O
BRNO3| Bromine nitrate|G|141.9|E|Bromine nitrate|[BrON\(=O\)=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID90960821)
BRO| Bromine monoxide|G|95.9|E|Bromine monoxide|[\[O\]Br](https://comptox.epa.gov/dashboard/chemical/details/DTXSID201315575)
CA|Calcium ion|P|40.1|E|Calcium ion|[\[Ca++\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID7037638)
CH2BR2|	Dibromomethane|G|173.8|E|Dibromomethane|[BrCBr](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4021557)
CH2BRCL| Bromochloromethane|G|129.4|E|Bromochloromethane|[ClCBr](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4021503)
CH2I2| Methylene iodide|G|267.8|E|Methylene iodide|[ICI](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4058784)
CH2IBR|	Bromoiodomethane|G|220.8|E|Bromoiodomethane|[ICBr](https://comptox.epa.gov/dashboard/chemical/details/DTXSID50204233)
CH2ICL|	Chloroiodomethane|G|176.4|E|Chloroiodomethane|[ClCI](https://comptox.epa.gov/dashboard/chemical/details/DTXSID50208034)
CH3I| Iodomethane|G|141.9|E|Iodomethane|[CI](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0024187)
CHBR2CL| Dibromochloromethane|G|208.3|E|Dibromochloromethane|[ClC\(Br\)Br](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1020300)
CHBR3| Bromoform|G|252.7|E|Bromoform|[BrC\(Br\)Br](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1021374)
CHBRCL2| Bromodichloromethane|G|163.9|E|Bromodichloromethane|[ClC\(Cl\)Br](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1020198)
CHO|Phenoxy radical formed from CSL|G|107.0|L|(2-methylphenyl)oxidanyl|CC1=CC=CC=C1\[O\]
CL| Atomic chlorine|G|35.5|E|Chlorine atom|[\[Cl\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID801014230)
CL2| Molecular chlorine |G|71.0|E|Chlorine|[ClCl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1020273)
CL2O2| Chloryl chloride|G|103.0|E|Dichlorine dioxide|[ClOOCl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID001310193)
CLNO| Nitrosyl chloride|G|65.5|E|Nitrosyl chloride|[ClN=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5051945)
CLNO2| Nitryl chloride|G|81.5|E|Nitryl chloride|[ClN\(=O\)=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID601317066)
CLNO3| Chlorine nitrate|G|97.5|E|Chlorine nitrate|[\[O-\]\[N+\]\(=O\)OCl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID00163043)
CLO| Chlorine monoxide|G|51.5|E|Chlorine monoxide|[\[O-\]Cl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8073136)
CLOO| Chlorine superoxide|G|67.5|E|Chlorine dioxide|[O=Cl\[O\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5023958)
CO|Carbon monoxide|G|28.0|E|Carbon monoxide|[\[C-\]#\[O+\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5027273)
CO2|Carbon dioxide|G|44.0|E|Carbon dioxide|[O=C=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4027028)
CORS|Primary unspeciated coarse PM|P|100.0|L|Coarse PM|
CSL|Cresol and other hydroxy substituted aromatics |G|108.14|L|o-cresol|[CC1=C\(O\)C=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8021808)
DCB1|Unsaturated dicarbonyls|G|98.0|L|2-methylbut-2-enedial|O=CC=C\(C\)C=O
DCB2|Unsaturated dicarbonyls|G|112.1|L|2-methyl-4-oxopent-2-enal|O=CC\(=CC\(=O\)C\)C
DCB3|Unsaturated dicarbonyls|G|84.0|L|but-2-enedial|O=CC=CC=O
EBZ|Ethylbenzene|G|106.2|L|Ethylbenzene|[CCC1=CC=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3020596)
EBZP|Peroxy radicals from EBZ|G|187.17|L|{5-ethyl-8-hydroxy-6,7-dioxabicyclo[3.2.1]oct-3-en-2-yl}peroxy|\[O\]OC1C=CC2\(CC\)OOC1C2O
EC|Elemental carbon|P|12.0|L|Carbon|\[C\]
ECH4|Methane|G|16.0|E|Methane|[C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8025545)
ELHOM|Extremely-low volatility highly oxygenated molecules from terpenes|GP|402.0|L|6-hydroperoxy-7-({3-hydroxy-2,6,6-trimethylbicyclo[3.1.1]heptan-2-yl}peroxy)-3,3,6-trimethyl-tetrahydro-3aH-1,2-benzodioxol-5-ol|OC1CC2C\(OOC2\(C\)C\)C\(OOC3\(C\)C4C\(C\)\(C\)C\(C4\)CC3O\)C1\(C\)OO
EOH|Ethanol|G|46.1|E|Ethanol|[CCO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID9020584)
ETE|ethene |G|28.1|E|Ethylene|[C=C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1026378)
ETEG|Ethylene glycol|G|62.1|E|Ethylene glycol|[OCCO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8020597)
ETEP|Peroxy radicals formed from ETE|G|77.0|E|(2-hydroxyethyl)peroxy|OCCO\[O\]
ETH|ethane |G|30.1|E|Ethane|[CC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6026377)
ETHP|Peroxy radicals formed from ethane and other species |G|61.0|L|Ethylperoxy|[CCO\[O\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID90953652)
FE|Iron ion|P|55.8|E|Iron ion|[\[Fe++\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4042672)
FURAN|Furans and other dienes|G|96.1|L|Furfural|[O=CC1=CC=CO1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1020647)
FURANO2|Peroxy radicals from FURAN oxidation|G|145.1|L|(2-formyl-5-hydroxy-5H-furan-2-yl)peroxy|OC1C=CC\(O1\)\(O\[O\]\)\(C=O\)
FURANONE|Ring-retaining ketone product from FURAN oxidation|G|100.1|L|2-hydroxy-2H-furan-5-one|[C1=CC\(=O\)OC1O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID10930763)
GLY|Glyoxal and glycoaldehydes |G|58.0|L|Glyoxal|[O=CC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5025364)
GLYOLIG|SOA from reactive uptake of glyoxal on particles|P|66.4|L|2-(4,5-dihydroxy-1,3-dioxolan-2-yl)-1,3-dioxolane-4,5-diol|OC2OC\(C1OC\(O\)C\(O\)O1\)OC2O
H2O|Water associated with particulate inorganic compounds|P|18.0|E|Water|[O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6026296)
H2O2|Hydrogen peroxide|G|34.0|E|Hydrogen peroxide|[OO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2020715)
H3OP|Hydronium ion tracer|P|19.0|E|Hydronium ion|[\[OH3+\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID20893597)
HBR| Hydobromic acid|G|80.9|E|Hydobromic acid|[Br](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0029713)
HC10|Alkanes and other species with HO rate constant greater than 6.8x10<sup>-12</sup> cm<sup>3</sup> s<sup>-1</sup>|G|142.28|L|Decane|[CCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6024913)
HC10P|Peroxy radicals formed from HC10 |G|173.27|L|Decan-3-ylperoxy|CCCCCCCC\(CC\)O\[O\]
HC10P2|Hydroxy peroxy radicals from HC10P alkoxy product|G|189.27|L|(8-hydroxydecan-5-yl)peroxy|CCCCC\(O\[O\]\)CCC\(O\)CC
HC3|Alkanes and other species with HO rate constant less than 3.4x10<sup>-12</sup> cm<sup>3</sup> s<sup>-1</sup> |G|44.1|L|Propane|[CCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5026386)
HC3P|Peroxy radicals formed from HC3|G|75.0|L|Isopropyl peroxy|CC\(C\)O\[O\]
HC5|Alkanes and other species with HO rate constant between 3.4x10<sup>-12</sup> and 6.8x10<sup>-12</sup> cm<sup>3</sup> s<sup>-1</sup> |G|72.1|L|Pentane|[CCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2025846)
HC5P|Peroxy radicals formed from HC5|G|103.0|L|Pentan-3-ylperoxy|CCC\(O\[O\]\)CC
HCHO|Formaldehyde |G|30.0|E|Formaldehyde|[C=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID7020637)
HCL|Hydrochloric acid|G|36.0|E|Hydrochloric acid|[Cl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2020711)
HCOBR| Formyl bromide|G|108.9|E|Formyl bromide|[BrC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID20227994)
HCOCL| Formyl chloride|G|64.5|E|Formyl chloride|[ClC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID30180344)
HI| Hydrogen iodide|G|127.9|E|Hydrogen iodide|[I](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2044349)
HKET|Hydroxy ketone |G|74.0|L|Hydroxy acetone|[CC\(=O\)CO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8051590)
HMS| Hydroxymethanesulfonate ion|P|111.1|E|Hydroxymethanesulfonate ion|[C\(O\)S\(=O\)\(=O\)\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID20225910)
HNO3|Nitric acid|G|63.0|E|Nitric acid|[\[N+\]\(=O\)\(O\)\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5029685)
HNO4|Pernitric acid |G|79.0|E|Hydroxy nitrate|[\[N+\]\(=O\)\(\[O-\]\)OO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID201030501)
HO|Hydroxy radical|G|17.0|E|Hydroxyl radical|\[OH\]
HO2|Hydroperoxy radical|G|33.0|E|Hydroperoxy|[O\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID30894777)
HOBR| Hypobromous acid|G|96.9|E|Hypobromous acid|[OBr](https://comptox.epa.gov/dashboard/chemical/details/DTXSID701024864)
HOCL| Hypochlorous acid|G|52.5|E|Hypochlorous acid|[OCl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3036737)
HOI| Hypoiodous acid|G|143.9|E|Hypoiodous acid|[OI](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8042050)
HOM|Highly oxygenated molecules from terpenes|GP|250.0|L|6,7-dihydroperoxy-3,3,6-trimethyl-tetrahydro-3aH-1,2-benzodioxol-5-ol|OC1CC2C\(OOC2\(C\)C\)C\(OO\)C1\(C\)OO
HONIT|Second generation monoterpene nitrates|GP|265.0|L|2-(3-hydroperoxy-4,5-dihydroxy-4-methylcyclohexyl)propan-2-yl nitrate|CC\(C\)\(O\[N+\]\(\[O-\]\)=O\)C1CC\(O\)C\(C\)\(O\)C\(C1\)OO
HONO|Nitrous acid |G|47.0|E|Nitrous acid|[N\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID7064813)
I| Atmomic iodine|G|126.9|E|Atmomic iodine|[\[I\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID501014231)
I2| Iodine|G|253.8|E|Iodine|[II](https://comptox.epa.gov/dashboard/chemical/details/DTXSID7034672)
I2O2| Diiodine dioxide|G|285.8|E|Diiodine dioxide|O=I\(=O\)I
I2O3| Diiodine trioxide|G|301.8|E|Diiodine trioxide|O=IOI\(=O\)
I2O4| Diiodine tetroxide|G|317.8|E|Diiodine Tetroxide|O=IOI\(=O\)=O
IBR| Iodine bromide|G|206.8|E|Iodine bromide|[IBr](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2064862)
ICL| Iodine chloride|G|162.4|E|Iodine chloride|[ICl](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1064879)
IEPOX|isoprene epoxydiols |G|118.1|E|Isoprene epoxydiol|OCC1OC1\(C\)CO
IEPOXP|IEPOX intermediate (tracking species)|G|118.1||NA|
INALD|Isoprene nitrates|G|195.1|L|2-hydroperoxy-4-hydroxy-3-methyl-3-(nitrooxy)butanal|CC\(CO\)\(O\[N+\]\(=O\)O\)C\(C=O\)OO
INO| Nitrosyl iodide|G|156.9|E|Nitrosyl iodide|[IN=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID80207297)
INO2| Iodine nitrite|G|172.9| E|Iodine nitrite|IN\(=O\)=O
INO3| Iodine nitrate|G|188.9|E|Iodine nitrate|[ION\(=O\)=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID001336624)
IO| Iodine monoxide|G|142.9|E|Iodine monoxide|[\[O\]I](https://comptox.epa.gov/dashboard/chemical/details/DTXSID101316449)
IPX|Isoprene tetrafunctional compounds|G|150.1|L|3-(1-hydroperoxy-2-hydroxypropan-2-yl)oxiran-2-ol|CC\(O\)\(COO\)C1OC1O
ISHP|Beta-hydroxy hydroperoxides from ISOP+HO2|G|118.0|L|2-hydroperoxy-2-methylbut-3-en-1-ol|C=CC\(OO\)\(CO\)C
ISO|Isoprene |G|68.1|E|Isoprene|[CC\(=C\)C=C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2020761)
ISO3NOS|Non-sulfated SOA from IEPOX uptake|P|136.2|L|2-methylbutane-1,2,3,4-tetrol|C\(O\)C\(O\)\(C\)C\(O\)CO
ISO3OS|Organosulfate SOA from IEPOX uptake|P|216.2|L|(1,3,4-trihydroxy-2-methylbutan-2-yl)oxysulfonic acid|C\(O\)C\(OS\(O\)\(=O\)\(=O\)\)\(C\)C\(O\)CO
ISO4|Multifunctional product from heterogeneous uptake of IPX|P|168.1|L|4-hydroperoxy-3-methylbutane-1,1,2,3-tetrol|CC\(O\)\(COO\)C\(O\)C\(O\)O
ISO5|Multifunctional product from heterogeneous uptake of INALD|P|150.1|L|2-hydroperoxy-3,4-dihydroxy-3-methylbutanal|CC\(O\)\(CO\)C\(OO\)C=O
ISON|Beta-hydroxyalkylnitrates from ISOP+NO alkylnitrates from ISO+NO3|G|147.0|L|2-methyl-2-(nitrooxy)but-3-en-1-ol|OCC\(C\)\(C=C\)ON\(=O\)=O
ISONP|Isoprene nitrate-derived peroxy radicals|G|162.1|L|[(2E)-3-methyl-4-(nitrooxy)but-2-en-1-yl]peroxy|C/C\(=C\CO\[O\]\)CON\(=O\)=O
ISOP|Peroxy radicals formed from ISO+HO |G|117.0|L|(1-hydroxy-3-methylbut-3-en-2-yl)peroxy|OCC\(O\[O\]\)C\(C\)=C
K|Potassium ion|P|39.1|E|Potassium ion|[\[K+\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID9042671)
KET|ketones|G|86.0|L|Diethylketone|[CCC\(=O\)CC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6021820)
KETP|Peroxy radicals formed from KET|G|117.0|L|(3-oxopentan-2-yl)peroxy|CCC\(C\(C\)O\[O\]\)=O
LIM|d-limonene and other cyclic diene-terpenes |G|136.3|L|D-Limonene|[CC\(=C\)\[C@@H\]1CCC\(C\)=CC1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1020778)
LIMAL|Limonene aldehyde and similar LIM-derived aldehydes|G|168.0|L|Limonaldehyde|O=CCC\(CCC\(=O\)C\)C\(=C\)C
LIMALP|Peroxy radicals from LIMAL|G|217.0|L|[1-hydroxy-2-methyl-5-oxo-3-(3-oxobutyl)pentan-2-yl]peroxy|O=CCC\(CCC\(=O\)C\)C\(C\)\(CO\)O\[O\]
LIMNP1|Peroxy radicals from LIM+NO3 that do not undergo autoxidation|G|230.0|L|[1-methyl-2-(nitrooxy)-4-(prop-1-en-2-yl)cyclohexyl]peroxy|\[O-\]\[N+\]\(=O\)OC1CC\(CCC1\(C\)O\[O\]\)C\(=C\)C
LIMNP2|Peroxy radicals from LIM+NO3 that undergo autoxidation|G|294.0|L|{6-hydroperoxy-4-[2-hydroperoxy-1-(nitrooxy)propan-2-yl]-1-methylcyclohex-2-en-1-yl}peroxy|C\(OO\)1C\(O\[O\]\)\(C\)C=CC\(C\(OO\)\(C\)C\(ON\(=O\)=O\)\)C1
LIMP1|Peroxy radicals from LIM+OH that do not undergo autoxidation|G|185.0|L|[2-hydroxy-1-methyl-4-(prop-1-en-2-yl)cyclohexyl]peroxy|\[O\]OC1\(C\)CCC\(CC1O\)C\(=C\)C
LIMP2|Peroxy radicals from LIM+OH that undergo autoxidation|G|249.0|L|[6-hydroperoxy-4-(2-hydroperoxy-1-hydroxypropan-2-yl)-1-methylcyclohex-2-en-1-yl]peroxy|C\(OO\)1C\(O\[O\]\)\(C\)C=CC\(C\(OO\)\(C\)CO\)C1
MACP|Peroxy radicals formed from MACR+HO|G|101.0|L|(2-methylprop-2-enoyl)peroxy|CC\(=C\)C\(=O\)O\[O\]
MACR|methacrolein and other C4 aldehydes |G|70.0|L|Methacrolein|[CC\(=C\)C=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0052540)
MAHP|Hydroperoxides from MACP+HO2 |G|102.0|L|2-methylprop-2-eneperoxoic acid|C=C\(C\)C\(OO\)=O
MCP|Peroxy radical formed from MACR + HO which does not form MPAN|G|119.0|L|(1-hydroxy-2-methyl-3-oxopropan-2-yl)peroxy|OCC\(C\)\(O\[O\]\)C=O
MCT|Methyl catechol|G|110.11|L|Catechol|[OC1=C\(O\)C=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3020257)
MCTO|Alkoxy radical formed from MCT+HO and MCT+NO3|G|109.0|L|(2-hydroxyphenyl)oxidanyl|\[O\]C1=CC=CC=C1O
MCTP|Radical formed fro MCT+O3 reaction |G|125.0|L|(2-hydroxyphenyl)peroxy|\[O\]OC1=CC=CC=C1O
MEK|Methyl ethyl ketone|G|72.1|E|Methyl ethyl ketone|[CCC\(C\)=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3021516)
MEKP|Peroxy radicals formed from MEK|G|103.0|L|(3-oxobutyl)peroxy|\[O\]OCCC\(=O\)C
MG|Magnesium ion|P|24.3|E|Magnesium ion|\[Mg++\]
MGLY|Methylglyoxal and other alpha-carbonyl aldehydes |G|72.0|L|Methyl glyoxal|[CC\(=O\)C=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0021628)
MN|Manganese ion|P|54.9|L|Manganese ions|[\[Mn++\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID00167687)
MO2|Methyl peroxy radical|G|47.0|E|Methylperoxy|[CO\[O\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID10944007)
MOH|Methanol |G|32.0|E|Methanol|[CO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2021731)
MPAN|Peroxymethacryloylnitrate and other higher peroxyacylnitrates from isoprene oxidation|G|147.1|L|Peroxymethacryloyl nitrate|[O=N\(=O\)OOC\(=O\)C\(=C\)C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID10236878)
MTN1|Monoterpene derived species with C* 1e-1 &#956;g m<sup>-3</sup>|GP|262.0|L|3-[carboxy(hydroxy)methyl]cyclobutane-1,2,2-tricarboxylic acid|OC\(C1CC\(C\(O\)=O\)C1\(C\(O\)=O\)C\(O\)=O\)C\(O\)=O
MVK|Methyl vinyl ketone|G|70.1|E|Methyl vinyl ketone|[CC\(=O\)C=C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3025671)
MVKP|Peroxy radicals formed from MVK|G|119.0|L|(2-hydroxy-3-oxobutyl)peroxy|CC\(=O\)C\(O\)CO\[O\]
N2O5|Dinitrogen pentoxide |G|108.0|E|Dinitrogen pentoxide|[\[N+\]\(=O\)\(\[O-\]\)O\[N+\]\(=O\)\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID90143672)
NA|Sodium ion|P|23.0|E|Sodium ion|[\[Na+\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8037671)
NAPH|Naphthalene and other PAHs|G|128.17|L|Naphthalene|[C1=CC2=CC=CC=C2C=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8020913)
NAPHP|Peroxy radicals from NAPH oxidation|G|209.17|L|{8-hydroxy-10,11-dioxatricyclo[7.2.1.0^{2,7}]dodeca-2,4,6-trien-12-yl}peroxy|C12=CC=CC=C1C3OOC\(C3O\[O\]\)C2\(O\)
NH3|Ammonia|G|17.0|E|Ammonia|[N](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0023872)
NH4|Ammonium ion|P|18.0|E|Ammonium ion|[\[NH4+\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5043974)
NO|Nitric oxide |G|30.0|E|Nitric oxide|[\[N\]=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1020938)
NO2|Nitrogen dioxide |G|46.0|E|Nitrogen dioxide|[N\(=O\)\[O\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID7020974)
NO2PIJ| Dioxidonitrogen|G|46.0| E|Dioxidonitrogen|\[N+\]\(=O\)=O
NO2PK| Dioxidonitrogen|G|46.0| E|Dioxidonitrogen|\[N+\]\(=O\)=O
NO3|Nitrogen trioxide|G|62.0|E|Nitrate radical|\[O\]N\(=O\)=O
NUM|Number of particles|P|1.0|L|Number of particles|
O1D|Excited state oxygen atom, O(1D) |G|16.0|E|Excited oxygen|[\[O\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID00170378)
O3|Ozone|G|48.0|E|Ozone|[\[O-\]\[O+\]=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0021098)
O3P|Ground state oxygen atom, O(3P)|G|16.0|E|Ground state oxygen|[\[O\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID00170378)
OBRO| Bromine dioxide|G|111.9|E|Bromine dioxide|[O=\[Br\]=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID401028281)
OCLO| Chlorine dioxide |G|67.5|E|Chlorine dioxide isomar|O=Cl\[O\]
OIO| Iodine dioxide|G|158.9|E|Iodine dioxide|O=I\(=O\)
OLI|Internal alkenes |G|70.1|L|2-Methyl-2-butene|[CC=C\(C\)C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8027165)
OLIP|Peroxy radicals formed from OLI|G|119.0|L|(3-hydroxy-2-methylbutan-2-yl)peroxy|\[O\]OC\(C\)\(C\)C\(C\)O
OLND|NO3-alkene adduct reacting via decomposition |G|136.0|L|[1-(nitrooxy)propan-2-yl]peroxy|CC\(O\[O\]\)CO\[N+\]\(\[O-\]\)=O
OLNN|NO3-alkene adduct reacting to form carbonitrates + HO2 |G|136.0|L|[1-(nitrooxy)propan-2-yl]peroxy|CC\(O\[O\]\)CO\[N+\]\(\[O-\]\)=O
OLT|Terminal alkenes |G|42.0|L|1-Propene|[CC=C](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5021205)
OLTP|Peroxy radicals formed from OLT|G|91.0|L|(1-hydroxypropan-2-yl)peroxy|CC\(CO\)O\[O\]
ONIT|Organic nitrates|G|119.0|L|Butan-2-yl nitrate|[CCC\(C\)O\[N+\]\(=O\)\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID00871813)
OP1|Methyl hydrogen peroxide |G|48.0|E|Methyl hydroperoxide|[COO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID10184401)
OP2|Higher organic peroxides |G|62.0|L|Ethyl hydroperoxide|[CCOO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID70184402)
OP3|Semivolatile organic peroxide|GP|176.2|L|5-hydroperoxy-6-hydroxyoctan-3-one|CCC\(=O\)CC\(OO\)C\(O\)CC
OPB|Terpene-derived peroxides|G|186.2|L|2-hydroperoxy-2,6,6-trimethylbicyclo[3.1.1]heptan-3-ol|OOC1\(C\)C\(O\)CC2CC1C2\(C\)C
ORA1|Formic acid|G|46.0|E|Formic acid|[OC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2024115)
ORA2|Acetic acid and higher acids |G|60.2|L|Acetic acid|[CC\(O\)=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5024394)
ORAP|Peroxy radical formed from ORA2 + HO reaction|G|91.0|L|(carboxymethyl)peroxy|\[O\]OCC\(=O\)O
ORGC|SOA from cloud processing of GLY and MGLY|P|177.0|L|2-(4,5-dihydroxy-1,3-dioxolan-2-yl)-1,3-dioxolane-4,5-diol|OC2OC\(C1OC\(O\)C\(O\)O1\)OC2O
ORGH2O|Water associated with particulate organic compounds|P|18.0|E|Water|[O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6026296)
OTHR|Primary unspeciated fine PM|P|200.0|L|Unspeciated PM|
PAA|Peroxyacetic acids and higher analogs|G|76.0|L|Peroxyacetic acid|[CC\(=O\)OO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1025853)
PAN|Peroxyacetyl nitrate and higher saturated PANs |G|121.0|L|Peroxyacetyl nitrate|[CC\(=O\)OON\(=O\)=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4062301)
PHEN|phenol and benzene diols|G|94.11|E|Phenol|[OC1=CC=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5021124)
PINAL|Pinonaldehyde and similar APIN-derived aldehydes|G|168.0|L|Pinonaldehyde|O=CCC1CC\(C\(=O\)C\)C1\(C\)C
PINALP|Peroxy radicals from PINAL oxidation|G|199.0|L|[3-acetyl-2,2-dimethyl-1-(2-oxoethyl)cyclobutyl]peroxy|O=CCC1\(O\[O\]\)CC\(C\(=O\)C\)C1\(C\)C
PNCOM|Primary non-carbon organic matter (legacy)|P|220.0|L|Non-carbon organic matter|
POC|Primary organic carbon (legacy)|P|220.0|L|Organic carbon|
PPN|Peroxypropionyl nitrate|G|135.0|E|Peroxypopionyl nitrate|[CCC\(=O\)OO\[N+\]\(=O\)\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID90206675)
PROG|Propylene glyocol and other 3 carbon dialcohols|G|76.1|E|1,2-Propylene glycol|[CC\(O\)CO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0021206)
RCO3|Higher saturated acyl peroxy radicals|G|89.0|L|Propanoylperoxy|CCC\(=O\)O\[O\]
ROCIOXY|Intermediate volatility oxygenated ROC species (directly emitted)|G|247.0|L|Decamethylcyclopentasiloxane|[C\[Si\]1\(C\)O\[Si\]\(C\)\(C\)O\[Si\]\(C\)\(C\)O\[Si\]\(C\)\(C\)O\[Si\]\(C\)\(C\)O1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1027184)
ROCN1ALK|Alkane-like ROC species with C* of 10<sup>-1</sup> &#956;g m<sup>-3</sup>|GP|408.8|L|5,9-Dimethylheptacosane|[CCCCCCCCCCCCCCCCCCC\(C\)CCCC\(C\)CCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID40823452)
ROCN1OXY1|Oxygenated ROC species with C* of 10<sup>-1</sup> &#956;g m<sup>-3</sup> and O:C of 0.1|GP|312.5|L|Arachidic Acid|[CCCCCCCCCCCCCCCCCCCC\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1060134)
ROCN1OXY3|Oxygenated ROC species with C* of 10<sup>-1</sup> &#956;g m<sup>-3</sup> and O:C of 0.3|GP|230.3|L|DODECANEDIOIC ACID|[C\(CCCCCC\(=O\)O\)CCCCC\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3027297)
ROCN1OXY6|Oxygenated ROC species with C* of 10<sup>-1</sup> &#956;g m<sup>-3</sup> and O:C of 0.6|GP|190.2|L|2-hydroxy-octanedioic acid|C\(CCC\(C\(=O\)O\)O\)CCC\(=O\)O
ROCN2ALK|Alkane-like ROC species with C* of 10<sup>-2</sup> &#956;g m<sup>-3</sup>|GP|422.83|L|Triacontane|[CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0060935)
ROCN2OXY2|Oxygenated ROC species with C* of 10<sup>-1</sup> &#956;g m<sup>-3</sup> and O:C of 0.2|GP|282.4|L|12(S)-hydroxy-16-Heptadecynoic Acid|C#CCCC\[C@H\]\(CCCCCCCCCCC\(=O\)O\)O
ROCN2OXY4|Oxygenated ROC species with C* of 10<sup>-2</sup> &#956;g m<sup>-3</sup> and O:C of 0.4|GP|232.3|L|2-HYDROXYUNDECANEDIOIC ACID|[C\(CCCCC\(=O\)O\)CCCC\(C\(=O\)O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID90726525)
ROCN2OXY8|Oxygenated ROC species with C* of 10<sup>-2</sup> &#956;g m<sup>-3</sup> and O:C of 0.8|GP|194.2|L|3,4,5,6,7-Pentahydroxyheptan-2-one|[CC\(=O\)C\(C\(C\(C\(CO\)O\)O\)O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID80956455)
ROCP0ALK|Alkane-like ROC species with C* of 1 &#956;g m<sup>-3</sup>|GP|394.77|L|11-Methylheptacosane|[CCCCCCCCCCCCCCCCC\(C\)CCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID40333900)
ROCP0OXY2|Oxygenated ROC species with C* of 1 &#956;g m<sup>-3</sup> and O:C of 0.2|GP|242.4|L|3-oxotetradecanoic acid|[CCCCCCCCCCCC\(=O\)CC\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID10332384)
ROCP0OXY4|Oxygenated ROC species with C* of 1 &#956;g m<sup>-3</sup> and O:C of 0.4|GP|202.3|L|DECANEDIOIC ACID|[C\(CCCCC\(=O\)O\)CCCC\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID7026867)
ROCP1ALK|Alkane-like ROC species with C* of 10 &#956;g m<sup>-3</sup>|GP|380.75|L|Heptacosane|[CCCCCCCCCCCCCCCCCCCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6058637)
ROCP1ALKP|Peroxy radicals from ROCP1ALK oxidation|G|411.74|L|heptacosan-3-ylperoxy|CCCCCCCCCCCCCCCCCCCCCCCCC\(CC\)O\[O\]
ROCP1ALKP2|Hydroxy peroxy radicals from ROCP1ALK alkoxy product|G|427.73|L|(3-hydroxyheptacosan-6-yl)peroxy|CCCCCCCCCCCCCCCCCCCCCC\(O\[O\]\)CCC\(O\)CC
ROCP1OXY1|Oxygenated ROC species with C* of 10 &#956;g m<sup>-3</sup> and O:C of 0.1|GP|270.5|L|HEPTADECANOIC ACID|[CCCCCCCCCCCCCCCCC\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5021596)
ROCP1OXY3|Oxygenated ROC species with C* of 10 &#956;g m<sup>-3</sup> and O:C of 0.3|GP|202.3|L|11-hydroxyundecanoic acid|[C\(CCCCCO\)CCCCC\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID40190136)
ROCP2ALK|Alkane-like ROC species with C* of 10<sup>+2</sup> &#956;g m<sup>-3</sup>|GP|338.66|L|Tetracosane|[CCCCCCCCCCCCCCCCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8060955)
ROCP2ALKP|Peroxy radicals from ROCP2ALK oxidation|G|369.65|L|tetracosan-3-ylperoxy|CCCCCCCCCCCCCCCCCCCCCC\(CC\)O\[O\]
ROCP2ALKP2|Hydroxy peroxy radicals from ROCP2ALK alkoxy product|G|385.65|L|(3-hydroxytetracosan-6-yl)peroxy|CCCCCCCCCCCCCCCCCCC\(O\[O\]\)CCC\(O\)CC
ROCP2OXY2|Oxygenated ROC species with C* of 10<sup>+2</sup> &#956;g m<sup>-3</sup> and O:C of 0.2|GP|200.3|L|Dodecanoic Acid|[CCCCCCCCCCCC\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5021590)
ROCP3ALK|Alkane-like ROC species with C* of 10<sup>+3</sup> &#956;g m<sup>-3</sup>|GP|296.58|L|Heneicosane|[CCCCCCCCCCCCCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID9047097)
ROCP3ALKP|Peroxy radicals from ROCP3ALK oxidation|G|327.57|L|henicosan-3-ylperoxy|CCCCCCCCCCCCCCCCCCC\(CC\)O\[O\]
ROCP3ALKP2|Hydroxy peroxy radicals from ROCP3ALK alkoxy product|G|343.57|L|(3-hydroxyhenicosan-6-yl)peroxy|CCCCCCCCCCCCCCCC\(O\[O\]\)CCC\(O\)CC
ROCP3OXY2|Oxygenated ROC species with C* of 10<sup>+3</sup> &#956;g m<sup>-3</sup> and O:C of 0.2|GP|186.3|L|11-hydroxyundecanal|C\(CCCCCO\)CCCCC=O
ROCP4ALK|Alkane-like ROC species with C* of 10<sup>+4</sup> &#956;g m<sup>-3</sup>|G|254.5|L|Octadecane|[CCCCCCCCCCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID9047172)
ROCP4ALKP|Peroxy radicals from ROCP4ALK oxidation|G|285.49|L|octadecan-3-ylperoxy|CCCCCCCCCCCCCCCC\(CC\)O\[O\]
ROCP4ALKP2|Hydroxy peroxy radicals from ROCP4ALK alkoxy product|G|301.49|L|(3-hydroxyoctadecan-6-yl)peroxy|CCCCCCCCCCCCC\(O\[O\]\)CCC\(O\)CC
ROCP4OXY2|Oxygenated ROC species with C* of 10<sup>+4</sup> &#956;g m<sup>-3</sup> and O:C of 0.2|G|158.2|L|2-Ethylheptanoic Acid|[CCCCCC\(CC\)C\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID40880929)
ROCP5ALK|Alkane-like ROC species with C* of 10<sup>+5</sup> &#956;g m<sup>-3</sup>|G|198.39|L|Tetradecane|[CCCCCCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID1027267)
ROCP5ALKP|Peroxy radicals from ROCP5ALK oxidation|G|229.38|L|tetradecan-3-ylperoxy|CCCCCCCCCCCC\(CC\)O\[O\]
ROCP5ALKP2|Hydroxy peroxy radicals from ROCP5ALK alkoxy product|G|245.38|L|(3-hydroxytetradecan-6-yl)peroxy|CCCCCCCCC\(O\[O\]\)CCC\(O\)CC
ROCP5ARO|Aromatic ROC species with C* of 10<sup>+5</sup> &#956;g m<sup>-3</sup>|G|190.33|L|Benzene, octyl-|[CCCCCCCCC1=CC=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2062240)
ROCP5AROP|Peroxy radicals from ROCP5ARO oxidation|G|271.33|L|{8-hydroxy-5-octyl-6,7-dioxabicyclo[3.2.1]oct-3-en-2-yl}peroxy|CCCCCCCCC1\(OO2\)C=CC\(O\[O\]\)C2C1O
ROCP5OXY1|Oxygenated ROC species with C* of 10<sup>+5</sup> &#956;g m<sup>-3</sup> and O:C of 0.1|G|170.3|L|Undecanal|[CCCCCCCCCCC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID4021688)
ROCP6ALK|Alkane-like ROC species with C* of 10<sup>+6</sup> &#956;g m<sup>-3</sup>|G|184.37|L|Tridecane|[CCCCCCCCCCCCC](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6027266)
ROCP6ALKP|Peroxy radicals from ROCP6ALK oxidation|G|215.36|L|tridecan-3-ylperoxy|CCCCCCCCCCC\(CC\)O\[O\]
ROCP6ALKP2|Hydroxy peroxy radicals from ROCP6ALK alkoxy product|G|231.36|L|(3-hydroxytridecan-6-yl)peroxy|CCCCCCCC\(O\[O\]\)CCC\(O\)CC
ROCP6ARO|Aromatic ROC species with C* of 10<sup>+6</sup> &#956;g m<sup>-3</sup>|G|176.3|L|1-Hexyl-4-methylbenzene|[CCCCCCC1=CC=C\(C\)C=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID30333914)
ROCP6AROP|Peroxy radicals from ROCP6ARO oxidation|G|257.3|L|{2-hexyl-8-hydroxy-5-methyl-6,7-dioxabicyclo[3.2.1]oct-3-en-2-yl}peroxy|OC1C2C\(CCCCCC\)\(O\[O\]\)C=CC1\(C\)OO2
ROCP6OXY1|Oxygenated ROC species with C* of 10<sup>+6</sup> &#956;g m<sup>-3</sup> and O:C of 0.1|G|142.2|L|Nonanal|[CCCCCCCCC=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID9021639)
ROH|C3 and higher alcohols |G|60.0|L|Propanol|[CCCO](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2021739)
SEACAT|Sea spray cations|P|23.75|L|Coarse sea spray cations|
SEAST| J-mode seasalt concentration (tracer)|P|31.3|L|Sea salt tracer|
SESQ|Sesquiterpenes |G|204.4|L|b-caryophyllene|[C/C1=C/CCC\(=C\)C2CC\(C\)\(C\)C2CC\1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID8024739)
SESQNRO2|Peroxy radicals from SESQ reaction with nitrate radicals|G|298.4|L|[4,11,11-trimethyl-8-methylidene-5-(nitrooxy)bicyclo[7.2.0]undecan-4-yl]peroxy|\[O\]OC1\(C\)CCC2C\(CC2\(C\)C\)C\(=C\)CCC1O\[N+\]\(=O\)\[O-\]
SESQRO2|Peroxy radicals from SESQ reaction with OH|G|253.4|L|{5-hydroxy-4,11,11-trimethyl-8-methylidenebicyclo[7.2.0]undecan-4-yl}peroxy|\[O\]OC1\(C\)CCC2C\(CC2\(C\)C\)C\(=C\)CCC1O
SI|Silicon|P|28.1|E|Total Silicon|[\[Si\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID0051441)
SLOWROC|Slowly reacting ROC with k<sub>OH</sub>< 3.5x10<sup>-13</sup> cm<sup>3</sup> s<sup>-1</sup> |G|75.4|L|Hydrogen cyanide|[C#N](https://comptox.epa.gov/dashboard/chemical/details/DTXSID9024148)
SO2|Sulfur dioxide|G|64.0|E|Sulfur dioxide|[O=S=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6029672)
SO4|Total sulfur IV as sulfate|P|96.0|L|Sulfate ion|[\[O-\]S\(=O\)\(=O\)\[O-\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3042425)
SOAT|An empirical SOA|P|200.0|L|3,4,5,6,7-Pentahydroxyheptan-2-one|[CC\(=O\)C\(C\(C\(C\(CO\)O\)O\)O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID80956455)
SOIL|Lumped crustal species|P|100.0|L|Crustal species|
SRF|Surface area of particles|P|1.0|L|Surface area of particles|
STY|Styrene|G|104.0|E|Styrene|[C=CC1=CC=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID2021284)
STYP|Peroxy radicals from STY|G|153.0|E|(2-hydroxy-2-phenylethyl)peroxy|\[O\]OCC\(O\)C1=CC=CC=C1
SULF|Sulfuric acid|G|98.0|E|Sulfuric acid|[OS\(=O\)\(=O\)O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID5029683)
SULRXN|Precursor of Aerosol Sulfate (tracking species) |G|98.0||NA|
TI|Titanium|P|47.9|E|Total Titanium|[\[Ti\]](https://comptox.epa.gov/dashboard/chemical/details/DTXSID3047764)
TOL|Toluene |G|92.14|E|Toluene|[CC1=CC=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID7021360)
TOLP|Peroxy radicals formed from TOL|G|173.14|L|{8-hydroxy-5-methyl-6,7-dioxabicyclo[3.2.1]oct-3-en-2-yl}peroxy|\[O\]OC1C=CC2\(C\)OOC1C2O
TRPN|First generation monoterpene nitrates|GP|215.0|L|3-hydroxy-2,6,6-trimethylbicyclo[3.1.1]heptan-2-yl nitrate|O=N\(=O\)OC1\(C\)C\(O\)CC2CC1C2\(C\)C
UALD|Unsaturated aldehydes|G|84.1|L|2-Methylbut-2-enal|[CC=C\(C\)C=O](https://comptox.epa.gov/dashboard/chemical/details/DTXSID00859414)
UALP|Peroxy radicals formed from UALD |G|133.0|L|(3-hydroxy-3-methyl-4-oxobutan-2-yl)peroxy|CC\(O\[O\]\)C\(C\)\(O\)C=O
XO2|Accounts for addition NO to NO2 conversions (tracking species)|G|1.0||NA|
XYL|Xylenes and other volatile aromatics |G|106.2|L|m-Xylene|[CC1=CC\(C\)=CC=C1](https://comptox.epa.gov/dashboard/chemical/details/DTXSID6026298)
XYLP|Peroxy radicals formed from XYL|G|187.17|L|{8-hydroxy-1,5-dimethyl-6,7-dioxabicyclo[3.2.1]oct-3-en-2-yl}peroxy|\[O\]OC1C=CC2\(C\)OOC1\(C\)C2O

