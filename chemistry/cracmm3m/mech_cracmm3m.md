Information is based on the mech.def file.
* Fall-off or pressure dependent reaction rate constants (M equals air number density):
 * For rate constants with k<sub>o</sub>, k<sub>i</sub>, n, F values: k = [ k<sub>o</sub>M/(1+k<sub>o</sub>M/k<sub>i</sub>)]F<sup>G</sup>, where G=(1+(log<sub>10</sub>(k<sub>o</sub>M/k<sub>i</sub>)/n)<sup>2</sup>)<sup>-1</sup> 
 * For rate constants with k<sub>1</sub>, k<sub>2</sub>: k = k<sub>1</sub> + k<sub>2</sub>M
 * For rate constants with k<sub>0</sub>, k<sub>2</sub>, k<sub>3</sub>: k = k<sub>0</sub> + k<sub>3</sub>M/(1+k<sub>3</sub>M/k<sub>2</sub>)
 * For rate constants with k<sub>1</sub>, k<sub>2</sub>, k<sub>3</sub>: k = k<sub>1</sub> + k<sub>2</sub>M + k<sub>3</sub> 

* For rate constants with the form A<_Reference_>, k equals A times a reference that represents photolysis rate, a heteorogeneous rate constant, rate constant for the given reaction or an operator. A equals one if not given.

* In the mechanism definition file, the rate is formatted as
 * A~<_HETEROGENEOUS_>
 * A*K<_REACTION_>
 * A/<_PHOTOLYSIS_>
 * A?<_OPERATOR_>

|Label|Reaction            |Rate Constant Formula| Value<br> molecules/(sec*cm<sup>3</sup>)|   
|:---|:-------------------|:--------------------|:----:|   
| R001   | O3 ----> O3P  | O3O3P_NASA06 | Not Available<sup>1</sup> | 
| R002   | O3 ----> O1D  | O3O1D_NASA06 | Not Available<sup>1</sup> | 
| R003   | H2O2 ---->   2.0000\*HO  | H2O2_RACM2 | Not Available<sup>1</sup> | 
| R004   | NO2 ----> O3P + NO  | NO2_RACM2 | Not Available<sup>1</sup> | 
| R005   | NO3 ----> NO  | NO3NO_RACM2 | Not Available<sup>1</sup> | 
| R006   | NO3 ----> O3P + NO2  | NO3NO2_RACM2 | Not Available<sup>1</sup> | 
| R007   | HONO ----> HO + NO  | HONO_RACM2 | Not Available<sup>1</sup> | 
| R008   | HNO3 ----> HO + NO2  | HNO3_RACM2 | Not Available<sup>1</sup> | 
| R009   | HNO4 ---->   0.2000\*HO +    0.8000\*HO2 +    0.8000\*NO2 +    0.2000\*NO3  | HNO4_RACM2 | Not Available<sup>1</sup> | 
| R010   | HCHO ----> CO  | HCHO_MOL_JPL19 | Not Available<sup>1</sup> | 
| R011   | HCHO ---->   2.0000\*HO2 + CO  | HCHO_RAD_JPL19 | Not Available<sup>1</sup> | 
| R012   | ACD ----> HO2 + MO2 + CO  | CH3CHO_RACM2 | Not Available<sup>1</sup> | 
| R013   | ALD ----> HO2 + ETHP + CO  | ALD_JPL19 | Not Available<sup>1</sup> | 
| R014   | ACT ----> MO2 + ACO3  | CH3COCH3A_JPL19 | Not Available<sup>1</sup> | 
| R014a   | ACT ---->   2.0000\*MO2 + CO  | CH3COCH3B_JPL19 | Not Available<sup>1</sup> | 
| R015   | UALD ---->   1.2200\*HO2 +    0.7840\*ACO3 +    1.2200\*CO +    0.3500\*HCHO +    0.4340\*ALD +    0.2160\*KET  | UALD_RACM2 | Not Available<sup>1</sup> | 
| TRP01   | PINAL ----> HO2 + PINALP + CO  | ALD_JPL19 | Not Available<sup>1</sup> | 
| TRP02   | LIMAL ----> HO2 + LIMALP + CO  | ALD_JPL19 | Not Available<sup>1</sup> | 
| R016   | MEK ---->   0.1000\*MO2 + ETHP +    0.9000\*ACO3 +    0.1000\*CO  | MEK_JGR19 | Not Available<sup>1</sup> | 
| R017   | KET ---->   1.5000\*ETHP +    0.5000\*ACO3 +    0.5000\*CO  | KET_JGR19 | Not Available<sup>1</sup> | 
| R018   | HKET ----> HO2 + ACO3 + HCHO  | HKET_RACM2 | Not Available<sup>1</sup> | 
| R019   | MACR ---->   0.3400\*HO +    0.6600\*HO2 +    0.6700\*ACO3 +    0.3300\*MACP +    0.3400\*XO2 +    0.6700\*CO +    0.6700\*HCHO  | MACR_RACM2 | Not Available<sup>1</sup> | 
| R020   | MVK ---->   0.3000\*MO2 +    0.3000\*MACP +    0.7000\*CO +    0.7000\*UALD  | MVK_JPL19 | Not Available<sup>1</sup> | 
| R021   | GLY ---->   2.0000\*CO  | GLYH2_JPL19 | Not Available<sup>1</sup> | 
| R022   | GLY ----> HCHO + CO  | GLYF_JPL19 | Not Available<sup>1</sup> | 
| R023   | GLY ---->   2.0000\*HO2 +    2.0000\*CO  | GLYHX_JPL19 | Not Available<sup>1</sup> | 
| R024   | MGLY ----> HO2 + ACO3 + CO  | MGLY_RACM2 | Not Available<sup>1</sup> | 
| R025   | DCB1 ---->   1.5000\*HO2 +    0.2500\*ACO3 +    0.2000\*XO2 + CO +    0.5000\*GLY +    0.5000\*MGLY  | MGLY_RACM2 | Not Available<sup>1</sup> | 
| R026   | DCB2 ---->   1.5000\*HO2 +    0.2500\*ACO3 +    0.2000\*XO2 + CO +    0.5000\*GLY +    0.5000\*MGLY  | MGLY_RACM2 | Not Available<sup>1</sup> | 
| R027a   | BALD ----> BEN + CO  | BALD1_CALVERT11 | Not Available<sup>1</sup> | 
| R027b   | BALD ----> BAL1 + CO + HO2  | BALD2_CALVERT11 | Not Available<sup>1</sup> | 
| R028   | OP1 ----> HO + HO2 + HCHO  | OP1_RACM2 | Not Available<sup>1</sup> | 
| R029   | OP2 ----> HO + HO2 + ALD  | OP1_RACM2 | Not Available<sup>1</sup> | 
| TRP03   | OPB ----> HO + HO2 + ALD  | OP1_RACM2 | Not Available<sup>1</sup> | 
| R029a   | VOP3 ----> HO + HO2 + ALD  | OP1_RACM2 | Not Available<sup>1</sup> | 
| R030   | PAA ----> HO + MO2  | PAA_RACM2 | Not Available<sup>1</sup> | 
| R031   | ONIT ----> HO2 + NO2 +    0.2000\*ALD +    0.8000\*KET  | ONIT_CALVERT08 | Not Available<sup>1</sup> | 
| R032   | PAN ----> ACO3 + NO2  | PAN1_JPL19 | Not Available<sup>1</sup> | 
| R033   | PAN ----> MO2 + NO3 + CO2  | PAN2_JPL19 | Not Available<sup>1</sup> | 
| R033a   | PPN ----> RCO3 + NO2  | PPN1_JPL19 | Not Available<sup>1</sup> | 
| R033b   | PPN ----> HC3P + NO3  | PPN2_JPL19 | Not Available<sup>1</sup> | 
| TRP55   | VTRPN ----> NO2 +    0.6700\*KET +    0.3300\*UALD  | TRPN_WANG2023 | Not Available<sup>1</sup> | 
| TRP56   | VHONIT ----> HKET + NO2  | TRPN_WANG2023 | Not Available<sup>1</sup> | 
| R034   | O3 + HO ----> HO2  |   1.70E-12e<sup>  -940.00/T</sup> |   7.2647E-14 |
| R035   | O3 + HO2 ----> HO  |   1.00E-14e<sup>  -490.00/T</sup> |   1.9331E-15 |
| R036   | O3 + NO ----> NO2  |   3.00E-12e<sup> -1500.00/T</sup> |   1.9596E-14 |
| R037   | O3 + NO2 ----> NO3  |   1.20E-13e<sup> -2450.00/T</sup> |   3.2392E-17 |
| R038   | O3P + O2 + M ----> O3  |   6.10E-34(T/300)<sup> -2.40</sup> |   6.1912E-34 |
| R039   | O3P + O3 ----> |   8.00E-12e<sup> -2060.00/T</sup> |   7.9879E-15 |
| R040   | O1D + O2 ----> O3P  |   3.30E-11e<sup>    55.00/T</sup> |   3.9685E-11 |
| R041   | O1D + N2 ----> O3P  |   2.15E-11e<sup>   110.00/T</sup> |   3.1093E-11 |
| R042   | O1D + H2O ---->   2.0000\*HO  |   1.63E-10e<sup>    60.00/T</sup> |   1.9934E-10 |
| R043   | HO + H2 ----> HO2  |   2.80E-12e<sup> -1800.00/T</sup> |   6.6869E-15 |
| R044   | HO + HO2 ----> |   4.80E-11e<sup>   250.00/T</sup> |   1.1102E-10 |
| R045   | HO2 + HO2 ----> H2O2  | k<sub>0</sub>=  3.00E-13e<sup>   460.0/T</sup><br>k<sub>1</sub>=  2.10E-33e<sup>   920.0/T</sup> |   2.5345E-12 |
| R046   | HO2 + HO2 + H2O ----> H2O2  | k<sub>0</sub>=  4.20E-34e<sup>  2660.0/T</sup><br>k<sub>1</sub>=  2.94E-54e<sup>  3120.0/T</sup> |   5.6834E-30 |
| R047   | H2O2 + HO ----> HO2  |   1.80E-12e<sup>     0.00/T</sup> |   1.8000E-12 |
| R048   | NO + O3P ----> NO2  | k<sub>o</sub>=  9.10E-32e<sup>     0.0/T</sup>(T/300)<sup> -1.50</sup><br>k<sub>i</sub> =   3.00E-11e<sup>     0.0/T</sup>(T/300)<sup>  0.00</sup><br>n=     1.00;F=     0.60 |   1.6772E-12 |
| R049   | NO + HO ----> HONO  | k<sub>o</sub>=  7.10E-31e<sup>     0.0/T</sup>(T/300)<sup> -2.60</sup><br>k<sub>i</sub> =   3.60E-11e<sup>     0.0/T</sup>(T/300)<sup> -0.10</sup><br>n=     1.00;F=     0.60 |   7.4585E-12 |
| R050   | NO + HO2 ----> NO2 + HO  |   3.44E-12e<sup>   260.00/T</sup> |   8.2278E-12 |
| R051   | NO + HO2 ----> HNO3  | k<sub>0</sub>=  6.0950E-14e<sup>   270.0/T</sup>(T/300)<sup> -1.00</sup><br>k<sub>2</sub>=  6.8570E-34e<sup>   270.0/T</sup>(T/300)<sup>  1.00</sup><br>k<sub>3</sub>= -5.9680E-14e<sup>   270.00/T</sup> |   4.5566E-14 |
| R052   | NO + NO + O2 ---->   2.0000\*NO2  |   4.25E-39e<sup>   663.50/T</sup> |   3.9343E-38 |
| R053   | HONO + HO ----> NO2  |   3.00E-12e<sup>   250.00/T</sup> |   6.9387E-12 |
| R054   | NO2 + O3P ----> NO  |   5.30E-12e<sup>   200.00/T</sup> |   1.0366E-11 |
| R055   | NO2 + O3P ----> NO3  | k<sub>o</sub>=  3.40E-31e<sup>     0.0/T</sup>(T/300)<sup> -1.60</sup><br>k<sub>i</sub> =   2.30E-11e<sup>     0.0/T</sup>(T/300)<sup> -0.20</sup><br>n=     1.00;F=     0.60 |   4.0243E-12 |
| R056   | NO2 + HO ----> HNO3  | k<sub>o</sub>=  1.80E-30e<sup>     0.0/T</sup>(T/300)<sup> -3.00</sup><br>k<sub>i</sub> =   2.80E-11e<sup>     0.0/T</sup>(T/300)<sup>  0.00</sup><br>n=     1.00;F=     0.60 |   1.0589E-11 |
| R057   | HNO3 + HO ----> NO3  | k<sub>0</sub>=  2.40E-14e<sup>   460.0/T</sup><br>k<sub>1</sub>=  2.70E-17e<sup>  2199.0/T</sup><br>k<sub>3</sub>=  6.50E-34e<sup>  1335.0/T</sup> |   1.5409E-13 |
| R058   | NO3 + HO ----> HO2 + NO2  |   2.0000E-11 |   2.0000E-11 |
| R059   | NO3 + HO2 ---->   0.7000\*HO +    0.7000\*NO2 +    0.3000\*HNO3  |   3.5000E-12 |   3.5000E-12 |
| R060   | NO3 + NO ---->   2.0000\*NO2  |   1.70E-11e<sup>   125.00/T</sup> |   2.5854E-11 |
| R061   | NO3 + NO2 ----> NO + NO2  |   4.35E-14e<sup> -1335.00/T</sup> |   4.9418E-16 |
| R062   | NO3 + NO3 ---->   2.0000\*NO2  |   8.50E-13e<sup> -2450.00/T</sup> |   2.2944E-16 |
| R063   | NO3 + NO2 ----> N2O5  | k<sub>o</sub>=  2.40E-30e<sup>     0.0/T</sup>(T/300)<sup> -3.00</sup><br>k<sub>i</sub> =   1.60E-12e<sup>     0.0/T</sup>(T/300)<sup>  0.10</sup><br>n=     1.00;F=     0.60 |   1.3451E-12 |
| R064   | N2O5 ----> NO2 + NO3  |   1.72E+26e<sup>-10840.00/T</sup> \*R063 |   3.7623E-02<sup>8</sup>| 
| R065   | N2O5 + H2O ---->   2.0000\*HNO3  |   1.0000E-22 |   1.0000E-22 |
| R066   | NO2 + HO2 ----> HNO4  | k<sub>o</sub>=  1.90E-31e<sup>     0.0/T</sup>(T/300)<sup> -3.40</sup><br>k<sub>i</sub> =   4.00E-12e<sup>     0.0/T</sup>(T/300)<sup> -0.30</sup><br>n=     1.00;F=     0.60 |   1.3113E-12 |
| R067   | HNO4 ----> HO2 + NO2  |   4.76E+26e<sup>-10900.00/T</sup> \*R066 |   8.2835E-02<sup>8</sup>| 
| R068   | HNO4 + HO ----> NO2  |   4.50E-13e<sup>   610.00/T</sup> |   3.4814E-12 |
| R069   | SO2 + HO ----> HO2 + SULF + SULRXN  | k<sub>o</sub>=  2.90E-31e<sup>     0.0/T</sup>(T/300)<sup> -4.10</sup><br>k<sub>i</sub> =   1.70E-12e<sup>     0.0/T</sup>(T/300)<sup>  0.20</sup><br>n=     1.00;F=     0.60 |   9.5762E-13 |
| R070   | CO + HO ----> HO2 + CO2  | k<sub>0</sub>=  1.44E-13e<sup>     0.0/T</sup><br>k<sub>1</sub>=  2.74E-33e<sup>     0.0/T</sup> |   2.1145E-13 |
| R071   | HO + CH4 ----> MO2  |   2.45E-12e<sup> -1775.00/T</sup> |   6.3628E-15 |
| R072   | ETH + HO ----> ETHP  |   7.66E-12e<sup> -1020.00/T</sup> |   2.5030E-13 |
| R073   | HC3 + HO ----> HC3P +    0.0000\*ASOATJ  |   7.68E-12e<sup>  -370.00/T</sup> |   2.2203E-12 |
| R074   | HC5 + HO ----> HC5P +    0.0013\*ASOATJ  |   1.01E-11e<sup>  -245.00/T</sup> |   4.4407E-12 |
| R076   | ETE + HO ----> ETEP  | k<sub>o</sub>=  1.00E-28e<sup>     0.0/T</sup>(T/300)<sup> -4.50</sup><br>k<sub>i</sub> =   8.80E-12e<sup>     0.0/T</sup>(T/300)<sup> -0.85</sup><br>n=     1.00;F=     0.60 |   8.1981E-12 |
| R077   | OLT + HO ----> OLTP  |   5.72E-12e<sup>   500.00/T</sup> |   3.0599E-11 |
| R078   | OLI + HO ----> OLIP  |   1.33E-11e<sup>   500.00/T</sup> |   7.1149E-11 |
| R080   | ACE + HO ---->   0.6500\*HO +    0.3500\*HO2 +    0.3500\*CO +    0.6500\*GLY +    0.3500\*ORA1  | k<sub>o</sub>=  5.50E-30e<sup>     0.0/T</sup>(T/300)<sup>  0.00</sup><br>k<sub>i</sub> =   8.30E-13e<sup>     0.0/T</sup>(T/300)<sup>  2.00</sup><br>n=     1.00;F=     0.60 |   7.4748E-13 |
| ROCARO31   | BEN + HO ---->   0.4700\*BENP +    0.5300\*PHEN +    0.5300\*HO2  |   2.33E-12e<sup>  -193.00/T</sup> |   1.2196E-12 |
| ROCARO41   | TOL + HO ---->   0.8200\*TOLP +    0.1800\*CSL +    0.1800\*HO2  |   1.81E-12e<sup>   354.00/T</sup> |   5.9337E-12 |
| ROCARO51   | XYL + HO ---->   0.8300\*XYLP +    0.1700\*CSL +    0.1700\*HO2  |   2.3300E-11 |   2.3300E-11 |
| ROCARO61   | EBZ + HO ---->   0.8200\*EBZP +    0.1800\*CSL +    0.1800\*HO2  |   7.0000E-12 |   7.0000E-12 |
| ROCARO61a   | EBZ + NO3 ----> EBZP + HNO3  |   5.7000E-16 |   5.7000E-16 |
| RAM01   | ISO + O3 ---->   0.2500\*HO +    0.2500\*HO2 +    0.4000\*MO2 +    0.0180\*ACO3 +    0.1000\*MACP +    0.0900\*H2O2 +    0.2200\*CO + HCHO +    0.3000\*MACR +    0.1400\*MVK +    0.2800\*ORA1 +    0.1530\*OLT  |   1.58E-14e<sup> -2000.00/T</sup> |   1.9293E-17 |
| RAM02   | ISO + NO3 ---->   0.4000\*NO2 +    0.0450\*ISON +    0.3500\*HCHO +    0.5550\*ISONP +    0.2600\*MVK +    0.0280\*MACR  |   2.95E-12e<sup>  -450.00/T</sup> |   6.5214E-13 |
| RAM03   | ISO + HO ----> ISOP +    0.2500\*HCHO +    0.0300\*MACR +    0.0500\*MGLY  |   2.69E-11e<sup>   390.00/T</sup> |   9.9503E-11 |
| RAM04   | ISOP + HO2 ----> ISHP +    0.0700\*HO2 +    0.5000\*HO  |   4.50E-13e<sup>  1300.00/T</sup> |   3.5224E-11 |
| RAM05   | ISOP + NO ---->   0.1300\*ISON +    0.4000\*HCHO +    0.8800\*HO2 +    0.8700\*NO2 +    0.1800\*MACR +    0.5100\*MVK  |   6.00E-12e<sup>   350.00/T</sup> |   1.9408E-11 |
| RAM06   | ISHP + HO ----> ISOP  |   4.60E-12e<sup>   200.00/T</sup> |   8.9967E-12 |
| RAM07   | ISHP + HO ---->   0.0400\*MGLY +    0.0200\*GLY +    0.1300\*MVK +    0.4400\*IEPOX +    0.1100\*ACO3 +    0.0300\*MACR +    2.0000\*HO +    0.3400\*HO2 +    0.1400\*IPX + CO  |   2.97E-11e<sup>   390.00/T</sup> |   1.0986E-10 |
| RAM08   | ISONP + HO2 ---->   0.4500\*HO +    0.9500\*INALD +    0.0200\*IPX  |   3.14E-11e<sup>   580.00/T</sup> |   2.1967E-10 |
| RAM09   | ISONP + NO ---->   0.1500\*MVK +    0.6500\*INALD +    0.0500\*ISON +    0.2000\*HCHO +    1.3000\*NO2  |   9.42E-12e<sup>   580.00/T</sup> |   6.5902E-11 |
| RAM10   | ISON + HO ----> HO +    0.3500\*INALD +    0.1700\*IEPOX +    0.6500\*NO2  |   2.40E-11e<sup>   390.00/T</sup> |   8.8776E-11 |
| RAM11   | HO + INALD ----> CO + NO2 +    0.3000\*HO2 + HCHO  |   1.5000E-11 |   1.5000E-11 |
| RAM12   | ISON ----> HNO3 + ROH  |   4.0000E-05 |   4.0000E-05 |
| RAM13   | IPX + HO ---->   0.5700\*MACR +    0.4300\*MVK  |   3.0000E-12 |   3.0000E-12 |
| R087   | API + HO ---->   0.9750\*APIP1 +    0.0250\*APIP2  |   1.21E-11e<sup>   440.00/T</sup> |   5.2930E-11 |
| R088   | LIM + HO ---->   0.9450\*LIMP1 +    0.0550\*LIMP2  |   4.20E-11e<sup>   401.00/T</sup> |   1.6120E-10 |
| TRP04   | PINAL + HO ---->   0.2300\*PINALP +    0.7700\*RCO3  |   5.20E-12e<sup>   600.00/T</sup> |   3.8903E-11 |
| TRP05   | LIMAL + HO ---->   0.8300\*LIMALP +    0.1700\*RCO3  |   1.1000E-10 |   1.1000E-10 |
| R089   | HCHO + HO ----> HO2 + CO  |   5.50E-12e<sup>   125.00/T</sup> |   8.3645E-12 |
| R090   | ACD + HO ----> ACO3  |   4.70E-12e<sup>   345.00/T</sup> |   1.4950E-11 |
| R091   | ALD + HO ----> RCO3  |   4.90E-12e<sup>   405.00/T</sup> |   1.9060E-11 |
| R092   | ACT + HO ----> ACTP  |   4.56E-14e<sup>  -427.00/T</sup>(T/300)<sup>  3.65 </sup> |   1.0646E-14 |
| R093   | MEK + HO ----> MEKP  |   1.50E-12e<sup>   -90.00/T</sup> |   1.1092E-12 |
| R094   | KET + HO ----> KETP  |   2.80E-12e<sup>    10.00/T</sup> |   2.8955E-12 |
| R095   | HKET + HO ----> HO2 + MGLY  |   3.0000E-12 |   3.0000E-12 |
| R096   | MACR + HO ---->   0.5700\*MACP +    0.4300\*MCP  |   8.00E-12e<sup>   380.00/T</sup> |   2.8616E-11 |
| R097   | MVK + HO ----> MVKP  |   2.60E-12e<sup>   610.00/T</sup> |   2.0115E-11 |
| R098   | UALD + HO ---->   0.3130\*ACO3 +    0.6870\*UALP  |   5.77E-12e<sup>   533.00/T</sup> |   3.4479E-11 |
| R099   | GLY + HO ----> HO2 +    2.0000\*CO  |   1.1000E-11 |   1.1000E-11 |
| R100   | MGLY + HO ----> ACO3 + CO  |   9.26E-13e<sup>   830.00/T</sup> |   1.4984E-11 |
| R101   | DCB1 + HO ---->   0.5200\*HO2 +    0.3300\*CO +    0.4000\*ALD +    0.7800\*KET +    0.1000\*GLY +    0.0100\*MGLY  |   2.80E-11e<sup>   175.00/T</sup> |   5.0358E-11 |
| R102   | DCB2 + HO ---->   0.5200\*HO2 +    0.3300\*CO +    0.1300\*MEK +    0.1000\*GLY +    0.0100\*MGLY +    0.7800\*OP2  |   2.80E-11e<sup>   175.00/T</sup> |   5.0358E-11 |
| R103   | DCB3 + HO ---->   0.5600\*HO2 +    0.2100\*MACP +    0.1100\*CO +    0.2700\*GLY +    0.0100\*MGLY +    0.7900\*OP2  |   1.0000E-11 |   1.0000E-11 |
| R104   | BALD + HO ----> BALP  |   5.32E-12e<sup>   243.00/T</sup> |   1.2019E-11 |
| R105   | PHEN + HO ---->   0.1520\*ASOATJ +    0.6190\*HO2 +    0.1700\*ADDC +    0.0590\*CHO +    0.6190\*MCT  |   6.75E-12e<sup>   405.00/T</sup> |   2.6257E-11 |
| R106   | CSL + HO ---->   0.2000\*ASOATJ +    0.5840\*HO2 +    0.1600\*ADDC +    0.0560\*CHO +    0.5840\*MCT  |   4.65E-11e<sup>     0.00/T</sup> |   4.6500E-11 |
| R108   | MCT + HO ----> MCTO  |   2.05E-10e<sup>     0.00/T</sup> |   2.0500E-10 |
| R109   | MOH + HO ----> HO2 + HCHO  |   2.85E-12e<sup>  -345.00/T</sup> |   8.9600E-13 |
| R110   | EOH + HO ----> HO2 + ACD  |   3.00E-12e<sup>    20.00/T</sup> |   3.2081E-12 |
| R111   | ROH + HO ----> HO2 +    0.7190\*ALD +    0.1840\*ACD  |   2.60E-12e<sup>   200.00/T</sup> |   5.0851E-12 |
| R112   | ETEG + HO ----> HO2 + ACD  |   1.4700E-11 |   1.4700E-11 |
| R113   | OP1 + HO ---->   0.3500\*HO +    0.6500\*MO2 +    0.3500\*HCHO  |   2.90E-12e<sup>   190.00/T</sup> |   5.4848E-12 |
| R114   | OP2 + HO ---->   0.0100\*HO +    0.4400\*HC3P +    0.0700\*XO2 +    0.0800\*ALD +    0.4100\*KET  |   3.40E-12e<sup>   190.00/T</sup> |   6.4304E-12 |
| TRP06   | OPB + HO ---->   0.0100\*HO +    0.4400\*HC10P +    0.0700\*XO2 +    0.0800\*ALD +    0.4100\*KET  |   3.40E-12e<sup>   190.00/T</sup> |   6.4304E-12 |
| R116   | MAHP + HO ----> MACP  |   3.0000E-11 |   3.0000E-11 |
| R117   | ORA1 + HO ----> HO2 + CO2  |   4.5000E-13 |   4.5000E-13 |
| R118   | ORA2 + HO ---->   0.6400\*MO2 +    0.3600\*ORAP +    0.6400\*CO2  |   4.00E-14e<sup>   850.00/T</sup> |   6.9214E-13 |
| R119   | PAA + HO ---->   0.3500\*HO +    0.6500\*ACO3 +    0.3500\*XO2 +    0.3500\*HCHO  |   2.93E-12e<sup>   190.00/T</sup> |   5.5415E-12 |
| R120   | PAN + HO ----> XO2 + NO3 + HCHO  |   4.0000E-14 |   4.0000E-14 |
| R121   | PPN + HO ----> XO2 + NO3 + HCHO  |   4.0000E-14 |   4.0000E-14 |
| R122   | MPAN + HO ----> NO2 + HKET + CO  |   3.2000E-11 |   3.2000E-11 |
| R123   | ONIT + HO ----> HC3P + NO2  |   5.31E-12e<sup>  -260.00/T</sup> |   2.2201E-12 |
| TRP07   | VTRPN + HO ---->   0.3300\*VHONIT +    0.6700\*NO2 +    0.2700\*PINAL +    0.3800\*KET +    0.2100\*HCHO +    0.0200\*ALD  |   4.8000E-12 |   4.8000E-12 |
| TRP57   | VHONIT + HO ----> HKET + NO3  | k<sub>0</sub>=  2.40E-14e<sup>   460.0/T</sup><br>k<sub>1</sub>=  2.70E-17e<sup>  2199.0/T</sup><br>k<sub>3</sub>=  6.50E-34e<sup>  1335.0/T</sup> |   1.5409E-13 |
| R126   | ETE + O3 ---->   0.0800\*HO +    0.1500\*HO2 +    0.6300\*CO + HCHO +    0.3700\*ORA1  |   9.14E-15e<sup> -2580.00/T</sup> |   1.5953E-18 |
| R127   | OLT + O3 ---->   0.2200\*HO +    0.3200\*HO2 +    0.0800\*MO2 +    0.0600\*ETHP +    0.0400\*HC3P +    0.0200\*HC5P +    0.0680\*H2O2 +    0.4300\*CO +    0.0200\*ETH +    0.0150\*HC3 +    0.0060\*HC5 +    0.0320\*BEN +    0.5600\*HCHO +    0.0100\*ACD +    0.4400\*ALD +    0.0300\*ACT +    0.0200\*BALD +    0.0600\*MEK +    0.0100\*HKET +    0.0300\*ORA1 +    0.0600\*ORA2  |   4.33E-15e<sup> -1800.00/T</sup> |   1.0341E-17 |
| R128   | OLI + O3 ---->   0.4600\*HO +    0.0700\*HO2 +    0.3200\*MO2 +    0.0700\*ETHP +    0.0400\*HC3P +    0.0900\*ACO3 +    0.3700\*CO +    0.0260\*H2O2 +    0.0100\*ETH +    0.0100\*HC3 +    0.0900\*HCHO +    0.4570\*ACD +    0.7300\*ALD +    0.1100\*ACT +    0.0170\*KET +    0.0440\*HKET +    0.0170\*ORA2  |   4.40E-15e<sup>  -845.00/T</sup> |   2.5858E-16 |
| R131   | API + O3 ---->   0.6055\*HO +    0.2145\*PINALP +    0.2550\*H2O2 +    0.2535\*PINAL +    0.0065\*ORA2 +    0.1105\*HO2 +    0.1105\*CO +    0.4590\*HCHO +    0.2305\*APIP1 +    0.0500\*APIP2 +    0.1785\*KET +    0.0665\*HC3 +    0.0385\*OP1 +    0.0280\*ORA1  |   8.05E-16e<sup>  -640.00/T</sup> |   9.4092E-17 |
| R132   | LIM + O3 ---->   0.6600\*HO +    0.6600\*LIMAL +    0.3300\*ACO3 +    0.3300\*HCHO +    0.2200\*LIMP1 +    0.1100\*LIMP2 +    0.3300\*H2O2 +    0.0100\*ORA2  |   2.80E-15e<sup>  -770.00/T</sup> |   2.1162E-16 |
| TRP08   | LIMAL + O3 ---->   0.0900\*HO + ALD +    0.6200\*HCHO +    0.2300\*OP1 +    0.0200\*H2O2 +    0.1500\*ORA1  |   8.3000E-18 |   8.3000E-18 |
| TRP09   | VTRPN + O3 ---->   0.3300\*VHONIT +    0.6700\*NO2 +    0.2700\*PINAL +    0.3800\*KET +    0.2100\*HCHO +    0.0200\*ALD  |   1.6700E-16 |   1.6700E-16 |
| R133   | MACR + O3 ---->   0.1900\*HO +    0.1400\*HO2 +    0.1000\*ACO3 +    0.2200\*CO +    0.5000\*MGLY +    0.4500\*ORA1  |   1.36E-15e<sup> -2112.00/T</sup> |   1.1406E-18 |
| R134   | MVK + O3 ---->   0.1600\*HO +    0.1100\*HO2 +    0.2800\*ACO3 +    0.0100\*XO2 +    0.5600\*CO +    0.1000\*HCHO +    0.5400\*MGLY +    0.0700\*ORA1 +    0.0700\*ORA2 +    0.1000\*ALD  |   8.50E-16e<sup> -1520.00/T</sup> |   5.1921E-18 |
| R135   | UALD + O3 ---->   0.1000\*HO +    0.0720\*HO2 +    0.0080\*MO2 +    0.0020\*ACO3 +    0.1000\*XO2 +    0.2430\*CO +    0.0800\*HCHO +    0.4200\*ACD +    0.0280\*KET +    0.4910\*GLY +    0.0030\*MGLY +    0.0440\*ORA1  |   1.6600E-18 |   1.6600E-18 |
| R136   | DCB1 + O3 ---->   0.0500\*HO + HO2 +    0.6000\*RCO3 +    0.6000\*XO2 +    1.5000\*CO +    0.5000\*CO2 +    0.0500\*HCHO +    0.0500\*GLY +    0.0800\*MGLY +    0.6500\*OP2  |   2.0000E-16 |   2.0000E-16 |
| R137   | DCB2 + O3 ---->   0.0500\*HO + HO2 +    0.6000\*RCO3 +    0.6000\*XO2 +    1.5000\*CO +    0.5000\*CO2 +    0.0500\*HCHO +    0.0500\*GLY +    0.0800\*MGLY +    0.7000\*DCB1 +    0.6500\*OP2  |   2.0000E-16 |   2.0000E-16 |
| R138   | DCB3 + O3 ---->   0.0500\*HO + HO2 +    1.5000\*CO +    0.5000\*CO2 +    0.4800\*GLY +    0.7000\*DCB1 +    0.2500\*ORA1 +    0.2500\*ORA2 +    0.1100\*PAA  |   9.0000E-17 |   9.0000E-17 |
| R140   | MCTO + O3 ----> MCTP  |   2.8600E-13 |   2.8600E-13 |
| R141   | ETE + NO3 ---->   0.8000\*OLNN +    0.2000\*OLND  |   4.39E-13e<sup> -2282.00/T</sup>(T/300)<sup>  2.00 </sup> |   2.0571E-16 |
| R142   | OLT + NO3 ---->   0.4300\*OLNN +    0.5700\*OLND  |   1.79E-13e<sup>  -450.00/T</sup> |   3.9570E-14 |
| R143   | OLI + NO3 ---->   0.1100\*OLNN +    0.8900\*OLND  |   8.64E-13e<sup>   450.00/T</sup> |   3.9084E-12 |
| R146   | API + NO3 ---->   0.9750\*APINP1 +    0.0250\*APINP2  |   1.19E-12e<sup>   490.00/T</sup> |   6.1560E-12 |
| R147   | LIM + NO3 ---->   0.9450\*LIMNP1 +    0.0550\*LIMNP2  |   1.2200E-11 |   1.2200E-11 |
| TRP10   | VTRPN + NO3 ---->   0.3300\*VHONIT +    0.6700\*NO2 +    0.2700\*PINAL +    0.3800\*KET +    0.2100\*HCHO +    0.0200\*ALD  |   3.15E-13e<sup>  -448.00/T</sup> |   7.0104E-14 |
| R148   | HCHO + NO3 ----> HO2 + CO + HNO3  |   2.00E-12e<sup> -2440.00/T</sup> |   5.5828E-16 |
| R149   | ACD + NO3 ----> ACO3 + HNO3  |   1.40E-12e<sup> -1900.00/T</sup> |   2.3907E-15 |
| R150   | ALD + NO3 ----> RCO3 + HNO3  |   3.76E-12e<sup> -1900.00/T</sup> |   6.4208E-15 |
| R151   | MACR + NO3 ---->   0.6800\*HCHO +    0.3200\*MACP +    0.6800\*XO2 +    0.6800\*MGLY +    0.3200\*HNO3 +    0.6800\*NO2  |   3.4000E-15 |   3.4000E-15 |
| R152   | UALD + NO3 ----> HO2 + XO2 +    0.6680\*CO +    0.3320\*HCHO +    0.3320\*ALD + ONIT  |   5.02E-13e<sup> -1076.00/T</sup> |   1.3595E-14 |
| R153   | GLY + NO3 ----> HO2 +    2.0000\*CO + HNO3  |   2.90E-12e<sup> -1900.00/T</sup> |   4.9522E-15 |
| R154   | MGLY + NO3 ----> ACO3 + CO + HNO3  |   3.76E-12e<sup> -1900.00/T</sup> |   6.4208E-15 |
| RBAL1   | BALD + NO3 ----> BALP + HNO3  |   2.4000E-15 |   2.4000E-15 |
| R155   | PHEN + NO3 ---->   0.1520\*ASOATJ +    0.3390\*CHO +    0.8500\*ADDC +    0.4240\*ADCN +    0.4240\*HNO3  |   3.7800E-12 |   3.7800E-12 |
| R156   | CSL + NO3 ---->   0.2000\*ASOATJ +    0.3200\*CHO +    0.0800\*ADDC +    0.4000\*ADCN +    0.4000\*HNO3  |   1.0600E-12 |   1.0600E-12 |
| R158   | MCT + NO3 ----> MCTO + HNO3  |   2.0100E-10 |   2.0100E-10 |
| R159   | MPAN + NO3 ----> MACP + NO2 + HNO3  |   2.20E-14e<sup>  -500.00/T</sup> |   4.1125E-15 |
| RBAL2   | BALP + NO2 ----> PAN  | k<sub>o</sub>=  9.70E-29e<sup>     0.0/T</sup>(T/300)<sup> -5.60</sup><br>k<sub>i</sub> =   9.30E-12e<sup>     0.0/T</sup>(T/300)<sup> -1.50</sup><br>n=     0.30;F=     1.42 |   9.4009E-12 |
| TRP11   | PINALP ----> VHOM  |   2.9000E-02 |   2.9000E-02 |
| TRP12   | LIMALP ----> VHOM  |   2.4000E-02 |   2.4000E-02 |
| R166   | ACO3 + NO2 ----> PAN  | k<sub>o</sub>=  9.70E-29e<sup>     0.0/T</sup>(T/300)<sup> -5.60</sup><br>k<sub>i</sub> =   9.30E-12e<sup>     0.0/T</sup>(T/300)<sup> -1.50</sup><br>n=     1.00;F=     0.60 |   8.6800E-12 |
| R167   | PAN ----> ACO3 + NO2  |   1.11E+28e<sup>-14000.00/T</sup> \*R166 |   3.9034E-04<sup>8</sup>| 
| R168   | RCO3 + NO2 ----> PPN  | k<sub>o</sub>=  9.70E-29e<sup>     0.0/T</sup>(T/300)<sup> -5.60</sup><br>k<sub>i</sub> =   9.30E-12e<sup>     0.0/T</sup>(T/300)<sup> -1.50</sup><br>n=     1.00;F=     0.60 |   8.6800E-12 |
| R169   | PPN ----> RCO3 + NO2  |   1.11E+28e<sup>-14000.00/T</sup> \*R168 |   3.9034E-04<sup>8</sup>| 
| R170   | MACP + NO2 ----> MPAN  |   2.80E-12e<sup>   181.00/T</sup> |   5.1382E-12 |
| R171   | MPAN ----> MACP + NO2  |   1.60E+16e<sup>-13486.00/T</sup> |   3.6308E-04 |
| R172   | MO2 + NO ----> HO2 + NO2 + HCHO  |   2.80E-12e<sup>   300.00/T</sup> |   7.6586E-12 |
| R173   | ETHP + NO ----> HO2 + NO2 + ACD  |   2.60E-12e<sup>   365.00/T</sup> |   8.8439E-12 |
| R174   | HC3P + NO ---->   0.6600\*HO2 +    0.1310\*MO2 +    0.0480\*ETHP +    0.0890\*XO2 +    0.9350\*NO2 +    0.5040\*ACD +    0.1320\*ALD +    0.1650\*ACT +    0.0420\*MEK +    0.0650\*ONIT  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R175   | HC5P + NO ---->   0.2000\*HO2 +    0.0510\*MO2 +    0.2310\*ETHP +    0.2350\*XO2 +    0.8640\*NO2 +    0.0180\*HCHO +    0.0450\*ACD +    0.2030\*ALD +    0.0330\*MEK +    0.2170\*ACT +    0.0330\*KET +    0.2720\*HKET +    0.1360\*ONIT  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R177   | ETEP + NO ----> HO2 + NO2 +    1.6000\*HCHO +    0.2000\*ACD  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R178   | OLTP + NO ---->   0.7800\*HO2 +    0.9700\*NO2 +    0.7800\*HCHO +    0.0120\*ACD +    0.4400\*ALD +    0.0600\*ACT +    0.1300\*MEK +    0.0300\*ONIT  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R179   | OLIP + NO ---->   0.8300\*HO2 +    0.9500\*NO2 +    0.8100\*ACD +    0.6800\*ALD +    0.2000\*ACT +    0.0900\*KET +    0.0200\*HKET +    0.0500\*ONIT  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO33   | BENP + NO ---->   0.0000\*ONIT +    0.0012\*VROCP4OXY2 +    0.0008\*VROCN1OXY6 +    0.9980\*NO2 +    0.9980\*HO2 +    0.0000\*BALD +    0.9980\*GLY +    0.4990\*FURANONE +    0.2495\*DCB2 +    0.2495\*DCB3  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO43   | TOLP + NO ---->   0.0002\*ONIT +    0.0013\*VROCP4OXY2 +    0.0006\*VROCN1OXY6 +    0.9980\*NO2 +    0.9980\*HO2 +    0.0852\*BALD +    0.5477\*GLY +    0.3651\*MGLY +    0.3651\*FURANONE +    0.5477\*DCB1  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO53   | XYLP + NO ---->   0.0001\*ONIT +    0.0013\*VROCP3OXY2 +    0.0006\*VROCP0OXY4 +    0.9980\*NO2 +    0.9980\*HO2 +    0.0481\*BALD +    0.7029\*GLY +    0.2470\*MGLY +    0.3515\*FURANONE +    0.5984\*DCB2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO63   | EBZP + NO ---->   0.0002\*ONIT +    0.0013\*VROCP3OXY2 +    0.0006\*VROCP0OXY4 +    0.9980\*NO2 +    0.9980\*HO2 +    0.0852\*BALD +    0.5477\*GLY +    0.3651\*MGLY +    0.4564\*FURANONE +    0.4564\*DCB2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R189   | APIP1 + NO ---->   0.2370\*VTRPN +    0.7630\*HO2 +    0.7630\*NO2 +    0.1950\*PINAL +    0.2840\*ALD +    0.0865\*ACT +    0.1285\*LIMAL +    0.3080\*HCHO +    0.0715\*OPB +    0.0840\*KET  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP13   | APIP2 + NO ---->   0.8200\*HO +    0.8200\*NO2 + VHOM  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP14   | APINP1 + NO ---->   1.6955\*NO2 +    0.2345\*VTRPN +    0.0700\*ONIT +    0.6045\*PINAL +    0.1540\*ALD +    0.0070\*KET +    0.0070\*HCHO +    0.1645\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP15   | APINP2 + NO ---->   0.8200\*NO2 +    0.8200\*HO + VHOM  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R190   | LIMP1 + NO ---->   0.2300\*VTRPN +    0.7700\*NO2 +    0.7700\*LIMAL +    0.7700\*HO2 +    0.4300\*HCHO  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP16   | LIMP2 + NO ---->   0.7700\*HO +    0.7700\*NO2 + VHOM  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP17   | LIMNP1 + NO ---->   0.5700\*VTRPN +    0.0700\*ONIT +    1.3600\*NO2 +    0.4300\*LIMAL +    0.5000\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP18   | LIMNP2 + NO ---->   0.7700\*NO2 +    0.7700\*HO + VHOM  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP19   | PINALP + NO ---->   0.3600\*VTRPN +    0.6400\*VHOM +    0.6400\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| TRP20   | LIMALP + NO ---->   0.6400\*VTRPN +    0.3600\*NO2 +    0.3600\*HO2 +    0.3600\*HCHO +    0.3600\*PAA  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R191   | ACO3 + NO ----> MO2 + NO2 + CO2  |   8.10E-12e<sup>   270.00/T</sup> |   2.0034E-11 |
| R192   | RCO3 + NO ----> ETHP + NO2 + CO2  |   8.10E-12e<sup>   270.00/T</sup> |   2.0034E-11 |
| R193   | ACTP + NO ----> ACO3 + NO2 + HCHO  |   2.90E-12e<sup>   300.00/T</sup> |   7.9321E-12 |
| R194   | MEKP + NO ---->   0.6700\*HO2 + NO2 +    0.3300\*HCHO +    0.6700\*DCB1  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R195   | KETP + NO ---->   0.7700\*HO2 +    0.2300\*ACO3 +    0.1600\*XO2 + NO2 +    0.4600\*ALD +    0.5400\*MGLY  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R196   | MACP + NO ---->   0.6500\*MO2 +    0.3500\*ACO3 + NO2 +    0.6500\*CO +    0.6500\*HCHO  |   2.54E-12e<sup>   360.00/T</sup> |   8.4961E-12 |
| R197   | MCP + NO ----> NO2 +    0.5000\*HO2 +    0.5000\*HCHO + HKET  |   2.54E-12e<sup>   360.00/T</sup> |   8.4961E-12 |
| R198   | MVKP + NO ---->   0.3000\*HO2 +    0.7000\*ACO3 +    0.7000\*XO2 + NO2 +    0.3000\*HCHO +    0.7000\*ALD +    0.3000\*MGLY  |   2.54E-12e<sup>   360.00/T</sup> |   8.4961E-12 |
| R199   | UALP + NO ----> HO2 + NO2 +    0.6100\*CO +    0.0300\*HCHO +    0.2700\*ALD +    0.1800\*GLY +    0.7000\*KET +    0.2100\*MGLY  |   2.54E-12e<sup>   360.00/T</sup> |   8.4961E-12 |
| R200   | BALP + NO ----> BAL1 + NO2 + CO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R201   | BAL1 + NO ----> BAL2 + NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R202   | ADDC + NO ----> HO2 + NO2 +    0.3200\*HKET +    0.6800\*GLY +    0.6800\*OP2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R203   | MCTP + NO ----> MCTO + NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R204   | ORAP + NO ----> NO2 + GLY + HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R205   | OLNN + NO ----> NO2 + HO2 + ONIT  |   4.0000E-12 |   4.0000E-12 |
| R206   | OLND + NO ---->   2.0000\*NO2 +    0.2870\*HCHO +    1.2400\*ALD +    0.4640\*KET  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R207   | ADCN + NO ---->   2.0000\*NO2 + GLY + OP2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R208   | XO2 + NO ----> NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R209   | BAL2 + NO2 ----> ONIT  |   2.0000E-11 |   2.0000E-11 |
| R210   | CHO + NO2 ----> ONIT  |   2.0000E-11 |   2.0000E-11 |
| R211   | MCTO + NO2 ----> ONIT  |   2.0800E-12 |   2.0800E-12 |
| R212   | MO2 + HO2 ----> OP1  |   4.10E-13e<sup>   750.00/T</sup> |   5.0729E-12 |
| R213   | ETHP + HO2 ----> OP2  |   7.50E-13e<sup>   700.00/T</sup> |   7.8470E-12 |
| R214   | HC3P + HO2 ----> OP2  |   1.66E-13e<sup>  1300.00/T</sup> |   1.2994E-11 |
| R215   | HC5P + HO2 ----> OP2  |   1.66E-13e<sup>  1300.00/T</sup> |   1.2994E-11 |
| R217   | ETEP + HO2 ----> OP2  |   1.90E-13e<sup>  1300.00/T</sup> |   1.4872E-11 |
| R218   | OLTP + HO2 ----> OP2  |   1.66E-13e<sup>  1300.00/T</sup> |   1.2994E-11 |
| R219   | OLIP + HO2 ----> OP2  |   1.66E-13e<sup>  1300.00/T</sup> |   1.2994E-11 |
| ROCARO32   | BENP + HO2 ---->   0.6021\*OP2 +    0.3979\*VROCN1OXY6  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| ROCARO42   | TOLP + HO2 ---->   0.7195\*OP2 +    0.2805\*VROCN1OXY6  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| ROCARO52   | XYLP + HO2 ---->   0.0482\*OP2 +    0.6747\*VOP3 +    0.2771\*VROCP0OXY4  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| ROCARO62   | EBZP + HO2 ---->   0.0854\*OP2 +    0.6341\*VOP3 +    0.2805\*VROCP0OXY4  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| R229   | APIP1 + HO2 ---->   0.0390\*ACT +    0.0390\*LIMAL +    0.0625\*HCHO +    0.7620\*OPB +    0.3225\*HO2 +    0.1885\*PINAL +    0.2380\*HO +    0.0105\*KET  |   2.60E-13e<sup>  1300.00/T</sup> |   2.0351E-11 |
| TRP21   | APIP2 + HO2 ----> VHOM  |   2.73E-13e<sup>  1300.00/T</sup> |   2.1369E-11 |
| TRP22   | APINP1 + HO2 ---->   0.4610\*VTRPN +    0.4550\*PINAL +    0.5390\*NO2 +    0.6195\*HO +    0.0770\*ALD +    0.0070\*KET +    0.0070\*HCHO  |   2.71E-13e<sup>  1300.00/T</sup> |   2.1212E-11 |
| TRP23   | APINP2 + HO2 ----> VHOM  |   2.75E-13e<sup>  1300.00/T</sup> |   2.1525E-11 |
| R230   | LIMP1 + HO2 ---->   0.9000\*OPB +    0.1000\*LIMAL +    0.1000\*HO +    0.1000\*HO2 +    0.0600\*HCHO  |   2.60E-13e<sup>  1300.00/T</sup> |   2.0351E-11 |
| TRP24   | LIMP2 + HO2 ----> VHOM  |   2.73E-13e<sup>  1300.00/T</sup> |   2.1369E-11 |
| TRP25   | LIMNP1 + HO2 ---->   0.7700\*VTRPN +    0.5000\*HO +    0.2300\*LIMAL +    0.2300\*NO2 +    0.2700\*HO2  |   2.71E-13e<sup>  1300.00/T</sup> |   2.1212E-11 |
| TRP26   | LIMNP2 + HO2 ----> VHOM  |   2.75E-13e<sup>  1300.00/T</sup> |   2.1525E-11 |
| TRP27   | PINALP + HO2 ---->   0.7500\*OPB +    0.2500\*HO +    0.2500\*VHOM  |   2.71E-13e<sup>  1300.00/T</sup> |   2.1212E-11 |
| TRP28   | LIMALP + HO2 ---->   0.9000\*OPB +    0.1000\*HO +    0.1000\*HO2 +    0.1000\*HCHO +    0.1000\*PAA  |   2.73E-13e<sup>  1300.00/T</sup> |   2.1369E-11 |
| R231   | ACO3 + HO2 ---->   0.4400\*HO +    0.4400\*MO2 +    0.4400\*CO2 +    0.1500\*ORA2 +    0.4100\*PAA  |   4.30E-13e<sup>  1040.00/T</sup> |   1.4072E-11 |
| R232   | RCO3 + HO2 ---->   0.4400\*HO +    0.4400\*ETHP +    0.4400\*CO2 +    0.1500\*ORA2 +    0.4100\*PAA  |   4.30E-13e<sup>  1040.00/T</sup> |   1.4072E-11 |
| R233   | ACTP + HO2 ---->   0.1500\*HO +    0.1500\*ACO3 +    0.1500\*HCHO +    0.8500\*OP2  |   1.15E-13e<sup>  1300.00/T</sup> |   9.0016E-12 |
| R234   | MEKP + HO2 ----> OP2  |   1.15E-13e<sup>  1300.00/T</sup> |   9.0016E-12 |
| R235   | KETP + HO2 ----> OP2  |   1.15E-13e<sup>  1300.00/T</sup> |   9.0016E-12 |
| R236   | MACP + HO2 ----> MAHP  |   1.82E-13e<sup>  1300.00/T</sup> |   1.4246E-11 |
| R237   | MCP + HO2 ----> MAHP  |   1.82E-13e<sup>  1300.00/T</sup> |   1.4246E-11 |
| R238   | MVKP + HO2 ----> OP2  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| R239   | UALP + HO2 ----> OP2  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| RBAL3   | BALP + HO2 ---->   0.4100\*VOP3 +    0.1500\*ORA2 +    0.1500\*O3 +    0.4400\*BAL1 +    0.4400\*HO +    0.4400\*CO2  |   2.38E-13e<sup>  1300.00/T</sup> |   1.8629E-11 |
| RBAL4   | BAL1 + HO2 ----> ORA2  |   2.11E-13e<sup>  1300.00/T</sup> |   1.6516E-11 |
| RBAL5   | BAL2 + O3 ----> BAL1  |   2.8600E-13 |   2.8600E-13 |
| R240   | ADDC + HO2 ----> OP2  |   3.75E-13e<sup>   980.00/T</sup> |   1.0035E-11 |
| R241   | CHO + HO2 ----> CSL  |   1.0000E-11 |   1.0000E-11 |
| R242   | MCTP + HO2 ----> OP2  |   3.75E-13e<sup>   980.00/T</sup> |   1.0035E-11 |
| R243   | ORAP + HO2 ----> OP2  |   1.15E-13e<sup>  1300.00/T</sup> |   9.0016E-12 |
| R244   | OLNN + HO2 ----> ONIT  |   1.66E-13e<sup>  1300.00/T</sup> |   1.2994E-11 |
| R245   | OLND + HO2 ----> ONIT  |   1.66E-13e<sup>  1300.00/T</sup> |   1.2994E-11 |
| R246   | ADCN + HO2 ----> ONIT  |   3.75E-13e<sup>   980.00/T</sup> |   1.0035E-11 |
| R247   | XO2 + HO2 ----> OP2  |   1.66E-13e<sup>  1300.00/T</sup> |   1.2994E-11 |
| R248   | MO2 + MO2 ---->   0.7400\*HO2 +    1.3700\*HCHO +    0.6300\*MOH  |   9.50E-14e<sup>   390.00/T</sup> |   3.5141E-13 |
| R249   | ETHP + MO2 ----> HO2 +    0.7500\*HCHO +    0.7500\*ACD +    0.2500\*MOH +    0.2500\*EOH  |   1.18E-13e<sup>   158.00/T</sup> |   2.0046E-13 |
| R250   | HC3P + MO2 ---->   0.8940\*HO2 +    0.0800\*MO2 +    0.0260\*ETHP +    0.0260\*XO2 +    0.8270\*HCHO +    0.1980\*ALD +    0.4970\*KET +    0.0500\*GLY +    0.2500\*MOH +    0.2500\*ROH  |   9.46E-14e<sup>   431.00/T</sup> |   4.0151E-13 |
| R251   | HC5P + MO2 ---->   0.8420\*HO2 +    0.0180\*MO2 +    0.1400\*ETHP +    0.1910\*XO2 +    0.7770\*HCHO +    0.2510\*ALD +    0.6180\*KET +    0.2500\*MOH +    0.2500\*ROH  |   1.00E-13e<sup>   467.00/T</sup> |   4.7890E-13 |
| R253   | ETEP + MO2 ----> HO2 +    1.9500\*HCHO +    0.1500\*ALD +    0.2500\*MOH +    0.2500\*ETEG  |   1.71E-13e<sup>   708.00/T</sup> |   1.8378E-12 |
| R254   | OLTP + MO2 ----> HO2 +    1.5000\*HCHO +    0.7050\*ALD +    0.0450\*KET +    0.2500\*MOH +    0.2500\*ROH  |   1.46E-13e<sup>   708.00/T</sup> |   1.5691E-12 |
| R255   | OLIP + MO2 ----> HO2 +    0.7500\*HCHO +    1.2800\*ALD +    0.2180\*KET +    0.2500\*MOH +    0.2500\*ROH  |   9.18E-14e<sup>   708.00/T</sup> |   9.8659E-13 |
| ROCARO35   | BENP + MO2 ---->   0.6800\*HCHO +    1.3700\*HO2 +    0.3200\*MOH +    0.0000\*BALD + GLY +    0.5000\*FURANONE +    0.2500\*DCB2 +    0.2500\*DCB3  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| ROCARO45   | TOLP + MO2 ---->   0.6800\*HCHO +    1.2846\*HO2 +    0.3200\*MOH +    0.0854\*BALD +    0.5488\*GLY +    0.3659\*MGLY +    0.3659\*FURANONE +    0.5488\*DCB1  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| ROCARO55   | XYLP + MO2 ---->   0.6800\*HCHO +    1.3218\*HO2 +    0.3200\*MOH +    0.0482\*BALD +    0.7043\*GLY +    0.2475\*MGLY +    0.3522\*FURANONE +    0.5996\*DCB2  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| ROCARO65   | EBZP + MO2 ---->   0.6800\*HCHO +    1.2846\*HO2 +    0.3200\*MOH +    0.0854\*BALD +    0.5488\*GLY +    0.3659\*MGLY +    0.4573\*FURANONE +    0.4573\*DCB2  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| R264   | ISOP + MO2 ----> HO2 +    1.3100\*HCHO +    0.1590\*MACR +    0.2500\*MVK +    0.2500\*MOH +    0.2500\*ROH +    0.0230\*ALD +    0.0180\*GLY +    0.0160\*HKET  |   3.40E-14e<sup>   221.00/T</sup> |   7.1350E-14 |
| R265   | APIP1 + MO2 ---->   1.0295\*HCHO +    0.2205\*LIMAL +    0.2730\*PINAL +    0.2385\*ALD +    0.0845\*OPB +    0.1105\*MOH +    0.1835\*KET +    0.0670\*ACT +    1.2790\*HO2  |   2.0000E-12 |   2.0000E-12 |
| TRP29   | APIP2 + MO2 ----> HO2 +    0.7500\*HCHO +    0.2500\*MOH + VHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP30   | APINP1 + MO2 ---->   0.3410\*VTRPN +    0.9640\*HCHO +    0.0430\*MOH +    0.9180\*HO2 +    0.6590\*NO2 +    0.5330\*PINAL +    0.0070\*KET +    0.1190\*ALD  |   2.0000E-12 |   2.0000E-12 |
| TRP31   | APINP2 + MO2 ---->   0.7500\*HO2 +    0.7500\*NO2 +    0.2500\*MOH +    0.7500\*HCHO + VHOM  |   1.0000E-10 |   1.0000E-10 |
| R266   | LIMP1 + MO2 ---->   0.2500\*MOH + LIMAL +    1.0300\*HCHO + HO2  |   2.0000E-12 |   2.0000E-12 |
| TRP32   | LIMP2 + MO2 ----> HO2 +    0.7500\*HCHO +    0.2500\*MOH + VHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP33   | LIMNP1 + MO2 ---->   0.6900\*VTRPN +    0.9100\*HCHO +    0.0900\*MOH +    1.0100\*HO2 +    0.3100\*LIMAL +    0.3100\*NO2  |   2.0000E-12 |   2.0000E-12 |
| TRP34   | LIMNP2 + MO2 ---->   0.7500\*HO2 +    0.7500\*HCHO +    0.7500\*NO2 +    0.2500\*MOH + VHOM  |   1.0000E-10 |   1.0000E-10 |
| R267   | ACO3 + MO2 ---->   0.9000\*HO2 +    0.9000\*MO2 +    0.9000\*CO2 + HCHO +    0.1000\*ORA2  |   2.00E-11e<sup>   500.00/T</sup> |   1.0699E-10 |
| R268   | RCO3 + MO2 ---->   0.9000\*HO2 +    0.9000\*MO2 +    0.4000\*CO2 + HCHO +    0.1000\*ORA2  |   2.00E-11e<sup>   500.00/T</sup> |   1.0699E-10 |
| R269   | ACTP + MO2 ---->   0.5000\*HO2 +    0.5000\*ACO3 +    1.5000\*HCHO +    0.2500\*MOH +    0.2500\*ROH +    0.1250\*ORA2  |   7.50E-13e<sup>   500.00/T</sup> |   4.0121E-12 |
| R270   | MEKP + MO2 ---->   0.8340\*HO2 + HCHO +    0.3340\*DCB1 +    0.2500\*MOH +    0.2500\*ROH  |   6.91E-13e<sup>   508.00/T</sup> |   3.7971E-12 |
| R271   | KETP + MO2 ----> HO2 +    0.7500\*HCHO +    0.5000\*DCB1 +    0.2500\*MOH +    0.2500\*ROH  |   6.91E-13e<sup>   508.00/T</sup> |   3.7971E-12 |
| R272   | MACP + MO2 ---->   0.5000\*HO2 +    0.2690\*ACO3 +    0.5000\*CO +    1.6600\*HCHO +    0.0670\*ORA2 +    0.2500\*MO2 +    0.2500\*MOH +    0.2500\*ROH  |   3.40E-14e<sup>   221.00/T</sup> |   7.1350E-14 |
| R273   | MCP + MO2 ----> HO2 +    1.5000\*HCHO +    0.5000\*HKET +    0.2500\*MOH +    0.2500\*ROH  |   3.40E-14e<sup>   221.00/T</sup> |   7.1350E-14 |
| R274   | MVKP + MO2 ----> HO2 +    1.1600\*ACO3 +    1.1600\*XO2 +    1.5000\*HCHO +    1.7500\*ALD +    0.5000\*MGLY +    0.2500\*MOH +    0.2500\*ROH +    0.2920\*ORA2  |   8.3700E-14 |   8.3700E-14 |
| R275   | UALP + MO2 ----> HO2 +    0.3050\*CO +    0.7730\*HCHO +    0.2030\*ALD +    0.5250\*KET +    0.1350\*GLY +    0.1050\*MGLY +    0.2500\*MOH +    0.2500\*ROH  |   3.40E-14e<sup>   221.00/T</sup> |   7.1350E-14 |
| R276   | BALP + MO2 ----> HO2 + BAL1 + HCHO + CO2  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| R277   | BAL1 + MO2 ----> HO2 + BAL2 + HCHO  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| R278   | ADDC + MO2 ---->   2.0000\*HO2 + HCHO +    0.3200\*HKET +    0.6800\*GLY +    0.6800\*OP2  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| R279   | MCTP + MO2 ----> HO2 + MCTO + HCHO  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| R280   | ORAP + MO2 ----> HCHO + HO2 + GLY  |   7.50E-13e<sup>   500.00/T</sup> |   4.0121E-12 |
| R281   | OLNN + MO2 ---->   2.0000\*HO2 + HCHO + ONIT  |   1.60E-13e<sup>   708.00/T</sup> |   1.7195E-12 |
| R282   | OLND + MO2 ---->   0.5000\*HO2 +    0.5000\*NO2 +    0.9650\*HCHO +    0.9300\*ALD +    0.3480\*KET +    0.2500\*MOH +    0.2500\*ROH +    0.5000\*ONIT  |   9.68E-14e<sup>   708.00/T</sup> |   1.0403E-12 |
| R283   | ADCN + MO2 ----> HO2 +    0.7000\*NO2 + HCHO +    0.7000\*GLY +    0.7000\*OP2 +    0.3000\*ONIT  |   3.5600E-14 |   3.5600E-14 |
| R284   | XO2 + MO2 ----> HO2 + HCHO  |   5.99E-15e<sup>  1510.00/T</sup> |   9.4829E-13 |
| R285   | ETHP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 + ACD +    0.5000\*ORA2 +    0.5000\*CO2  |   1.03E-12e<sup>   211.00/T</sup> |   2.0902E-12 |
| R286   | HC3P + ACO3 ---->   0.3940\*HO2 +    0.5800\*MO2 +    0.0260\*ETHP +    0.0260\*XO2 +    0.1300\*HCHO +    0.2730\*ALD +    0.6620\*KET +    0.0670\*GLY +    0.5000\*ORA2 +    0.5000\*CO2  |   6.90E-13e<sup>   460.00/T</sup> |   3.2277E-12 |
| R287   | HC5P + ACO3 ---->   0.3420\*HO2 +    0.5180\*MO2 +    0.1400\*ETHP +    0.1910\*XO2 +    0.0420\*HCHO +    0.3810\*ALD +    0.8240\*KET +    0.5000\*ORA2 +    0.5000\*CO2  |   5.59E-13e<sup>   522.00/T</sup> |   3.2194E-12 |
| R289   | ETEP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 +    1.6000\*HCHO +    0.2000\*ACD +    0.5000\*ORA2 +    0.5000\*CO2  |   9.48E-13e<sup>   765.00/T</sup> |   1.2335E-11 |
| R290   | OLTP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 + HCHO +    0.9400\*ALD +    0.0600\*KET +    0.5000\*ORA2 +    0.5000\*CO2  |   8.11E-13e<sup>   765.00/T</sup> |   1.0552E-11 |
| R291   | OLIP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 +    1.7100\*ALD +    0.2900\*KET +    0.5000\*ORA2 +    0.5000\*CO2  |   5.09E-13e<sup>   765.00/T</sup> |   6.6228E-12 |
| ROCARO36   | BENP + ACO3 ---->   0.7000\*MO2 + HO2 +    0.3000\*ORA2 +    0.0000\*BALD + GLY +    0.5000\*FURANONE +    0.2500\*DCB2 +    0.2500\*DCB3 +    0.7000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| ROCARO46   | TOLP + ACO3 ---->   0.7000\*MO2 +    0.9146\*HO2 +    0.3000\*ORA2 +    0.0854\*BALD +    0.5488\*GLY +    0.3659\*MGLY +    0.3659\*FURANONE +    0.5488\*DCB1 +    0.7000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| ROCARO56   | XYLP + ACO3 ---->   0.7000\*MO2 +    0.9518\*HO2 +    0.3000\*ORA2 +    0.0482\*BALD +    0.7043\*GLY +    0.2475\*MGLY +    0.3522\*FURANONE +    0.5996\*DCB2 +    0.7000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| ROCARO66   | EBZP + ACO3 ---->   0.7000\*MO2 +    0.9146\*HO2 +    0.3000\*ORA2 +    0.0854\*BALD +    0.5488\*GLY +    0.3659\*MGLY +    0.4573\*FURANONE +    0.4573\*DCB2 +    0.7000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| R300   | ISOP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 +    1.0480\*HCHO +    0.2190\*MACR +    0.3050\*MVK +    0.5000\*ORA2 +    0.5000\*CO2  |   8.40E-14e<sup>   221.00/T</sup> |   1.7628E-13 |
| R301   | APIP1 + ACO3 ---->   0.2535\*PINAL +    0.3710\*ALD +    0.0910\*OPB +    0.1165\*ACT +    0.1725\*LIMAL +    0.4030\*HCHO + HO2 + MO2 +    0.1120\*KET +    0.5000\*CO2  |   2.00E-12e<sup>   500.00/T</sup> |   1.0699E-11 |
| TRP35   | APIP2 + ACO3 ---->   0.5000\*HO +    0.5000\*MO2 +    0.5000\*ORA2 + VHOM +    0.5000\*CO2  |   1.0000E-10 |   1.0000E-10 |
| TRP36   | APINP1 + ACO3 ---->   0.8250\*NO2 +    0.6500\*PINAL + MO2 +    0.1750\*VTRPN +    0.1680\*ALD +    0.0070\*KET +    0.0070\*HCHO +    0.1750\*HO2 +    0.5000\*CO2  |   2.00E-12e<sup>   500.00/T</sup> |   1.0699E-11 |
| TRP37   | APINP2 + ACO3 ---->   0.5000\*NO2 +    0.5000\*MO2 +    0.5000\*ORA2 + VHOM +    0.5000\*CO2  |   1.0000E-10 |   1.0000E-10 |
| R302   | LIMP1 + ACO3 ----> LIMAL +    0.5600\*HCHO + HO2 + MO2 + CO2  |   2.00E-12e<sup>   500.00/T</sup> |   1.0699E-11 |
| TRP38   | LIMP2 + ACO3 ---->   0.5000\*HO +    0.5000\*MO2 +    0.5000\*ORA2 + VHOM +    0.5000\*CO2  |   1.0000E-10 |   1.0000E-10 |
| TRP39   | LIMNP1 + ACO3 ----> MO2 +    0.4600\*NO2 +    0.4600\*LIMAL +    0.5400\*VTRPN +    0.5400\*HO2 + CO2  |   2.00E-12e<sup>   500.00/T</sup> |   1.0699E-11 |
| TRP40   | LIMNP2 + ACO3 ---->   0.5000\*MO2 +    0.5000\*NO2 +    0.5000\*ORA2 + VHOM +    0.5000\*CO2  |   1.0000E-10 |   1.0000E-10 |
| R303   | ACO3 + ACO3 ---->   2.0000\*MO2 +    2.0000\*CO2  |   2.50E-12e<sup>   500.00/T</sup> |   1.3374E-11 |
| R304   | RCO3 + ACO3 ----> MO2 + ETHP +    2.0000\*CO2  |   2.50E-12e<sup>   500.00/T</sup> |   1.3374E-11 |
| R305   | ACTP + ACO3 ---->   0.5000\*MO2 +    0.5000\*ACO3 + HCHO +    0.7500\*ORA2 +    0.5000\*CO2  |   7.51E-13e<sup>   565.00/T</sup> |   4.9962E-12 |
| R306   | MEKP + ACO3 ---->   0.3300\*HO2 +    0.5000\*MO2 +    0.3300\*HCHO +    0.3340\*DCB1 +    0.5000\*ORA2 +    0.5000\*CO2  |   7.51E-13e<sup>   565.00/T</sup> |   4.9962E-12 |
| R307   | KETP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 +    0.5000\*DCB1 +    0.5000\*ORA2 +    0.5000\*CO2  |   7.51E-13e<sup>   565.00/T</sup> |   4.9962E-12 |
| R308   | MACP + ACO3 ---->   0.6350\*ORA2 +    0.5000\*MO2 +    0.2690\*ACO3 +    0.5000\*CO + HCHO +    0.5000\*CO2  |   8.40E-14e<sup>   221.00/T</sup> |   1.7628E-13 |
| R309   | MCP + ACO3 ---->   0.5000\*HO2 + HCHO +    0.5000\*HKET +    0.5000\*MO2 +    0.5000\*ORA2 +    0.5000\*CO2  |   8.40E-14e<sup>   221.00/T</sup> |   1.7628E-13 |
| R310   | MVKP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 +    1.1600\*ACO3 +    1.1600\*XO2 + HCHO +    2.3000\*ALD +    0.5000\*MGLY +    1.0830\*ORA2 +    0.5000\*CO2  |   1.68E-12e<sup>   500.00/T</sup> |   8.9872E-12 |
| R311   | UALP + ACO3 ---->   0.5000\*HO2 +    0.5000\*MO2 +    0.5000\*CO +    0.0300\*HCHO +    0.2700\*ALD +    0.7000\*KET +    0.1800\*GLY +    0.1050\*MGLY +    0.5000\*ORA2 +    0.5000\*CO2  |   1.68E-12e<sup>   500.00/T</sup> |   8.9872E-12 |
| R312   | BALP + ACO3 ----> MO2 + BAL1 +    2.0000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| R313   | BAL1 + ACO3 ----> MO2 + BAL2 + CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| R314   | ADDC + ACO3 ---->   2.0000\*HO2 + MO2 +    0.3200\*HKET +    0.6800\*GLY +    0.6800\*OP2 + CO2  |   7.40E-13e<sup>   708.00/T</sup> |   7.9529E-12 |
| R315   | MCTP + ACO3 ----> HO2 + MO2 + MCTO + CO2  |   7.40E-13e<sup>   708.00/T</sup> |   7.9529E-12 |
| R316   | ORAP + ACO3 ----> MO2 + GLY + CO2  |   7.51E-13e<sup>   565.00/T</sup> |   4.9962E-12 |
| R317   | OLNN + ACO3 ----> HO2 + MO2 + ONIT  |   8.85E-13e<sup>   765.00/T</sup> |   1.1515E-11 |
| R318   | OLND + ACO3 ---->   0.5000\*MO2 + NO2 +    0.2870\*HCHO +    1.2400\*ALD +    0.4640\*KET +    0.5000\*ORA2 +    0.5000\*CO2  |   5.37E-13e<sup>   765.00/T</sup> |   6.9871E-12 |
| R319   | ADCN + ACO3 ----> HO2 + MO2 +    0.7000\*NO2 +    0.7000\*GLY +    0.7000\*OP2 +    0.3000\*ONIT + CO2  |   7.40E-13e<sup>   708.00/T</sup> |   7.9529E-12 |
| R320   | XO2 + ACO3 ----> MO2 + CO2  |   3.40E-14e<sup>  1560.00/T</sup> |   6.3654E-12 |
| R321   | RCO3 + RCO3 ---->   2.0000\*ETHP +    2.0000\*CO2  |   2.50E-12e<sup>   500.00/T</sup> |   1.3374E-11 |
| R322   | MO2 + NO3 ----> HO2 + HCHO + NO2  |   1.2000E-12 |   1.2000E-12 |
| R323   | ETHP + NO3 ----> HO2 + NO2 + ACD  |   1.2000E-12 |   1.2000E-12 |
| R324   | HC3P + NO3 ---->   0.2540\*HO2 +    0.1400\*MO2 +    0.0920\*XO2 +    0.5030\*ETHP + NO2 +    0.5190\*ACD +    0.1470\*ALD +    0.0750\*MEK +    0.0950\*ACT  |   1.2000E-12 |   1.2000E-12 |
| R325   | HC5P + NO3 ---->   0.4880\*HO2 +    0.0550\*MO2 +    0.2800\*ETHP +    0.4850\*XO2 + NO2 +    0.0240\*HCHO +    0.2410\*ALD +    0.0600\*KET +    0.0630\*MEK +    0.2470\*ACT +    0.0480\*ACD +    0.2750\*HKET  |   1.2000E-12 |   1.2000E-12 |
| R327   | ETEP + NO3 ----> HO2 + NO2 +    1.6000\*HCHO +    0.2000\*ALD  |   1.2000E-12 |   1.2000E-12 |
| R328   | OLTP + NO3 ---->   0.4700\*ALD +    0.7900\*HCHO +    0.7900\*HO2 + NO2 +    0.1800\*MEK +    0.0200\*ACD +    0.0900\*ACT  |   1.2000E-12 |   1.2000E-12 |
| R329   | OLIP + NO3 ---->   0.8600\*HO2 +    0.7200\*ALD +    0.1100\*KET + NO2 +    0.2000\*ACT +    0.8500\*ACD +    0.0400\*HKET  |   1.2000E-12 |   1.2000E-12 |
| ROCARO34   | BENP + NO3 ----> NO2 + HO2 +    0.0000\*BALD + GLY +    0.5000\*FURANONE +    0.2500\*DCB2 +    0.2500\*DCB3  |   2.3000E-12 |   2.3000E-12 |
| ROCARO44   | TOLP + NO3 ----> NO2 +    0.9146\*HO2 +    0.0854\*BALD +    0.5488\*GLY +    0.3659\*MGLY +    0.3659\*FURANONE +    0.5488\*DCB1  |   2.3000E-12 |   2.3000E-12 |
| ROCARO54   | XYLP + NO3 ----> NO2 +    0.9518\*HO2 +    0.0482\*BALD +    0.7043\*GLY +    0.2475\*MGLY +    0.3522\*FURANONE +    0.5996\*DCB2  |   2.3000E-12 |   2.3000E-12 |
| ROCARO64   | EBZP + NO3 ----> NO2 +    0.9146\*HO2 +    0.0854\*BALD +    0.5488\*GLY +    0.3659\*MGLY +    0.4573\*FURANONE +    0.4573\*DCB2  |   2.3000E-12 |   2.3000E-12 |
| R338   | ISOP + NO3 ----> HO2 + NO2 +    0.7500\*HCHO +    0.3180\*MACR +    0.5000\*MVK +    0.0240\*GLY +    0.0330\*HKET +    0.0310\*ALD  |   1.2000E-12 |   1.2000E-12 |
| R339   | APIP1 + NO3 ----> NO2 + HO2 +    0.2535\*PINAL +    0.3710\*ALD +    0.1165\*ACT +    0.1725\*LIMAL +    0.4030\*HCHO +    0.0910\*OPB +    0.1120\*KET  |   2.3000E-12 |   2.3000E-12 |
| R340   | LIMP1 + NO3 ----> HO2 + NO2 + LIMAL +    0.5600\*HCHO  |   2.3000E-12 |   2.3000E-12 |
| TRP53   | APINP1 + NO3 ---->   1.8250\*NO2 +    0.6500\*PINAL +    0.1750\*VTRPN +    0.1680\*ALD +    0.0070\*KET +    0.0070\*HCHO +    0.1750\*HO2  |   2.3000E-12 |   2.3000E-12 |
| TRP54   | LIMNP1 + NO3 ---->   1.4600\*NO2 +    0.4600\*LIMAL +    0.5400\*VTRPN +    0.5400\*HO2  |   2.3000E-12 |   2.3000E-12 |
| R341   | ACO3 + NO3 ----> MO2 + NO2 + CO2  |   4.0000E-12 |   4.0000E-12 |
| R342   | RCO3 + NO3 ----> ETHP + NO2  |   4.0000E-12 |   4.0000E-12 |
| R343   | ACTP + NO3 ----> ACO3 + NO2 + HCHO  |   1.2000E-12 |   1.2000E-12 |
| R344   | MEKP + NO3 ---->   0.6700\*HO2 + NO2 +    0.3300\*HCHO +    0.6700\*DCB1  |   1.2000E-12 |   1.2000E-12 |
| R345   | KETP + NO3 ----> HO2 + NO2 + DCB1  |   1.2000E-12 |   1.2000E-12 |
| R346   | MACP + NO3 ----> HCHO +    0.5380\*ACO3 + CO + NO2  |   1.2000E-12 |   1.2000E-12 |
| R347   | MCP + NO3 ----> NO2 + HO2 + HCHO + HKET  |   1.2000E-12 |   1.2000E-12 |
| R348   | MVKP + NO3 ---->   0.3000\*HO2 +    0.7000\*ACO3 +    0.7000\*XO2 + NO2 +    0.3000\*HCHO +    0.7000\*ALD +    0.3000\*MGLY  |   2.5000E-12 |   2.5000E-12 |
| R349   | UALP + NO3 ----> HO2 + NO2 +    0.6100\*CO +    0.0300\*HCHO +    0.2700\*ALD +    0.7000\*KET +    0.1800\*GLY +    0.2100\*MGLY  |   2.5000E-12 |   2.5000E-12 |
| R350   | BALP + NO3 ----> BAL1 + NO2 + CO2  |   2.5000E-12 |   2.5000E-12 |
| R351   | BAL1 + NO3 ----> BAL2 + NO2  |   2.5000E-12 |   2.5000E-12 |
| R352   | ADDC + NO3 ----> HO2 + NO2 +    0.3200\*HKET +    0.6800\*GLY +    0.6800\*OP2  |   1.2000E-12 |   1.2000E-12 |
| R353   | MCTP + NO3 ----> NO2 + MCTO  |   1.2000E-12 |   1.2000E-12 |
| R354   | ORAP + NO3 ----> NO2 + GLY + HO2  |   1.2000E-12 |   1.2000E-12 |
| R355   | OLNN + NO3 ----> HO2 + NO2 + ONIT  |   1.2000E-12 |   1.2000E-12 |
| R356   | OLND + NO3 ---->   2.0000\*NO2 +    0.2870\*HCHO +    1.2400\*ALD +    0.4640\*KET  |   1.2000E-12 |   1.2000E-12 |
| R357   | ADCN + NO3 ---->   2.0000\*NO2 + GLY + OP2  |   1.2000E-12 |   1.2000E-12 |
| R358   | OLNN + OLNN ----> HO2 +    2.0000\*ONIT  |   7.00E-14e<sup>  1000.00/T</sup> |   2.0032E-12 |
| R359   | OLNN + OLND ---->   0.5000\*HO2 +    0.5000\*NO2 +    0.2020\*HCHO +    0.6400\*ALD +    0.1490\*KET +    1.5000\*ONIT  |   4.25E-14e<sup>  1000.00/T</sup> |   1.2162E-12 |
| R360   | OLND + OLND ----> NO2 +    0.5040\*HCHO +    1.2100\*ALD +    0.2850\*KET + ONIT  |   2.96E-14e<sup>  1000.00/T</sup> |   8.4708E-13 |
| R361   | XO2 + NO3 ----> NO2  |   1.2000E-12 |   1.2000E-12 |
| R362   | XO2 + RCO3 ----> ETHP + CO2  |   2.50E-12e<sup>   500.00/T</sup> |   1.3374E-11 |
| R363   | XO2 + XO2 ----> |   7.13E-17e<sup>  2950.00/T</sup> |   1.4130E-12 |
| TRP41   | APIP2 + APIP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*PINAL +    0.4800\*HO +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP42   | APIP2 + LIMP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*LIMAL +    0.4800\*HO +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP43   | APIP2 + ISOP ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*HCHO +    0.4800\*MVK +    0.4800\*HO +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP44   | LIMP2 + APIP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*PINAL +    0.4800\*HO +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP45   | LIMP2 + LIMP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*LIMAL +    0.4800\*HO +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP46   | LIMP2 + ISOP ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*HCHO +    0.4800\*MVK +    0.4800\*HO +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP47   | APINP2 + APIP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*PINAL +    0.4800\*NO2 +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP48   | APINP2 + LIMP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*LIMAL +    0.4800\*NO2 +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP49   | APINP2 + ISOP ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*HCHO +    0.4800\*MVK +    0.4800\*NO2 +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP50   | LIMNP2 + APIP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*PINAL +    0.4800\*NO2 +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP51   | LIMNP2 + LIMP1 ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*LIMAL +    0.4800\*NO2 +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| TRP52   | LIMNP2 + ISOP ---->   0.9600\*VHOM +    0.4800\*ROH +    0.4800\*HCHO +    0.4800\*MVK +    0.4800\*NO2 +    0.4800\*HO2 +    0.0400\*VELHOM  |   1.0000E-10 |   1.0000E-10 |
| RAM17   | IEPOX + HO ----> HO  |   5.78E-11e<sup>  -400.00/T</sup> |   1.5110E-11 |
| R001c   | VROCIOXY + HO ---->   0.8520\*ETHP +    0.1490\*ASOATJ  |   6.8900E-12 |   6.8900E-12 |
| R002c   | SLOWROC + HO ----> ETHP +    0.0010\*ASOATJ  |   6.5500E-14 |   6.5500E-14 |
| T17   | ACRO + HO ---->   0.5700\*MACP +    0.4300\*MCP  |   8.00E-12e<sup>   380.00/T</sup> |   2.8616E-11 |
| T18   | ACRO + O3 ---->   0.8400\*CO +    0.5600\*HO2 +    0.2800\*HO +    0.7200\*HCHO +    0.6200\*GLY +    0.2000\*CO2  |   2.9000E-19 |   2.9000E-19 |
| T19   | ACRO + NO3 ---->   0.6800\*HCHO +    0.3200\*MACP +    0.6800\*XO2 +    0.6800\*MGLY +    0.3200\*HNO3 +    0.6800\*NO2  |   3.4000E-15 |   3.4000E-15 |
| T20   | ACRO ----> CO +    0.4770\*HO2 +    0.2500\*ETE +    0.3540\*ACO3 +    0.2040\*HO +    0.1500\*HCHO +    0.0270\*MO2  | ACRO_09 | Not Available<sup>1</sup> | 
| T10   | BDE13 + HO ---->   0.6670\*BDE13P +    0.3330\*UALD +    0.3330\*HO2  |   1.48E-11e<sup>   448.00/T</sup> |   6.6502E-11 |
| T10a   | BDE13P + NO ---->   0.9680\*HO2 +    0.9680\*NO2 +    0.8950\*ACRO +    0.8950\*HCHO +    0.0720\*FURAN +    0.0320\*ONIT  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| T10b   | BDE13P + NO3 ----> HO2 + NO2 +    0.9250\*ACRO +    0.9250\*HCHO +    0.0750\*FURAN  |   2.3000E-12 |   2.3000E-12 |
| T10c   | BDE13P + HO2 ----> OP2  |   1.93E-13e<sup>  1300.00/T</sup> |   1.5107E-11 |
| T10d   | BDE13P + MO2 ---->   0.3200\*MOH +    1.1430\*HCHO +    0.8700\*HO2 +    0.4630\*ACRO +    0.2500\*OLT +    0.2310\*MVK +    0.0370\*FURAN +    0.0190\*UALD  |   2.3900E-12 |   2.3900E-12 |
| T10e   | BDE13P + ACO3 ---->   0.7000\*MO2 +    0.3000\*ORA2 +    0.8000\*HO2 +    0.7400\*ACRO +    0.7400\*HCHO +    0.1850\*MVK +    0.0600\*FURAN +    0.0150\*UALD +    0.7000\*CO2  |   1.3700E-11 |   1.3700E-11 |
| T11   | BDE13 + O3 ---->   0.6200\*ACRO +    0.6300\*CO +    0.4200\*HO2 +    0.0800\*HO +    0.8300\*HCHO +    0.1700\*ETE  |   1.34E-14e<sup> -2283.00/T</sup> |   6.3331E-18 |
| T12   | BDE13 + NO3 ---->   0.9000\*OLNN +    0.1000\*OLND +    0.9000\*ACRO  |   1.0000E-13 |   1.0000E-13 |
| R003c   | FURAN + HO ---->   0.4900\*DCB1 +    0.4900\*HO2 +    0.5100\*FURANO2  |   5.0100E-11 |   5.0100E-11 |
| R004c   | FURANO2 + NO ---->   0.0800\*ONIT +    0.9200\*NO2 +    0.9200\*FURANONE +    0.7500\*HO2 +    0.1700\*MO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R005c   | FURANO2 + HO2 ---->   0.6000\*OP2 +    0.4000\*FURANONE +    0.4000\*HO +    0.3200\*HO2 +    0.0800\*MO2  |   3.75E-13e<sup>   980.00/T</sup> |   1.0035E-11 |
| R006c   | FURANONE + HO ---->   0.6500\*KET +    0.3100\*GLY +    0.6600\*HO2 +    0.3400\*MO2 +    0.4300\*CO +    0.0400\*ASOATJ  |   4.4000E-11 |   4.4000E-11 |
| R007c   | FURAN + O3 ---->   0.0200\*HO + ALD  |   3.4300E-17 |   3.4300E-17 |
| R008c   | FURAN + NO3 ----> NO2 +    0.8000\*DCB1 +    0.2000\*DCB3  |   8.9900E-12 |   8.9900E-12 |
| R010c   | PROG + HO ---->   0.6130\*HKET +    0.3870\*ALD + HO2  |   1.2000E-11 |   1.2000E-11 |
| R011c   | SESQ + NO3 ----> SESQNRO2  |   1.9000E-11 |   1.9000E-11 |
| R012c   | SESQNRO2 + HO2 ----> VROCP0OXY4  |   2.84E-13e<sup>  1300.00/T</sup> |   2.2230E-11 |
| R013c   | SESQNRO2 + NO ----> VROCP3OXY2 +    2.0000\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| R014c   | SESQNRO2 + NO3 ----> VROCP3OXY2 +    2.0000\*NO2  |   2.3000E-12 |   2.3000E-12 |
| R015c   | SESQ + O3 ---->   0.9820\*VROCP3OXY2 +    0.0180\*VROCN2OXY2  |   1.2000E-14 |   1.2000E-14 |
| R016c   | SESQ + HO ----> SESQRO2  |   1.9700E-10 |   1.9700E-10 |
| R017c   | SESQRO2 + HO2 ----> VROCP0OXY2  |   2.84E-13e<sup>  1300.00/T</sup> |   2.2230E-11 |
| R019c   | SESQRO2 + NO3 ----> VROCP3OXY2  |   2.3000E-12 |   2.3000E-12 |
| R020c   | SESQRO2 + NO ---->   0.2470\*VROCP1OXY3 +    0.7530\*VROCP3OXY2 +    0.7530\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| HET_GLY   | GLY ----> AGLYOLIGJ  | HETERO_GLY | Not Available<sup>2</sup> | 
| HET_MGLY   | MGLY ----> AGLYOLIGJ  | HETERO_MGLY | Not Available<sup>2</sup> | 
| HET_NO2   | NO2 ---->   0.5000\*HONO +    0.5000\*HNO3  | HETERO_NO2 | Not Available<sup>2</sup> | 
| HET_HO2   | HO2 ----> | HETERO_HO2 | Not Available<sup>2</sup> | 
| HET_NO3   | NO3 ----> HNO3  | HETERO_NO3 | Not Available<sup>2</sup> | 
| HET_IEPOX   | IEPOX ----> IEPOXP  | HETERO_IEPOX | Not Available<sup>2</sup> | 
| HET_ISO3TET   | IEPOXP ----> AISO3NOSJ  | HETERO_ISO3NOSJ | Not Available<sup>2</sup> | 
| HET_IEPOXOS   | IEPOXP + ASO4J ----> AISO3OSJ  | HETERO_ISO3OSJ | Not Available<sup>2</sup> | 
| HET_IPX   | IPX ----> AISO4J  |   2.0000E+00\*HETERO_IEPOX | Not Available<sup>2</sup> | 
| HET_INALD   | INALD ----> AISO5J + HNO3  |   5.0000E-01\*HETERO_IEPOX | Not Available<sup>2</sup> | 
| ROCALK1c   | VROCP6ALK + HO ----> VROCP6ALKP  |   1.5300E-11 |   1.5300E-11 |
| ROCALK2c   | VROCP5ALK + HO ----> VROCP5ALKP  |   1.6800E-11 |   1.6800E-11 |
| ROCALK3c   | VROCP4ALK + HO ----> VROCP4ALKP  |   2.2400E-11 |   2.2400E-11 |
| ROCALK4c   | VROCP3ALK + HO ----> VROCP3ALKP  |   2.6700E-11 |   2.6700E-11 |
| ROCALK5c   | VROCP2ALK + HO ----> VROCP2ALKP  |   3.0900E-11 |   3.0900E-11 |
| ROCALK6c   | VROCP1ALK + HO ----> VROCP1ALKP  |   3.3800E-11 |   3.3800E-11 |
| HC1001   | HC10 + HO ----> HC10P  |   1.1000E-11 |   1.1000E-11 |
| ROCALK7c   | VROCP6ALKP + NO ---->   0.7200\*VROCP6ALKP2 +    0.2800\*VROCP4OXY2 +    0.7200\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK8c   | VROCP5ALKP + NO ---->   0.7200\*VROCP5ALKP2 +    0.2800\*VROCP3OXY2 +    0.7200\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK9c   | VROCP4ALKP + NO ---->   0.7200\*VROCP4ALKP2 +    0.2800\*VROCP2OXY2 +    0.7200\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK10c   | VROCP3ALKP + NO ---->   0.7200\*VROCP3ALKP2 +    0.2800\*VROCP1OXY1 +    0.7200\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK11c   | VROCP2ALKP + NO ---->   0.7200\*VROCP2ALKP2 +    0.2800\*VROCP0OXY2 +    0.7200\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK12c   | VROCP1ALKP + NO ---->   0.7200\*VROCP1ALKP2 +    0.2800\*VROCN1OXY1 +    0.7200\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| HC1002   | HC10P + NO ---->   0.7400\*HC10P2 +    0.2600\*ONIT +    0.7400\*NO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK13c   | VROCP6ALKP + NO3 ----> VROCP6ALKP2 + NO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK14c   | VROCP5ALKP + NO3 ----> VROCP5ALKP2 + NO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK15c   | VROCP4ALKP + NO3 ----> VROCP4ALKP2 + NO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK16c   | VROCP3ALKP + NO3 ----> VROCP3ALKP2 + NO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK17c   | VROCP2ALKP + NO3 ----> VROCP2ALKP2 + NO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK18c   | VROCP1ALKP + NO3 ----> VROCP1ALKP2 + NO2  |   2.3000E-12 |   2.3000E-12 |
| HC1003   | HC10P + NO3 ----> HC10P2 + NO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK19c   | VROCP6ALKP + HO2 ----> VROCP3OXY2  |   2.68E-13e<sup>  1300.00/T</sup> |   2.0978E-11 |
| ROCALK20c   | VROCP5ALKP + HO2 ----> VROCP2OXY2  |   2.71E-13e<sup>  1300.00/T</sup> |   2.1212E-11 |
| ROCALK21c   | VROCP4ALKP + HO2 ----> VROCP1OXY1  |   2.78E-13e<sup>  1300.00/T</sup> |   2.1760E-11 |
| ROCALK22c   | VROCP3ALKP + HO2 ----> VROCP0OXY2  |   2.80E-13e<sup>  1300.00/T</sup> |   2.1917E-11 |
| ROCALK23c   | VROCP2ALKP + HO2 ----> VROCN1OXY1  |   2.81E-13e<sup>  1300.00/T</sup> |   2.1995E-11 |
| ROCALK24c   | VROCP1ALKP + HO2 ----> VROCN2OXY2  |   2.81E-13e<sup>  1300.00/T</sup> |   2.1995E-11 |
| HC1004   | HC10P + HO2 ----> OP2  |   2.66E-13e<sup>  1300.00/T</sup> |   2.0821E-11 |
| ROCALK25c   | VROCP6ALKP2 ----> HO2 + VROCP3OXY2  |   1.8800E-01 |   1.8800E-01 |
| ROCALK26c   | VROCP5ALKP2 ----> HO2 + VROCP2OXY2  |   1.8800E-01 |   1.8800E-01 |
| ROCALK27c   | VROCP4ALKP2 ----> HO2 + VROCP1OXY1  |   1.8800E-01 |   1.8800E-01 |
| ROCALK28c   | VROCP3ALKP2 ----> HO2 + VROCP0OXY2  |   1.8800E-01 |   1.8800E-01 |
| ROCALK29c   | VROCP2ALKP2 ----> HO2 + VROCN1OXY1  |   1.8800E-01 |   1.8800E-01 |
| ROCALK30c   | VROCP1ALKP2 ----> HO2 + VROCN2OXY2  |   1.8800E-01 |   1.8800E-01 |
| HC1005   | HC10P2 ----> HO2 + VROCP4OXY2  |   1.8800E-01 |   1.8800E-01 |
| ROCALK31c   | VROCP6ALKP2 + NO ---->   0.1400\*VROCP2OXY2 +    0.8600\*NO2 +    0.8600\*VROCP3OXY2 +    0.8600\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK32c   | VROCP5ALKP2 + NO ---->   0.1400\*VROCP1OXY3 +    0.8600\*NO2 +    0.8600\*VROCP2OXY2 +    0.8600\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK33c   | VROCP4ALKP2 + NO ---->   0.1400\*VROCP0OXY2 +    0.8600\*NO2 +    0.8600\*VROCP1OXY1 +    0.8600\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK34c   | VROCP3ALKP2 + NO ---->   0.1400\*VROCN1OXY1 +    0.8600\*NO2 +    0.8600\*VROCP0OXY2 +    0.8600\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK35c   | VROCP2ALKP2 + NO ---->   0.1400\*VROCN2OXY2 +    0.8600\*NO2 +    0.8600\*VROCN1OXY1 +    0.8600\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK36c   | VROCP1ALKP2 + NO ----> VROCN2OXY2 +    0.8600\*NO2 +    0.8600\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| HC1006   | HC10P2 + NO ---->   0.1200\*ONIT +    0.8800\*NO2 +    0.8800\*KET +    0.8800\*HO2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCALK37c   | VROCP6ALKP2 + NO3 ----> NO2 + VROCP3OXY2 + HO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK38c   | VROCP5ALKP2 + NO3 ----> NO2 + VROCP2OXY2 + HO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK39c   | VROCP4ALKP2 + NO3 ----> NO2 + VROCP1OXY1 + HO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK40c   | VROCP3ALKP2 + NO3 ----> NO2 + VROCP0OXY2 + HO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK41c   | VROCP2ALKP2 + NO3 ----> NO2 + VROCN1OXY1 + HO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK42c   | VROCP1ALKP2 + NO3 ----> NO2 + VROCN2OXY2 + HO2  |   2.3000E-12 |   2.3000E-12 |
| HC1007   | HC10P2 + NO3 ----> NO2 + KET + HO2  |   2.3000E-12 |   2.3000E-12 |
| ROCALK43c   | VROCP6ALKP2 + HO2 ----> VROCP1OXY3  |   2.71E-13e<sup>  1300.00/T</sup> |   2.1212E-11 |
| ROCALK44c   | VROCP5ALKP2 + HO2 ----> VROCP0OXY2  |   2.73E-13e<sup>  1300.00/T</sup> |   2.1369E-11 |
| ROCALK45c   | VROCP4ALKP2 + HO2 ----> VROCN1OXY1  |   2.78E-13e<sup>  1300.00/T</sup> |   2.1760E-11 |
| ROCALK46c   | VROCP3ALKP2 + HO2 ----> VROCN2OXY2  |   2.80E-13e<sup>  1300.00/T</sup> |   2.1917E-11 |
| ROCALK47c   | VROCP2ALKP2 + HO2 ----> VROCN2OXY2  |   2.81E-13e<sup>  1300.00/T</sup> |   2.1995E-11 |
| ROCALK48c   | VROCP1ALKP2 + HO2 ----> VROCN2OXY2  |   2.82E-13e<sup>  1300.00/T</sup> |   2.2073E-11 |
| HC1008   | HC10P2 + HO2 ----> VROCP2OXY2  |   2.66E-13e<sup>  1300.00/T</sup> |   2.0821E-11 |
| ROCARO01   | VROCP6ARO + HO ---->   0.8400\*VROCP6AROP +    0.1600\*HO2 +    0.1600\*VROCP4OXY2  |   1.8100E-11 |   1.8100E-11 |
| ROCARO02   | VROCP6AROP + HO2 ---->   0.0595\*VROCP4OXY2 +    0.9048\*VROCP1OXY3 +    0.0357\*VROCN2OXY4  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| ROCARO03   | VROCP6AROP + NO ---->   0.0001\*VROCP4OXY2 +    0.0018\*VROCP2OXY2 +    0.0001\*VROCN1OXY3 +    0.9980\*NO2 +    0.9980\*HO2 +    0.0594\*BALD +    0.4693\*GLY +    0.4693\*MGLY +    0.4693\*FURANONE +    0.4693\*DCB2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO04   | VROCP6AROP + NO3 ----> NO2 +    0.9405\*HO2 +    0.0595\*BALD +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2  |   2.3000E-12 |   2.3000E-12 |
| ROCARO05   | VROCP6AROP + MO2 ---->   0.6800\*HCHO +    1.3105\*HO2 +    0.3200\*MOH +    0.0595\*BALD +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| ROCARO06   | VROCP6AROP + ACO3 ---->   0.7000\*MO2 +    0.9405\*HO2 +    0.3000\*ORA2 +    0.0595\*BALD +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2 +    0.7000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| ROCARO11   | VROCP5ARO + HO ---->   0.8400\*VROCP5AROP +    0.1600\*HO2 +    0.1600\*VROCP3OXY2  |   1.8100E-11 |   1.8100E-11 |
| ROCARO12   | VROCP5AROP + HO2 ---->   0.0595\*VROCP3OXY2 +    0.9048\*VROCP0OXY2 +    0.0357\*VROCN2OXY4  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| ROCARO13   | VROCP5AROP + NO ---->   0.0001\*VROCP3OXY2 +    0.0018\*VROCP1OXY3 +    0.0001\*VROCN2OXY4 +    0.9980\*NO2 +    0.9980\*HO2 +    0.0594\*VROCP4OXY2 +    0.4693\*GLY +    0.4693\*MGLY +    0.4693\*FURANONE +    0.4693\*DCB2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO14   | VROCP5AROP + NO3 ----> NO2 +    0.9405\*HO2 +    0.0595\*VROCP4OXY2 +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2  |   2.3000E-12 |   2.3000E-12 |
| ROCARO15   | VROCP5AROP + MO2 ---->   0.6800\*HCHO +    1.3105\*HO2 +    0.3200\*MOH +    0.0595\*VROCP4OXY2 +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| ROCARO16   | VROCP5AROP + ACO3 ---->   0.7000\*MO2 +    0.9405\*HO2 +    0.3000\*ORA2 +    0.0595\*VROCP4OXY2 +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2 +    0.7000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| ROCARO21   | NAPH + HO ---->   0.8400\*NAPHP +    0.1600\*HO2 +    0.1600\*VROCP3OXY2  |   2.3100E-11 |   2.3100E-11 |
| ROCARO22   | NAPHP + HO2 ---->   0.0595\*VROCP3OXY2 +    0.9048\*VROCP1OXY3 +    0.0357\*VROCN2OXY8  |   2.91E-13e<sup>  1300.00/T</sup> |   2.2778E-11 |
| ROCARO23   | NAPHP + NO ---->   0.0595\*VROCP4OXY2 +    0.0018\*VROCP2OXY2 +    0.0001\*VROCN2OXY8 +    0.9980\*NO2 +    0.9980\*HO2 +    0.4693\*GLY +    0.4693\*MGLY +    0.4693\*FURANONE +    0.4693\*DCB2  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO24   | NAPHP + NO3 ----> NO2 +    0.9405\*HO2 +    0.0595\*VROCP4OXY2 +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2  |   2.3000E-12 |   2.3000E-12 |
| ROCARO25   | NAPHP + MO2 ---->   0.6800\*HCHO +    1.3105\*HO2 +    0.3200\*MOH +    0.0595\*VROCP4OXY2 +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2  |   3.56E-14e<sup>   708.00/T</sup> |   3.8260E-13 |
| ROCARO26   | NAPHP + ACO3 ---->   0.7000\*MO2 +    0.9405\*HO2 +    0.3000\*ORA2 +    0.0595\*VROCP4OXY2 +    0.4702\*GLY +    0.4702\*MGLY +    0.4702\*FURANONE +    0.4702\*DCB2 +    0.7000\*CO2  |   7.40E-13e<sup>   765.00/T</sup> |   9.6284E-12 |
| ROCOXY1c   | VROCN2OXY8 + HO ---->   0.0854\*VROCN2OXY8 +    0.2581\*MEK +    0.2581\*KET +    0.2581\*HCHO +    0.1291\*ACD +    0.2581\*ALD +    0.2581\*MO2 +    0.2581\*ETHP +    0.2581\*HC3P +    0.2581\*MEKP  |   5.9000E-11 |   5.9000E-11 |
| ROCOXY2c   | VROCN2OXY4 + HO ---->   0.8083\*VROCN2OXY8 +    0.3130\*VROCN2OXY4 +    0.0016\*VROCN1OXY6 +    0.0794\*MEK +    0.0794\*KET +    0.0794\*HCHO +    0.0397\*ACD +    0.0794\*ALD +    0.0794\*MO2 +    0.0794\*ETHP +    0.0794\*HC3P +    0.0794\*MEKP +    0.0794\*KETP  |   6.0700E-11 |   6.0700E-11 |
| ROCOXY3c   | VROCN2OXY2 + HO ---->   0.1156\*VROCN2OXY8 +    0.6895\*VROCN2OXY4 +    0.2642\*VROCN2OXY2 +    0.0663\*VROCN1OXY6 +    0.0635\*VROCN1OXY3 +    0.0950\*VROCP0OXY4 +    0.0332\*VOP3 +    0.0390\*MEK +    0.0390\*KET +    0.0390\*HCHO +    0.0195\*ACD +    0.0390\*ALD +    0.0390\*MO2 +    0.0390\*ETHP +    0.0390\*HC3P +    0.0390\*MEKP +    0.0390\*KETP  |   5.5400E-11 |   5.5400E-11 |
| ROCOXY4c   | VROCN1OXY6 + HO ---->   0.2036\*VROCN2OXY8 +    0.0071\*VROCN2OXY4 +    0.1446\*VOP3 +    0.1840\*MEK +    0.1840\*KET +    0.1840\*HCHO +    0.0920\*ACD +    0.1840\*ALD +    0.1840\*MO2 +    0.1840\*ETHP +    0.1840\*HC3P +    0.1840\*MEKP +    0.1840\*KETP  |   5.6300E-11 |   5.6300E-11 |
| ROCOXY5c   | VROCN1OXY3 + HO ---->   0.3609\*VROCN2OXY8 +    0.5200\*VROCN2OXY4 +    0.0088\*VROCN2OXY2 +    0.1452\*VROCN1OXY6 +    0.0420\*VROCN1OXY3 +    0.0524\*VROCP0OXY4 +    0.0646\*MEK +    0.0646\*KET +    0.0646\*HCHO +    0.0323\*ACD +    0.0646\*ALD +    0.0646\*MO2 +    0.0646\*ETHP +    0.0646\*HC3P +    0.0646\*MEKP +    0.0646\*KETP  |   5.4600E-11 |   5.4600E-11 |
| ROCOXY6c   | VROCN1OXY1 + HO ---->   0.0074\*VROCN2OXY8 +    0.1190\*VROCN2OXY4 +    0.7673\*VROCN2OXY2 +    0.0132\*VROCN1OXY6 +    0.0614\*VROCN1OXY3 +    0.0305\*VROCN1OXY1 +    0.0367\*VROCP0OXY4 +    0.0605\*VROCP0OXY2 +    0.0488\*VROCP1OXY3 +    0.0202\*VROCP1OXY1 +    0.0584\*VROCP2OXY2 +    0.0375\*VROCP3OXY2 +    0.0074\*VROCP4OXY2 +    0.0179\*VOP3 +    0.0258\*OP2 +    0.0244\*MEK +    0.0244\*KET +    0.0244\*HCHO +    0.0122\*ACD +    0.0244\*ALD +    0.0244\*MO2 +    0.0244\*ETHP +    0.0244\*HC3P +    0.0244\*MEKP +    0.0244\*KETP  |   4.5000E-11 |   4.5000E-11 |
| ROCOXY7c   | VROCP0OXY4 + HO ---->   0.3695\*VROCN2OXY8 +    0.1291\*VROCN2OXY4 +    0.1547\*VROCN1OXY6 +    0.0822\*VROCN1OXY3 +    0.0400\*VROCP0OXY4 +    0.1068\*MEK +    0.1068\*KET +    0.1068\*HCHO +    0.0534\*ACD +    0.1068\*ALD +    0.1068\*MO2 +    0.1068\*ETHP +    0.1068\*HC3P +    0.1068\*MEKP +    0.1068\*KETP  |   5.1700E-11 |   5.1700E-11 |
| ROCOXY8c   | VROCP0OXY2 + HO ---->   0.0738\*VROCN2OXY8 +    0.4667\*VROCN2OXY4 +    0.1222\*VROCN2OXY2 +    0.0453\*VROCN1OXY6 +    0.1516\*VROCN1OXY3 +    0.0050\*VROCN1OXY1 +    0.1332\*VROCP0OXY4 +    0.0104\*VROCP0OXY2 +    0.0321\*VROCP1OXY3 +    0.0140\*VROCP1OXY1 +    0.0240\*VROCP2OXY2 +    0.0595\*VOP3 +    0.0445\*MEK +    0.0445\*KET +    0.0445\*HCHO +    0.0222\*ACD +    0.0445\*ALD +    0.0445\*MO2 +    0.0445\*ETHP +    0.0445\*HC3P +    0.0445\*MEKP +    0.0445\*KETP  |   4.7300E-11 |   4.7300E-11 |
| ROCOXY9c   | VROCP1OXY3 + HO ---->   0.1962\*VROCN2OXY8 +    0.1947\*VROCN2OXY4 +    0.0004\*VROCN2OXY2 +    0.1076\*VROCN1OXY6 +    0.0568\*VROCN1OXY3 +    0.2122\*VROCP0OXY4 +    0.0007\*VROCP0OXY2 +    0.1369\*VOP3 +    0.0818\*MEK +    0.0818\*KET +    0.0818\*HCHO +    0.0409\*ACD +    0.0818\*ALD +    0.0818\*MO2 +    0.0818\*ETHP +    0.0818\*HC3P +    0.0818\*MEKP +    0.0818\*KETP  |   4.6000E-11 |   4.6000E-11 |
| ROCOXY10c   | VROCP1OXY1 + HO ---->   0.0023\*VROCN2OXY8 +    0.1340\*VROCN2OXY4 +    0.3349\*VROCN2OXY2 +    0.0082\*VROCN1OXY6 +    0.1202\*VROCN1OXY3 +    0.0761\*VROCN1OXY1 +    0.0325\*VROCP0OXY4 +    0.1267\*VROCP0OXY2 +    0.0647\*VROCP1OXY3 +    0.0364\*VROCP1OXY1 +    0.0890\*VROCP2OXY2 +    0.0646\*VROCP3OXY2 +    0.0448\*VROCP4OXY2 +    0.0087\*VOP3 +    0.0103\*OP2 +    0.0297\*MEK +    0.0297\*KET +    0.0297\*HCHO +    0.0149\*ACD +    0.0297\*ALD +    0.0297\*MO2 +    0.0297\*ETHP +    0.0297\*HC3P +    0.0297\*MEKP +    0.0297\*KETP  |   3.8000E-11 |   3.8000E-11 |
| ROCOXY11c   | VROCP2OXY2 + HO ---->   0.0479\*VROCN2OXY8 +    0.1746\*VROCN2OXY4 +    0.0104\*VROCN2OXY2 +    0.0550\*VROCN1OXY6 +    0.1118\*VROCN1OXY3 +    0.0013\*VROCN1OXY1 +    0.1480\*VROCP0OXY4 +    0.0417\*VROCP0OXY2 +    0.1181\*VROCP1OXY3 +    0.0218\*VROCP1OXY1 +    0.1195\*VROCP2OXY2 +    0.0207\*VROCP3OXY2 +    0.0294\*VOP3 +    0.0453\*OP2 +    0.0628\*MEK +    0.0628\*KET +    0.0628\*HCHO +    0.0314\*ACD +    0.0628\*ALD +    0.0628\*MO2 +    0.0628\*ETHP +    0.0628\*HC3P +    0.0628\*MEKP +    0.0628\*KETP  |   3.9300E-11 |   3.9300E-11 |
| ROCOXY12c   | VROCP3OXY2 + HO ---->   0.0324\*VROCN2OXY8 +    0.0769\*VROCN2OXY4 +    0.0009\*VROCN2OXY2 +    0.0621\*VROCN1OXY6 +    0.0489\*VROCN1OXY3 +    0.1550\*VROCP0OXY4 +    0.0155\*VROCP0OXY2 +    0.1117\*VROCP1OXY3 +    0.0113\*VROCP1OXY1 +    0.1465\*VROCP2OXY2 +    0.0871\*VROCP3OXY2 +    0.0040\*VROCP4OXY2 +    0.0569\*VOP3 +    0.0472\*OP2 +    0.0698\*MEK +    0.0698\*KET +    0.0698\*HCHO +    0.0349\*ACD +    0.0698\*ALD +    0.0698\*MO2 +    0.0698\*ETHP +    0.0698\*HC3P +    0.0698\*MEKP +    0.0698\*KETP  |   3.5200E-11 |   3.5200E-11 |
| ROCOXY13c   | VROCP4OXY2 + HO ---->   0.0117\*VROCN2OXY8 +    0.0167\*VROCN2OXY4 +    0.0504\*VROCN1OXY6 +    0.0276\*VROCN1OXY3 +    0.0920\*VROCP0OXY4 +    0.0788\*VROCP1OXY3 +    0.0108\*VROCP1OXY1 +    0.1227\*VROCP2OXY2 +    0.1501\*VROCP3OXY2 +    0.0466\*VROCP4OXY2 +    0.0785\*VOP3 +    0.0399\*OP2 +    0.0786\*MEK +    0.0786\*KET +    0.0786\*HCHO +    0.0393\*ACD +    0.0786\*ALD +    0.0786\*MO2 +    0.0786\*ETHP +    0.0786\*HC3P +    0.0786\*MEKP +    0.0786\*KETP  |   3.1200E-11 |   3.1200E-11 |
| ROCOXY14c   | VROCP5OXY1 + HO ---->   0.0103\*VROCN2OXY4 +    0.0006\*VROCN2OXY2 +    0.0090\*VROCN1OXY6 +    0.0146\*VROCN1OXY3 +    0.0702\*VROCP0OXY4 +    0.0153\*VROCP0OXY2 +    0.1017\*VROCP1OXY3 +    0.0047\*VROCP1OXY1 +    0.1658\*VROCP2OXY2 +    0.1757\*VROCP3OXY2 +    0.1587\*VROCP4OXY2 +    0.0573\*VROCP5OXY1 +    0.0097\*VROCP6OXY1 +    0.0253\*VOP3 +    0.0368\*OP2 +    0.0526\*MEK +    0.0526\*KET +    0.0526\*HCHO +    0.0263\*ACD +    0.0526\*ALD +    0.0526\*MO2 +    0.0526\*ETHP +    0.0526\*HC3P +    0.0526\*MEKP +    0.0531\*HC5P +    0.0526\*KETP  |   2.4000E-11 |   2.4000E-11 |
| ROCOXY15c   | VROCP6OXY1 + HO ---->   0.0061\*VROCN1OXY6 +    0.0049\*VROCN1OXY3 +    0.0224\*VROCP0OXY4 +    0.0420\*VROCP1OXY3 +    0.0033\*VROCP1OXY1 +    0.0906\*VROCP2OXY2 +    0.1489\*VROCP3OXY2 +    0.1742\*VROCP4OXY2 +    0.1157\*VROCP5OXY1 +    0.0294\*VROCP6OXY1 +    0.0415\*VOP3 +    0.0560\*OP2 +    0.0571\*MEK +    0.0571\*KET +    0.0571\*HCHO +    0.0285\*ACD +    0.0571\*ALD +    0.0571\*MO2 +    0.0571\*ETHP +    0.0571\*HC3P +    0.0571\*MEKP +    0.0497\*HC5P +    0.0571\*KETP  |   2.0500E-11 |   2.0500E-11 |
| ROCOXY16c   | VOP3 + HO ---->   0.1628\*VROCN2OXY8 +    0.0103\*VROCN2OXY4 +    0.0585\*VROCN1OXY6 +    0.0171\*VROCP0OXY4 +    0.1299\*VOP3 +    0.1652\*MEK +    0.1652\*KET +    0.1652\*HCHO +    0.0826\*ACD +    0.1652\*ALD +    0.1652\*MO2 +    0.1652\*ETHP +    0.1652\*HC3P +    0.1652\*MEKP +    0.1652\*KETP  |   4.7400E-11 |   4.7400E-11 |
| R364   | ECH4 + HO ----> MO2  |   2.45E-12e<sup> -1775.00/T</sup> |   6.3628E-15 |
| TRP58   | ATRPNJ ----> AHOMJ + HNO3  |   9.2600E-05 |   9.2600E-05 |
| TRP59   | AHONITJ ----> AHOMJ + HNO3  |   9.2600E-05 |   9.2600E-05 |
| ROCARO71   | STY + HO ----> STYP  |   1.02E-11e<sup>   532.00/T</sup> |   6.0747E-11 |
| ROCARO71a   | STY + O3 ---->   0.6200\*BALD +    0.6200\*HCHO +    0.5600\*CO +    0.2800\*HO2 +    0.3600\*HO +    0.2800\*BAL2 +    0.1000\*BEN +    0.2000\*CO2  |   1.4000E-17 |   1.4000E-17 |
| ROCARO71b   | STY + NO3 ----> NO2 + STYP  |   1.5100E-13 |   1.5100E-13 |
| ROCARO72   | STYP + HO2 ----> VROCP3OXY2  |   2.91E-12e<sup>  1300.00/T</sup> |   2.2778E-10 |
| ROCARO73   | STYP + NO ----> NO2 + HO2 + HCHO + BALD  |   2.70E-12e<sup>   360.00/T</sup> |   9.0313E-12 |
| ROCARO74   | STYP + NO3 ----> NO2 + HO2 + HCHO + BALD  |   2.3000E-12 |   2.3000E-12 |
| ROCARO75   | STYP + MO2 ---->   1.3700\*HO2 +    1.6800\*HCHO + BALD +    0.3200\*MOH  |   2.5000E-13 |   2.5000E-13 |
| ROCARO76   | STYP + ACO3 ----> HO2 + HCHO + BALD +    0.7000\*MO2 +    0.3000\*ORA2 +    0.7000\*CO2  |   2.5000E-13 |   2.5000E-13 |
| HET_ANO3I   | ANO3I ---->   0.6700\*HONO +    0.3300\*NO2  | HETERO_ANO3 | Not Available<sup>2</sup> | 
| HET_ANO3J   | ANO3J ---->   0.6700\*HONO +    0.3300\*NO2  | HETERO_ANO3 | Not Available<sup>2</sup> | 
| SOAphot01   | AHOMJ ---->   0.8000\*AMTN1J +    0.2000\*ORA1  |   1.0000E-02\*NO2_RACM2 | Not Available<sup>1</sup> | 
| CLP01   | CL2 ---->   2.0000\*CL  | CL2_JPL19 | Not Available<sup>1</sup> | 
| CLP02   | CLO ----> CL + O3P  | CLO_JPL19 | Not Available<sup>1</sup> | 
| CLP03   | OCLO ----> CLO + O3P  | OCLO_JPL19 | Not Available<sup>1</sup> | 
| CLP07   | CL2O2 ----> CL + CLOO  | CL2O2_JPL19 | Not Available<sup>1</sup> | 
| CLP10   | HOCL ----> HO + CL  | HOCL_JPL19 | Not Available<sup>1</sup> | 
| CLP12   | CLNO ----> CL + NO  | CLNO_JPL19 | Not Available<sup>1</sup> | 
| CLP14   | CLNO2 ----> CL + NO2  | CLNO2_JPL19 | Not Available<sup>1</sup> | 
| CLP17   | CLNO3 ----> CL + NO3  | CLNO3_R_JPL19 | Not Available<sup>1</sup> | 
| CLP18   | CLNO3 ----> CLO + NO2  | CLNO3_M_JPL19 | Not Available<sup>1</sup> | 
| CLP19   | HCOCL ----> CL + CO + HO2  | HCOCL_JPL19 | Not Available<sup>1</sup> | 
| CLT01   | CL + O3 ----> CLO  |   2.30E-11e<sup>  -200.00/T</sup> |   1.1760E-11 |
| CLT02   | CL + H2 ----> HCL + HO2  |   3.05E-11e<sup> -2270.00/T</sup> |   1.5057E-14 |
| CLT03   | CL + HO2 ----> CLO + HO  |   3.60E-11e<sup>  -375.00/T</sup> |   1.0234E-11 |
| CLT04   | CL + HO2 ----> HCL  |   1.40E-11e<sup>   270.00/T</sup> |   3.4627E-11 |
| CLT05   | CL + H2O2 ----> HCL + HO2  |   1.10E-11e<sup>  -980.00/T</sup> |   4.1105E-13 |
| CLT06   | CL + CLOO ---->   2.0000\*CLO  |   1.20E-11e<sup>     0.00/T</sup> |   1.2000E-11 |
| CLT07   | CL + CLOO ----> CL2  |   2.30E-10e<sup>     0.00/T</sup> |   2.3000E-10 |
| CLT08   | CL + OCLO ---->   2.0000\*CLO  |   3.40E-11e<sup>   160.00/T</sup> |   5.8149E-11 |
| CLT09   | CL + CL2O2 ----> CL2 + CLOO  |   7.60E-11e<sup>    65.00/T</sup> |   9.4514E-11 |
| CLT10   | CL + HOCL ----> CL2 + HO  |   3.40E-12e<sup>  -130.00/T</sup> |   2.1985E-12 |
| CLT11   | CL + NO + M ----> CLNO  |   7.70E-32(T/300)<sup> -1.80</sup> |   7.7862E-32 |
| CLT12   | CL + NO2 ----> CLNO2  | k<sub>o</sub>=  1.80E-31e<sup>     0.0/T</sup>(T/300)<sup> -2.00</sup><br>k<sub>i</sub> =   1.00E-10e<sup>     0.0/T</sup>(T/300)<sup> -1.00</sup><br>n=     1.00;F=     0.60 |   3.5840E-12 |
| CLT14   | CL + NO3 ----> CLO + NO2  |   2.4000E-11 |   2.4000E-11 |
| CLT15   | CL + CLNO ----> CL2 + NO  |   5.80E-11e<sup>   100.00/T</sup> |   8.1113E-11 |
| CLT17   | CL + CLNO3 ----> CL2 + NO3  |   6.20E-12e<sup>   145.00/T</sup> |   1.0083E-11 |
| CLT22   | CLO + HO2 ----> HOCL  |   2.60E-12e<sup>   290.00/T</sup> |   6.8770E-12 |
| CLT23   | CLO + NO ----> CL + NO2  |   6.40E-12e<sup>   290.00/T</sup> |   1.6928E-11 |
| CLT25   | CLO + NO2 ----> CLNO3  | k<sub>o</sub>=  1.80E-31e<sup>     0.0/T</sup>(T/300)<sup> -3.40</sup><br>k<sub>i</sub> =   1.50E-11e<sup>     0.0/T</sup>(T/300)<sup> -1.90</sup><br>n=     1.00;F=     0.60 |   2.3359E-12 |
| CLT27   | CLO + CLO ----> CL2  |   1.00E-12e<sup> -1590.00/T</sup> |   4.8301E-15 |
| CLT28   | CLO + CLO ----> OCLO + CL  |   3.50E-13e<sup> -1370.00/T</sup> |   3.5358E-15 |
| CLT31   | CLO + CLO ----> CL2O2  | k<sub>o</sub>=  1.90E-32e<sup>     0.0/T</sup>(T/300)<sup> -3.60</sup><br>k<sub>i</sub> =   3.70E-12e<sup>     0.0/T</sup>(T/300)<sup> -1.60</sup><br>n=     1.00;F=     0.60 |   3.1907E-13 |
| CLT32   | CL2O2 ---->   2.0000\*CLO  |   4.63E+26e<sup> -8537.00/T</sup> \*CLT31 |   5.4222E+01<sup>8</sup>| 
| CLT35   | OCLO + NO ----> CLO + NO2  |   1.10E-13e<sup>   350.00/T</sup> |   3.5581E-13 |
| CLT36   | HO + CL2 ----> CL + HOCL  |   2.60E-12e<sup> -1100.00/T</sup> |   6.4965E-14 |
| CLT37   | HO + CLO ----> HCL  |   6.00E-13e<sup>   230.00/T</sup> |   1.2977E-12 |
| CLT38   | HO + CLO ----> CL + HO2  |   7.40E-12e<sup>   270.00/T</sup> |   1.8303E-11 |
| CLT39   | HO + HCL ----> CL  |   1.80E-12e<sup>  -250.00/T</sup> |   7.7824E-13 |
| CLT40   | HO + HOCL ----> CLO  |   3.00E-12e<sup>  -500.00/T</sup> |   5.6080E-13 |
| CLT41   | HO + CLNO2 ----> HOCL + NO2  |   2.40E-12e<sup> -1250.00/T</sup> |   3.6260E-14 |
| CLT43   | HO + CLNO3 ----> HOCL + NO3  |   1.20E-12e<sup>  -330.00/T</sup> |   3.9673E-13 |
| CLT44   | HO + OCLO ----> HOCL  |   1.40E-12e<sup>   600.00/T</sup> |   1.0474E-11 |
| CLT45   | HO + CL2O2 ----> HOCL + CLOO  |   6.00E-13e<sup>   670.00/T</sup> |   5.6767E-12 |
| CLTO01   | CL + CH4 ----> HCL + MO2  |   7.10E-12e<sup> -1270.00/T</sup> |   1.0031E-13 |
| CLTO02   | CL + ETH ----> HCL + ETHP  |   7.20E-11e<sup>   -70.00/T</sup> |   5.6934E-11 |
| CLTO03   | CL + HC3 ----> HCL + HC3P +    0.0000\*ASOATJ  |   1.40E-10e<sup>     0.00/T</sup> |   1.4000E-10 |
| CLTO04   | CL + HC5 ----> HCL + HC5P +    0.0013\*ASOATJ  |   2.70E-10e<sup>     0.00/T</sup> |   2.7000E-10 |
| CLTO05   | CL + HC10 ----> HCL + HC10P  |   5.2700E-10 |   5.2700E-10 |
| CLTO06   | CL + HCHO ----> HCL + HO2 + CO  |   8.10E-11e<sup>   -30.00/T</sup> |   7.3246E-11 |
| CLTO07   | CL + ACD ----> HCL + ACO3  |   8.00E-11e<sup>     0.00/T</sup> |   8.0000E-11 |
| CLTO08   | CL + ALD ----> HCL + RCO3  |   2.80E-11e<sup>   453.00/T</sup> |   1.2794E-10 |
| CLTO09   | CL + ACT ----> HCL + ACTP  |   2.60E-11e<sup>  -745.00/T</sup> |   2.1369E-12 |
| CLTO10   | CL + MOH ----> HCL + HO2 + HCHO  |   5.50E-11e<sup>     0.00/T</sup> |   5.5000E-11 |
| CLTO11   | CL + EOH ----> HCL + HO2 + ACD  |   6.00E-11e<sup>   155.00/T</sup> |   1.0091E-10 |
| CLTO12   | CL + ROH ----> HCL + HO2 +    0.7190\*ALD +    0.1840\*ACD  |   1.70E-10e<sup>     0.00/T</sup> |   1.7000E-10 |
| CLTO13   | CL + ORA1 ----> HCL + HO2  |   2.0000E-13 |   2.0000E-13 |
| CLTO14   | CL + ORA2 ----> HCL +    0.6400\*MO2 +    0.3600\*ORAP  |   2.7000E-14 |   2.7000E-14 |
| CLTO15   | CL + PINAL ----> HCL +    0.2300\*PINALP +    0.7700\*RCO3  |   2.3000E-10 |   2.3000E-10 |
| CTLO16   | CL + LIMAL ----> HCL +    0.8300\*LIMALP +    0.1700\*RCO3  |   2.3000E-10 |   2.3000E-10 |
| CLTO17   | CL + MEK ----> HCL + MEKP  |   4.1000E-11 |   4.1000E-11 |
| CLTO18   | CL + KET ----> HCL + KETP  |   1.1600E-10 |   1.1600E-10 |
| CLTO19   | CL + HKET ----> HCL + HO2 + MGLY  |   5.4000E-11 |   5.4000E-11 |
| CLTO20   | CL + MACR ----> HCL +    0.5700\*MACP +    0.4300\*MCP  |   2.6000E-10 |   2.6000E-10 |
| CLTO21   | CL + MVK ----> HCL + MVKP  |   2.0000E-10 |   2.0000E-10 |
| CLTO22   | CL + GLY ----> HCL + HO2 +    2.0000\*CO  |   3.6000E-11 |   3.6000E-11 |
| CLTO23   | CL + MGLY ----> HCL + ACO3 + CO  |   5.0000E-11 |   5.0000E-11 |
| CLTO24   | CL + ETEG ----> HCL + HO2 + ALD  |   4.6000E-10 |   4.6000E-10 |
| CLTO25   | CL + OP1 ----> HCL +    0.3500\*HO +    0.6500\*MO2 +    0.3500\*HCHO  |   5.9000E-11 |   5.9000E-11 |
| CLTO26   | CL + OP2 ----> HCL +    0.0100\*HO +    0.4400\*HC3P +    0.0700\*XO2 +    0.0800\*ALD +    0.4100\*KET  |   1.1000E-10 |   1.1000E-10 |
| CLTO27   | CL + VOP3 ----> HCL +    0.0100\*HO +    0.4400\*HC10P +    0.0700\*XO2 +    0.0800\*ALD +    0.4100\*KET  |   1.1000E-10 |   1.1000E-10 |
| CLTO28   | CL + OPB ----> HCL +    0.0100\*HO +    0.4400\*HC10P +    0.0700\*XO2 +    0.0800\*ALD +    0.4100\*KET  |   1.1000E-10 |   1.1000E-10 |
| CLTO29   | CL + ISHP ----> HCL + ISOP  |   1.3600E-09 |   1.3600E-09 |
| CLTO29a   | CL + ISHP ----> HCL +    0.0400\*MGLY +    0.0200\*GLY +    0.1300\*MVK +    0.4400\*IEPOX +    0.1100\*ACO3 +    0.0300\*MACR +    2.0000\*HO +    0.3400\*HO2 +    0.1400\*IPX + CO  |   1.5600E-09 |   1.5600E-09 |
| CLTO30   | CL + MAHP ----> HCL + MACP  |   5.1000E-10 |   5.1000E-10 |
| CLTO31   | CL + PAA ----> HCL +    0.3500\*HO +    0.6500\*ACO3 +    0.3500\*XO2 +    0.3500\*HCHO  |   2.2000E-13 |   2.2000E-13 |
| CLTO32   | CL + PAN ----> HCL + XO2 + NO3 + HCHO  |   1.0000E-14 |   1.0000E-14 |
| CLTO33   | CL + PPN ----> HCL + XO2 + NO3 + HCHO  |   1.1300E-12 |   1.1300E-12 |
| CLTO34   | CL + MPAN ----> HCL + NO2 + HKET  |   9.1000E-10 |   9.1000E-10 |
| CLTO35   | CL + ONIT ----> HCL + HC3P + NO2  |   2.2000E-11 |   2.2000E-11 |
| CLTO36   | CL + VTRPN ----> HCL +    0.3300\*VHONIT +    0.6700\*NO2 +    0.2700\*PINAL +    0.3800\*KET +    0.2100\*HCHO +    0.0200\*ALD  |   4.8000E-11 |   4.8000E-11 |
| CLTO37   | CL + INALD ----> HCL + CO + NO2 +    0.3000\*HO2 + HCHO  |   9.1000E-11 |   9.1000E-11 |
| CLTO38   | CL + ISON ----> HCL + HO +    0.3500\*INALD +    0.1700\*IEPOX +    0.6500\*NO2  |   1.3000E-10 |   1.3000E-10 |
| CLTO39   | CL + FURANONE ----> HCL +    0.6500\*KET +    0.3100\*GLY +    0.6600\*HO2 +    0.3400\*MO2 +    0.4300\*CO +    0.0400\*ASOATJ  |   1.8000E-09 |   1.8000E-09 |
| CLTO40   | CL + PROG ----> HCL +    0.6130\*HKET +    0.3870\*ALD + HO2  |   2.1000E-10 |   2.1000E-10 |
| CLTO41   | CL + ETE ----> HCL + ETEP  |   9.5000E-11 |   9.5000E-11 |
| CLTO42   | CL + OLT ----> HCL + OLTP  |   3.0000E-10 |   3.0000E-10 |
| CLTO43   | CL + OLI ----> HCL + OLIP  |   3.5000E-10 |   3.5000E-10 |
| CLTO44   | CL + ISO ----> HCOCL + ISOP +    0.2500\*HCHO +    0.0300\*MACR +    0.0500\*MGLY  |   4.6000E-10 |   4.6000E-10 |
| CLTO45   | CL + API ----> HCL +    0.9750\*APIP1 +    0.0250\*APIP2  |   2.4000E-10 |   2.4000E-10 |
| CLTO46   | CL + LIM ----> HCL +    0.9450\*LIMP1 +    0.0550\*LIMP2  |   7.4000E-10 |   7.4000E-10 |
| CLTO47   | CL + ACE ----> HCL +    0.6500\*HO +    0.3500\*HO2 +    0.3500\*CO +    0.6500\*GLY +    0.3500\*ORA1  |   1.06E-11e<sup>   480.00/T</sup> |   5.3026E-11 |
| CLTO48   | CL + UALD ----> HCL +    0.3130\*ACO3 +    0.6870\*UALP  |   2.6000E-10 |   2.6000E-10 |
| CLTO49   | CL + DCB1 ----> HCL +    0.5200\*HO2 +    0.3300\*CO +    0.4000\*ALD +    0.7800\*KET +    0.1000\*GLY +    0.0100\*MGLY  |   3.7000E-10 |   3.7000E-10 |
| CLTO50   | CL + DCB2 ----> HCL +    0.5200\*HO2 +    0.3300\*CO +    0.1300\*MEK +    0.1000\*GLY +    0.0100\*MGLY +    0.7800\*OP2  |   3.7000E-10 |   3.7000E-10 |
| CLTO51   | CL + DCB3 ----> HCL +    0.5600\*HO2 +    0.2100\*MACP +    0.1100\*CO +    0.2700\*GLY +    0.0100\*MGLY +    0.7900\*OP2  |   7.4000E-11 |   7.4000E-11 |
| CLTO52   | CL + SESQ ----> HCL + SESQRO2  |   5.3000E-10 |   5.3000E-10 |
| CLTO53   | CL + ACRO ----> HCL +    0.5700\*MACP +    0.4300\*MCP  |   2.23E-10e<sup>     0.00/T</sup> |   2.2300E-10 |
| CLTO54   | CL + BDE13 ----> HCL +    0.6670\*BDE13P +    0.3330\*UALD +    0.3330\*HO2  |   3.3000E-10 |   3.3000E-10 |
| CLTO55   | CL + BEN ----> HCL +    0.4700\*BENP +    0.5300\*PHEN +    0.5300\*HO2  |   1.5000E-16 |   1.5000E-16 |
| CLTO56   | CL + TOL ----> HCL +    0.8200\*TOLP +    0.1800\*CSL +    0.1800\*HO2  |   6.0000E-11 |   6.0000E-11 |
| CLTO58   | CL + XYL ----> HCL +    0.8300\*XYLP +    0.1700\*CSL +    0.1700\*HO2  |   1.4500E-10 |   1.4500E-10 |
| CLTO59   | CL + BALD ----> HCL + BALP  |   9.9000E-11 |   9.9000E-11 |
| CLTO60   | CL + PHEN ----> HCL +    0.1520\*ASOATJ +    0.6190\*HO2 +    0.1700\*ADDC +    0.0590\*CHO +    0.6190\*MCT  |   2.0000E-10 |   2.0000E-10 |
| CLTO61   | CL + CSL ----> HCL +    0.2000\*ASOATJ +    0.5840\*HO2 +    0.1600\*ADDC +    0.0560\*CHO +    0.5840\*MCT  |   3.5000E-11 |   3.5000E-11 |
| CLTO62   | CL + MCT ----> HCL + MCTO  |   1.6000E-09 |   1.6000E-09 |
| CLTO63   | CL + NAPH ----> HCL +    0.8400\*NAPHP +    0.1600\*HO2 +    0.1600\*VROCP3OXY2  |   2.8000E-15 |   2.8000E-15 |
| CLTO64   | CL + FURAN ----> HCL +    0.4900\*DCB1 +    0.4900\*HO2 +    0.5100\*FURANO2  |   2.0000E-10 |   2.0000E-10 |
| CLTO65   | CL + VROCP1ALK ----> HCL + VROCP1ALKP  |   1.8200E-09 |   1.8200E-09 |
| CLTO66   | CL + VROCP2ALK ----> HCL + VROCP2ALKP  |   1.6700E-09 |   1.6700E-09 |
| CLTO67   | CL + VROCP3ALK ----> HCL + VROCP3ALKP  |   1.4500E-09 |   1.4500E-09 |
| CLTO68   | CL + VROCP4ALK ----> HCL + VROCP4ALKP  |   1.2240E-09 |   1.2240E-09 |
| CLTO69   | CL + VROCP5ALK ----> HCL + VROCP5ALKP  |   9.3000E-10 |   9.3000E-10 |
| CLTO70   | CL + VROCP6ALK ----> HCL + VROCP6ALKP  |   8.5100E-10 |   8.5100E-10 |
| CLTO71   | CL + SLOWROC ----> HCL + ETHP +    0.0010\*ASOATJ  |   3.4300E-11 |   3.4300E-11 |
| CLTO72   | CL + VROCP5ARO ----> HCL +    0.8400\*VROCP5AROP +    0.1600\*HO2 +    0.1600\*VROCP3OXY2  |   1.3700E-10 |   1.3700E-10 |
| CLTO73   | CL + VROCP6ARO ----> HCL +    0.8400\*VROCP6AROP +    0.1600\*HO2 +    0.1600\*VROCP4OXY2  |   1.3700E-10 |   1.3700E-10 |
| CLTO74   | CL + VROCN1OXY1 ----> HCL +    0.0074\*VROCN2OXY8 +    0.1190\*VROCN2OXY4 +    0.7673\*VROCN2OXY2 +    0.0132\*VROCN1OXY6 +    0.0614\*VROCN1OXY3 +    0.0305\*VROCN1OXY1 +    0.0367\*VROCP0OXY4 +    0.0605\*VROCP0OXY2 +    0.0488\*VROCP1OXY3 +    0.0202\*VROCP1OXY1 +    0.0584\*VROCP2OXY2 +    0.0375\*VROCP3OXY2 +    0.0074\*VROCP4OXY2 +    0.0179\*VOP3 +    0.0258\*OP2 +    0.0244\*MEK +    0.0244\*KET +    0.0244\*HCHO +    0.0122\*ACD +    0.0244\*ALD +    0.0244\*MO2 +    0.0244\*ETHP +    0.0244\*HC3P +    0.0244\*MEKP +    0.0244\*KETP  |   3.0900E-10 |   3.0900E-10 |
| CLTO75   | CL + VROCN1OXY3 ----> HCL +    0.3609\*VROCN2OXY8 +    0.5200\*VROCN2OXY4 +    0.0088\*VROCN2OXY2 +    0.1452\*VROCN1OXY6 +    0.0420\*VROCN1OXY3 +    0.0524\*VROCP0OXY4 +    0.0646\*MEK +    0.0646\*KET +    0.0646\*HCHO +    0.0323\*ACD +    0.0646\*ALD +    0.0646\*MO2 +    0.0646\*ETHP +    0.0646\*HC3P +    0.0646\*MEKP +    0.0646\*KETP  |   3.7700E-10 |   3.7700E-10 |
| CLTO76   | CL + VROCN2OXY2 ----> HCL +    0.1156\*VROCN2OXY8 +    0.6895\*VROCN2OXY4 +    0.2642\*VROCN2OXY2 +    0.0663\*VROCN1OXY6 +    0.0635\*VROCN1OXY3 +    0.0950\*VROCP0OXY4 +    0.0332\*VOP3 +    0.0390\*MEK +    0.0390\*KET +    0.0390\*HCHO +    0.0195\*ACD +    0.0390\*ALD +    0.0390\*MO2 +    0.0390\*ETHP +    0.0390\*HC3P +    0.0390\*MEKP +    0.0390\*KETP  |   3.8300E-10 |   3.8300E-10 |
| CLTO77   | CL + VROCN2OXY4 ----> HCL +    0.8083\*VROCN2OXY8 +    0.3130\*VROCN2OXY4 +    0.0016\*VROCN1OXY6 +    0.0794\*MEK +    0.0794\*KET +    0.0794\*HCHO +    0.0397\*ACD +    0.0794\*ALD +    0.0794\*MO2 +    0.0794\*ETHP +    0.0794\*HC3P +    0.0794\*MEKP +    0.0794\*KETP  |   4.2000E-10 |   4.2000E-10 |
| CLTO78   | CL + VROCN1OXY6 ----> HCL +    0.2036\*VROCN2OXY8 +    0.0071\*VROCN2OXY4 +    0.1446\*VOP3 +    0.1840\*MEK +    0.1840\*KET +    0.1840\*HCHO +    0.0920\*ACD +    0.1840\*ALD +    0.1840\*MO2 +    0.1840\*ETHP +    0.1840\*HC3P +    0.1840\*MEKP +    0.1840\*KETP  |   3.8900E-10 |   3.8900E-10 |
| CLTO79   | CL + VROCN2OXY8 ----> HCL +    0.0854\*VROCN2OXY8 +    0.2581\*MEK +    0.2581\*KET +    0.2581\*HCHO +    0.1291\*ACD +    0.2581\*ALD +    0.2581\*MO2 +    0.2581\*ETHP +    0.2581\*HC3P +    0.2581\*MEKP  |   4.0800E-10 |   4.0800E-10 |
| CLTO80   | CL + VROCP0OXY2 ----> HCL +    0.0738\*VROCN2OXY8 +    0.4667\*VROCN2OXY4 +    0.1222\*VROCN2OXY2 +    0.0453\*VROCN1OXY6 +    0.1516\*VROCN1OXY3 +    0.0050\*VROCN1OXY1 +    0.1332\*VROCP0OXY4 +    0.0104\*VROCP0OXY2 +    0.0321\*VROCP1OXY3 +    0.0140\*VROCP1OXY1 +    0.0240\*VROCP2OXY2 +    0.0595\*VOP3 +    0.0445\*MEK +    0.0445\*KET +    0.0445\*HCHO +    0.0222\*ACD +    0.0445\*ALD +    0.0445\*MO2 +    0.0445\*ETHP +    0.0445\*HC3P +    0.0445\*MEKP +    0.0445\*KETP  |   3.2500E-10 |   3.2500E-10 |
| CLTO81   | CL + VROCP0OXY4 ----> HCL +    0.3695\*VROCN2OXY8 +    0.1291\*VROCN2OXY4 +    0.1547\*VROCN1OXY6 +    0.0822\*VROCN1OXY3 +    0.0400\*VROCP0OXY4 +    0.1068\*MEK +    0.1068\*KET +    0.1068\*HCHO +    0.0534\*ACD +    0.1068\*ALD +    0.1068\*MO2 +    0.1068\*ETHP +    0.1068\*HC3P +    0.1068\*MEKP +    0.1068\*KETP  |   3.5600E-10 |   3.5600E-10 |
| CLTO82   | CL + VROCP1OXY1 ----> HCL +    0.0023\*VROCN2OXY8 +    0.1340\*VROCN2OXY4 +    0.3349\*VROCN2OXY2 +    0.0082\*VROCN1OXY6 +    0.1202\*VROCN1OXY3 +    0.0761\*VROCN1OXY1 +    0.0325\*VROCP0OXY4 +    0.1267\*VROCP0OXY2 +    0.0647\*VROCP1OXY3 +    0.0364\*VROCP1OXY1 +    0.0890\*VROCP2OXY2 +    0.0646\*VROCP3OXY2 +    0.0448\*VROCP4OXY2 +    0.0087\*VOP3 +    0.0103\*OP2 +    0.0297\*MEK +    0.0297\*KET +    0.0297\*HCHO +    0.0149\*ACD +    0.0297\*ALD +    0.0297\*MO2 +    0.0297\*ETHP +    0.0297\*HC3P +    0.0297\*MEKP +    0.0297\*KETP  |   2.5900E-10 |   2.5900E-10 |
| CLTO83   | CL + VROCP1OXY3 ----> HCL +    0.1962\*VROCN2OXY8 +    0.1947\*VROCN2OXY4 +    0.0004\*VROCN2OXY2 +    0.1076\*VROCN1OXY6 +    0.0568\*VROCN1OXY3 +    0.2122\*VROCP0OXY4 +    0.0007\*VROCP0OXY2 +    0.1369\*VOP3 +    0.0818\*MEK +    0.0818\*KET +    0.0818\*HCHO +    0.0409\*ACD +    0.0818\*ALD +    0.0818\*MO2 +    0.0818\*ETHP +    0.0818\*HC3P +    0.0818\*MEKP +    0.0818\*KETP  |   3.1600E-10 |   3.1600E-10 |
| CLTO84   | CL + VROCP2OXY2 ----> HCL +    0.0479\*VROCN2OXY8 +    0.1746\*VROCN2OXY4 +    0.0104\*VROCN2OXY2 +    0.0550\*VROCN1OXY6 +    0.1118\*VROCN1OXY3 +    0.0013\*VROCN1OXY1 +    0.1480\*VROCP0OXY4 +    0.0417\*VROCP0OXY2 +    0.1181\*VROCP1OXY3 +    0.0218\*VROCP1OXY1 +    0.1195\*VROCP2OXY2 +    0.0207\*VROCP3OXY2 +    0.0294\*VOP3 +    0.0453\*OP2 +    0.0628\*MEK +    0.0628\*KET +    0.0628\*HCHO +    0.0314\*ACD +    0.0628\*ALD +    0.0628\*MO2 +    0.0628\*ETHP +    0.0628\*HC3P +    0.0628\*MEKP +    0.0628\*KETP  |   2.6800E-10 |   2.6800E-10 |
| CLTO85   | CL + VROCP3OXY2 ----> HCL +    0.0324\*VROCN2OXY8 +    0.0769\*VROCN2OXY4 +    0.0009\*VROCN2OXY2 +    0.0621\*VROCN1OXY6 +    0.0489\*VROCN1OXY3 +    0.1550\*VROCP0OXY4 +    0.0155\*VROCP0OXY2 +    0.1117\*VROCP1OXY3 +    0.0113\*VROCP1OXY1 +    0.1465\*VROCP2OXY2 +    0.0871\*VROCP3OXY2 +    0.0040\*VROCP4OXY2 +    0.0569\*VOP3 +    0.0472\*OP2 +    0.0698\*MEK +    0.0698\*KET +    0.0698\*HCHO +    0.0349\*ACD +    0.0698\*ALD +    0.0698\*MO2 +    0.0698\*ETHP +    0.0698\*HC3P +    0.0698\*MEKP +    0.0698\*KETP  |   2.3900E-10 |   2.3900E-10 |
| CLTO86   | CL + VROCP4OXY2 ----> HCL +    0.0117\*VROCN2OXY8 +    0.0167\*VROCN2OXY4 +    0.0504\*VROCN1OXY6 +    0.0276\*VROCN1OXY3 +    0.0920\*VROCP0OXY4 +    0.0788\*VROCP1OXY3 +    0.0108\*VROCP1OXY1 +    0.1227\*VROCP2OXY2 +    0.1501\*VROCP3OXY2 +    0.0466\*VROCP4OXY2 +    0.0785\*VOP3 +    0.0399\*OP2 +    0.0786\*MEK +    0.0786\*KET +    0.0786\*HCHO +    0.0393\*ACD +    0.0786\*ALD +    0.0786\*MO2 +    0.0786\*ETHP +    0.0786\*HC3P +    0.0786\*MEKP +    0.0786\*KETP  |   2.1100E-10 |   2.1100E-10 |
| CLTO87   | CL + VROCP5OXY1 ----> HCL +    0.0103\*VROCN2OXY4 +    0.0006\*VROCN2OXY2 +    0.0090\*VROCN1OXY6 +    0.0146\*VROCN1OXY3 +    0.0702\*VROCP0OXY4 +    0.0153\*VROCP0OXY2 +    0.1017\*VROCP1OXY3 +    0.0047\*VROCP1OXY1 +    0.1658\*VROCP2OXY2 +    0.1757\*VROCP3OXY2 +    0.1587\*VROCP4OXY2 +    0.0573\*VROCP5OXY1 +    0.0097\*VROCP6OXY1 +    0.0253\*VOP3 +    0.0368\*OP2 +    0.0526\*MEK +    0.0526\*KET +    0.0526\*HCHO +    0.0263\*ACD +    0.0526\*ALD +    0.0526\*MO2 +    0.0526\*ETHP +    0.0526\*HC3P +    0.0526\*MEKP +    0.0531\*HC5P +    0.0526\*KETP  |   1.6000E-10 |   1.6000E-10 |
| CLTO88   | CL + VROCP6OXY1 ----> HCL +    0.0061\*VROCN1OXY6 +    0.0049\*VROCN1OXY3 +    0.0224\*VROCP0OXY4 +    0.0420\*VROCP1OXY3 +    0.0033\*VROCP1OXY1 +    0.0906\*VROCP2OXY2 +    0.1489\*VROCP3OXY2 +    0.1742\*VROCP4OXY2 +    0.1157\*VROCP5OXY1 +    0.0294\*VROCP6OXY1 +    0.0415\*VOP3 +    0.0560\*OP2 +    0.0571\*MEK +    0.0571\*KET +    0.0571\*HCHO +    0.0285\*ACD +    0.0571\*ALD +    0.0571\*MO2 +    0.0571\*ETHP +    0.0571\*HC3P +    0.0571\*MEKP +    0.0497\*HC5P +    0.0571\*KETP  |   1.3500E-10 |   1.3500E-10 |
| CLTO89   | CL + VROCIOXY ----> HCL +    0.8520\*ETHP +    0.1490\*ASOATJ  |   3.8800E-11 |   3.8800E-11 |
| CLTO90   | HO + HCOCL ----> CL + CO  |   3.56E-11e<sup> -1419.00/T</sup> |   3.0513E-13 |
| CLTO91   | CL + HCOCL ----> CL + CO + HCL  |   8.10E-11e<sup>   -30.00/T</sup> |   7.3246E-11 |
| CLT092   | CL + EBZ ----> HCL +    0.8200\*EBZP +    0.1800\*CSL +    0.1800\*HO2  |   1.2900E-10 |   1.2900E-10 |
| CLT093   | CL + STY ----> HCL + STYP  |   3.6000E-10 |   3.6000E-10 |
| CLOR01   | CLO + MO2 ----> CLOO + HCHO + HO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR02   | CLO + ETHP ----> CLOO + ACD + HO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR03   | CLO + HC3P ---->   0.6600\*HO2 +    0.1310\*MO2 +    0.0480\*ETHP +    0.0890\*XO2 + CLOO +    0.5040\*ACD +    0.1320\*ALD +    0.1650\*ACT +    0.0420\*MEK  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR04   | CLO + HC5P ---->   0.2000\*HO2 +    0.0510\*MO2 +    0.2310\*ETHP +    0.2350\*XO2 + CLOO +    0.0180\*HCHO +    0.0450\*ACD +    0.2030\*ALD +    0.0330\*MEK +    0.2170\*ACT +    0.0330\*KET +    0.2720\*HKET  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR05   | CLO + ETEP ----> HO2 + CLOO +    1.6000\*HCHO +    0.2000\*ALD  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR06   | CLO + OLTP ---->   0.7800\*HO2 + CLOO +    0.7800\*HCHO +    0.0120\*ACD +    0.4400\*ALD +    0.0600\*ACT +    0.1300\*MEK  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR07   | CLO + OLIP ---->   0.8300\*HO2 + CLOO +    0.8100\*ACD +    0.6800\*ALD +    0.2000\*ACT +    0.0900\*KET +    0.0200\*HKET  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR08   | CLO + BENP ---->   0.0012\*VROCP4OXY2 +    0.0008\*VROCN1OXY6 + CLOO +    0.9980\*HO2 +    0.0000\*BALD +    0.9980\*GLY +    0.4990\*FURANONE +    0.2495\*DCB2 +    0.2495\*DCB3  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR09   | CLO + TOLP ---->   0.0013\*VROCP4OXY2 +    0.0006\*VROCN1OXY6 + CLOO +    0.9980\*HO2 +    0.0852\*BALD +    0.5477\*GLY +    0.3651\*MGLY +    0.3651\*FURANONE +    0.5477\*DCB1  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR10   | CLO + XYLP ---->   0.0013\*VROCP3OXY2 +    0.0006\*VROCP0OXY4 + CLOO +    0.9980\*HO2 +    0.0481\*BALD +    0.7029\*GLY +    0.2470\*MGLY +    0.3515\*FURANONE +    0.5984\*DCB2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR12   | CLO + ISOP ---->   0.4000\*HCHO +    0.8800\*HO2 +    0.8800\*CLOO +    0.1800\*MACR +    0.5100\*MVK +    0.1200\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR13   | CLO + APIP1 ---->   0.7630\*HO2 +    0.7630\*CLOO +    0.1950\*PINAL +    0.2840\*ALD +    0.0865\*ACT +    0.1285\*LIMAL +    0.3080\*HCHO +    0.0715\*OPB +    0.0840\*KET +    0.2370\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR14   | CLO + APIP2 ---->   0.8200\*HO +    0.8200\*CLOO +    0.1800\*HCL + VHOM  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR15   | CLO + APINP1 ----> CLOO +    0.6955\*NO2 +    0.2345\*VTRPN +    0.0700\*ONIT +    0.6045\*PINAL +    0.1540\*ALD +    0.0070\*KET +    0.0070\*HCHO +    0.1645\*HO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR16   | CLO + APINP2 ---->   0.8200\*CLOO +    0.8200\*HO +    0.1800\*HCL + VHOM  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR17   | CLO + LIMP1 ---->   0.7700\*HO2 + CLOO +    0.7700\*LIMAL +    0.4300\*HCHO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR18   | CLO + LIMP2 ---->   0.7700\*HO +    0.7700\*CLOO +    0.2300\*HCL + VHOM  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR19   | CLO + LIMNP1 ----> CLOO +    0.5700\*VTRPN +    0.0700\*ONIT +    0.3600\*NO2 +    0.4300\*LIMAL +    0.5000\*HO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR20   | CLO + LIMNP2 ---->   0.7700\*CLOO +    0.7700\*HO +    0.2300\*HCL + VHOM  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR21   | CLO + PINALP ----> CLOO +    0.6400\*VHOM  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR22   | CLO + LIMALP ----> CLOO +    0.3600\*HO2 +    0.3600\*HCHO +    0.3600\*PAA  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR23   | CLO + ACO3 ----> MO2 + CLOO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR24   | CLO + RCO3 ----> ETHP + CLOO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR25   | CLO + ACTP ----> ACO3 + CLOO + HCHO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR26   | CLO + MEKP ---->   0.6700\*HO2 + CLOO +    0.3300\*HCHO +    0.6700\*DCB1  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR27   | CLO + KETP ---->   0.7700\*HO2 +    0.2300\*ACO3 +    0.1600\*XO2 + CLOO +    0.4600\*ALD +    0.5400\*MGLY  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR28   | CLO + MACP ---->   0.6500\*MO2 +    0.3500\*ACO3 + CLOO +    0.6500\*CO +    0.6500\*HCHO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR29   | CLO + MCP ----> CLOO +    0.5000\*HO2 +    0.5000\*HCHO + HKET  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR30   | CLO + MVKP ---->   0.3000\*HO2 +    0.7000\*ACO3 +    0.7000\*XO2 + CLOO +    0.3000\*HCHO +    0.7000\*ALD +    0.3000\*MGLY  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR31   | CLO + UALP ----> HO2 + CLOO +    0.6100\*CO +    0.0300\*HCHO +    0.2700\*ALD +    0.1800\*GLY +    0.7000\*KET +    0.2100\*MGLY  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR32   | CLO + BALP ----> BAL1 + CLOO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR33   | CLO + BAL1 ----> BAL2 + CLOO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR34   | CLO + ADDC ----> HO2 + CLOO +    0.3200\*HKET +    0.6800\*GLY +    0.6800\*OP2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR35   | CLO + MCTP ----> MCTO + CLOO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR36   | CLO + ORAP ----> CLOO + GLY + HO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR37   | CLO + OLNN ----> CLOO + HO2 + ONIT  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR38   | CLO + OLND ----> CLOO + NO2 +    0.2870\*HCHO +    1.2400\*ALD +    0.4640\*KET  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR39   | CLO + ADCN ----> CLOO + NO2 + GLY + OP2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR40   | CLO + XO2 ----> CLOO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR41   | CLO + BDE13P ---->   0.9680\*HO2 + CLOO +    0.8950\*ACRO +    0.8950\*HCHO +    0.0720\*FURAN  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR42   | CLO + FURANO2 ----> CLOO +    0.9200\*FURANONE +    0.7500\*HO2 +    0.1700\*MO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR43   | CLO + SESQNRO2 ----> CLOO + VROCP3OXY2 + NO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR44   | CLO + SESQRO2 ---->   0.2470\*VROCP1OXY3 +    0.7530\*VROCP3OXY2 +    0.7530\*CLOO +    0.2470\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR45   | CLO + VROCP6ALKP ---->   0.7200\*VROCP6ALKP2 +    0.2800\*VROCP4OXY2 +    0.7200\*CLOO +    0.2800\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR46   | CLO + VROCP5ALKP ---->   0.7200\*VROCP5ALKP2 +    0.2800\*VROCP3OXY2 +    0.7200\*CLOO +    0.2800\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR47   | CLO + VROCP4ALKP ---->   0.7200\*VROCP4ALKP2 +    0.2800\*VROCP2OXY2 +    0.7200\*CLOO +    0.2800\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR48   | CLO + VROCP3ALKP ---->   0.7200\*VROCP3ALKP2 +    0.2800\*VROCP1OXY1 +    0.7200\*CLOO +    0.2800\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR49   | CLO + VROCP2ALKP ---->   0.7200\*VROCP2ALKP2 +    0.2800\*VROCP0OXY2 +    0.7200\*CLOO +    0.2800\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR50   | CLO + VROCP1ALKP ---->   0.7200\*VROCP1ALKP2 +    0.2800\*VROCN1OXY1 +    0.7200\*CLOO +    0.2800\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR51   | CLO + HC10P ---->   0.7400\*HC10P2 + CLOO  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR52   | CLO + VROCP6ALKP2 ---->   0.1400\*VROCP2OXY2 +    0.8600\*CLOO +    0.8600\*VROCP3OXY2 +    0.8600\*HO2 +    0.1400\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR53   | CLO + VROCP5ALKP2 ---->   0.1400\*VROCP1OXY3 +    0.8600\*CLOO +    0.8600\*VROCP2OXY2 +    0.8600\*HO2 +    0.1400\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR54   | CLO + VROCP4ALKP2 ---->   0.1400\*VROCP0OXY2 +    0.8600\*CLOO +    0.8600\*VROCP1OXY1 +    0.8600\*HO2 +    0.1400\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR55   | CLO + VROCP3ALKP2 ---->   0.1400\*VROCN1OXY1 +    0.8600\*CLOO +    0.8600\*VROCP0OXY2 +    0.8600\*HO2 +    0.1400\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR56   | CLO + VROCP2ALKP2 ---->   0.1400\*VROCN2OXY2 +    0.8600\*CLOO +    0.8600\*VROCN1OXY1 +    0.8600\*HO2 +    0.1400\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR57   | CLO + VROCP1ALKP2 ----> VROCN2OXY2 +    0.8600\*CLOO +    0.8600\*HO2 +    0.1400\*HCL  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR58   | CLO + HC10P2 ----> CLOO +    0.8800\*KET +    0.8800\*HO2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR59   | CLO + VROCP6AROP ---->   0.0001\*VROCP4OXY2 +    0.0018\*VROCP2OXY2 +    0.0001\*VROCN1OXY3 + CLOO +    0.9980\*HO2 +    0.0594\*BALD +    0.4693\*GLY +    0.4693\*MGLY +    0.4693\*FURANONE +    0.4693\*DCB2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR60   | CLO + VROCP5AROP ---->   0.0001\*VROCP3OXY2 +    0.0018\*VROCP1OXY3 +    0.0001\*VROCN2OXY4 + CLOO +    0.9980\*HO2 +    0.0594\*VROCP4OXY2 +    0.4693\*GLY +    0.4693\*MGLY +    0.4693\*FURANONE +    0.4693\*DCB2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR61   | CLO + NAPHP ---->   0.0595\*VROCP4OXY2 +    0.0018\*VROCP2OXY2 +    0.0001\*VROCN2OXY8 + CLOO +    0.9980\*HO2 +    0.4693\*GLY +    0.4693\*MGLY +    0.4693\*FURANONE +    0.4693\*DCB2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR62   | CLO + EBZP ----> CLOO +    0.0013\*VROCP3OXY2 +    0.0006\*VROCP0OXY4 +    0.9980\*HO2 +    0.0852\*BALD +    0.5477\*GLY +    0.3651\*MGLY +    0.4564\*FURANONE +    0.4564\*DCB2  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| CLOR63   | CLO + STYP ----> CLOO + HO2 + HCHO + BALD  |   3.25E-12e<sup>  -114.00/T</sup> |   2.2173E-12 |
| BRP01   | BR2 ---->   2.0000\*BR  | BR2_JPL19 | Not Available<sup>1</sup> | 
| BRP02   | BRO ----> BR + O3P  | BRO_JPL19 | Not Available<sup>1</sup> | 
| BRP03   | OBRO ----> BRO + O3P  | OBRO_JPL19 | Not Available<sup>1</sup> | 
| BRP04   | HOBR ----> BR + HO  | HOBR_JPL19 | Not Available<sup>1</sup> | 
| BRP06   | BRNO ----> BR + NO  | BRNO_JPL19 | Not Available<sup>1</sup> | 
| BRP08   | BRNO2 ----> BR + NO2  | BRNO2_JPL19 | Not Available<sup>1</sup> | 
| BRP12   | BRNO3 ----> BR + NO3  | BRNO3_R_JPL19 | Not Available<sup>1</sup> | 
| BRP13   | BRNO3 ----> BRO + NO2  | BRNO3_M_JPL19 | Not Available<sup>1</sup> | 
| BRP15   | CH2BR2 ---->   2.0000\*BR +    2.0000\*HO2  | CH2BR2_JPL19 | Not Available<sup>1</sup> | 
| BRP16   | CHBR3 ---->   3.0000\*BR + HO2  | CHBR3_JPL19 | Not Available<sup>1</sup> | 
| BRP17   | HCOBR ----> BR + CO + HO2  | HCOBR_JPL19 | Not Available<sup>1</sup> | 
| BRT01   | BR2 + HO ----> HOBR + BR  |   2.10E-11e<sup>   240.00/T</sup> |   4.6969E-11 |
| BRT02   | BR + O3 ----> BRO  |   1.60E-11e<sup>  -780.00/T</sup> |   1.1694E-12 |
| BRT03   | BR + HO2 ----> HBR  |   4.80E-12e<sup>  -310.00/T</sup> |   1.6970E-12 |
| BRT06   | BR + NO2 ----> BRNO2  | k<sub>o</sub>=  4.30E-31e<sup>     0.0/T</sup>(T/300)<sup> -2.40</sup><br>k<sub>i</sub> =   2.70E-11e<sup>     0.0/T</sup>(T/300)<sup>  0.00</sup><br>n=     1.00;F=     0.60 |   4.9480E-12 |
| BRT07   | BR + NO3 ----> BRO + NO2  |   1.60E-11e<sup>     0.00/T</sup> |   1.6000E-11 |
| BRT08   | BR + BRNO3 ----> BR2 + NO3  |   4.90E-11e<sup>     0.00/T</sup> |   4.9000E-11 |
| BRT10   | HO + HBR ----> BR  |   5.50E-12e<sup>   200.00/T</sup> |   1.0757E-11 |
| BRT11   | BRO + HO ----> BR + HO2  |   1.70E-11e<sup>   250.00/T</sup> |   3.9319E-11 |
| BRT12   | BRO + HO2 ----> HOBR  |   4.50E-12e<sup>   460.00/T</sup> |   2.1051E-11 |
| BRT13   | BRO + NO ----> BR + NO2  |   8.80E-12e<sup>   260.00/T</sup> |   2.1048E-11 |
| BRT15   | BRO + NO2 ----> BRNO3  | k<sub>o</sub>=  5.50E-31e<sup>     0.0/T</sup>(T/300)<sup> -3.10</sup><br>k<sub>i</sub> =   6.60E-12e<sup>     0.0/T</sup>(T/300)<sup> -2.90</sup><br>n=     1.00;F=     0.60 |   2.8376E-12 |
| BRT16   | BRO + NO3 ----> OBRO + NO2  |   1.0000E-12 |   1.0000E-12 |
| BRT17   | BRO + BRO ---->   2.0000\*BR  |   2.40E-12e<sup>    40.00/T</sup> |   2.7446E-12 |
| BRT18   | BRO + BRO ----> BR2  |   2.80E-14e<sup>   860.00/T</sup> |   5.0103E-13 |
| BRT19   | OBRO + O3 ----> BRO  |   1.5000E-15 |   1.5000E-15 |
| BRTO01   | BR + HCHO ----> HBR + HO2 + CO  |   1.70E-11e<sup>  -800.00/T</sup> |   1.1618E-12 |
| BRTO02   | BR + ACD ----> HBR + ACO3  |   1.80E-11e<sup>  -460.00/T</sup> |   3.8479E-12 |
| BRTO03   | BR + ALD ----> HBR + RCO3  |   4.30E-11e<sup>  -526.00/T</sup> |   7.3668E-12 |
| BRTO04   | BR + MOH ----> HBR + HCHO + HO2  |   8.0000E-15 |   8.0000E-15 |
| BRTO05   | BR + EOH ----> HBR + ACD + HO2  |   2.0000E-14 |   2.0000E-14 |
| BRTO06   | BR + ROH ----> HBR +    0.7190\*ALD +    0.1840\*ACD + HO2  |   3.3000E-14 |   3.3000E-14 |
| BRTO07   | BR + PINAL ----> HBR +    0.2300\*PINALP +    0.7700\*RCO3  |   5.70E-11e<sup>  -536.00/T</sup> |   9.4432E-12 |
| BRTO08   | BR + LIMAL ----> HBR +    0.7000\*LIMALP +    0.3000\*RCO3  |   5.70E-11e<sup>  -536.00/T</sup> |   9.4432E-12 |
| BRTO09   | BR + HKET ----> HBR + MGLY + HO2  |   8.0000E-15 |   8.0000E-15 |
| BRTO10   | BR + GLY ----> HBR + HO2 +    2.0000\*CO  |   1.70E-11e<sup>  -800.00/T</sup> |   1.1618E-12 |
| BRTO11   | BR + MGLY ----> HBR + ACO3 + CO + HO2  |   1.70E-11e<sup>  -800.00/T</sup> |   1.1618E-12 |
| BRTO12   | BR + ETEG ----> HBR + ALD + HO2  |   2.0000E-14 |   2.0000E-14 |
| BRTO13   | BR + ISHP ----> HBR + ISOP  |   6.4000E-16 |   6.4000E-16 |
| BRTO13a   | BR + ISHP ----> HBR +    0.0400\*MGLY +    0.0200\*GLY +    0.1300\*MVK +    0.4400\*IEPOX +    0.1100\*ACO3 +    0.0300\*MACR +    2.0000\*HO +    0.3400\*HO2 +    0.1400\*IPX + CO  |   7.3600E-15 |   7.3600E-15 |
| BRTO14   | BR + MAHP ----> HBR + MACP  |   8.0000E-15 |   8.0000E-15 |
| BRTO15   | BR + ETE ----> HBR + ETEP  |   1.3000E-13 |   1.3000E-13 |
| BRTO16   | BR + OLT ----> HBR + OLTP  |   3.7000E-12 |   3.7000E-12 |
| BRTO17   | BR + OLI ----> HBR + OLIP  |   1.0000E-11 |   1.0000E-11 |
| BRTO18   | BR + ISO ----> HCOBR + ISOP +    0.2500\*HCHO +    0.0300\*MACR +    0.0500\*MGLY  |   8.1000E-11 |   8.1000E-11 |
| BRTO19   | BR + API ----> HBR +    0.9750\*APIP1 +    0.0250\*APIP2  |   2.4000E-11 |   2.4000E-11 |
| BRTO20   | BR + LIM ----> HBR +    0.9450\*LIMP1 +    0.0550\*LIMP2  |   7.4000E-11 |   7.4000E-11 |
| BRTO21   | BR + ACE ----> HBR +    0.6500\*HO +    0.3500\*HO2 +    0.3500\*CO +    0.6500\*GLY +    0.3500\*ORA1  |   6.40E-15e<sup>   440.00/T</sup> |   2.7996E-14 |
| BRTO22   | BR + MVK ----> HBR + MVKP  |   2.0000E-11 |   2.0000E-11 |
| BRTO23   | BR + UALD ----> HBR +    0.3130\*ACO3 +    0.6870\*UALP  |   2.6000E-11 |   2.6000E-11 |
| BRTO24   | BR + DCB1 ----> HBR +    0.5200\*HO2 +    0.3300\*CO +    0.4000\*ALD +    0.7800\*KET +    0.1000\*GLY +    0.0100\*MGLY  |   3.7000E-11 |   3.7000E-11 |
| BRTO25   | BR + DCB2 ----> HBR +    0.5200\*HO2 +    0.3300\*CO +    0.1300\*MEK +    0.1000\*GLY +    0.0100\*MGLY +    0.7800\*OP2  |   3.7000E-11 |   3.7000E-11 |
| BRTO26   | BR + DCB3 ----> HBR +    0.5600\*HO2 +    0.2100\*MACP +    0.1100\*CO +    0.2700\*GLY +    0.0100\*MGLY +    0.7900\*OP2  |   7.4000E-12 |   7.4000E-12 |
| BRTO27   | BR + SESQ ----> HBR + SESQRO2  |   5.3000E-11 |   5.3000E-11 |
| BRTO28   | BR + ACRO ----> HBR +    0.5700\*MACP +    0.4300\*MCP  |   4.3000E-12 |   4.3000E-12 |
| BRTO29   | BR + MACR ----> HBR +    0.5700\*MACP +    0.4300\*MCP  |   2.5000E-11 |   2.5000E-11 |
| BRTO30   | BR + BDE13 ----> HBR +    0.6670\*BDE13P +    0.3330\*UALD +    0.3330\*HO2  |   6.3000E-11 |   6.3000E-11 |
| BRTO31   | BR + BEN ----> HBR +    0.4700\*BENP +    0.5300\*PHEN +    0.5300\*HO2  |   5.0000E-16 |   5.0000E-16 |
| BRTO32   | BR + TOL ----> HBR +    0.8200\*TOLP +    0.1800\*CSL +    0.1800\*HO2  |   1.4500E-14 |   1.4500E-14 |
| BRTO34   | BR + XYL ----> HBR +    0.8300\*XYLP +    0.1700\*CSL +    0.1700\*HO2  |   7.2500E-14 |   7.2500E-14 |
| BRTO35   | BR + BALD ----> HBR + BALP  |   1.0000E-13 |   1.0000E-13 |
| BRT036   | BR + PHEN ----> HBR +    0.1520\*ASOATJ +    0.6190\*HO2 +    0.1700\*ADDC +    0.0590\*CHO +    0.6190\*MCT  |   7.2500E-14 |   7.2500E-14 |
| BRTO37   | BR + CSL ----> HBR +    0.2000\*ASOATJ +    0.5840\*HO2 +    0.1600\*ADDC +    0.0560\*CHO +    0.5840\*MCT  |   7.25E-14e<sup>     0.00/T</sup> |   7.2500E-14 |
| BRTO38   | BR + MCT ----> HBR + MCTO  |   7.25E-14e<sup>     0.00/T</sup> |   7.2500E-14 |
| BRTO39   | BR + NAPH ----> HBR +    0.8400\*NAPHP +    0.1600\*HO2 +    0.1600\*VROCP3OXY2  |   3.0000E-16 |   3.0000E-16 |
| BRTO40   | BR + FURAN ----> HBR +    0.4900\*DCB1 +    0.4900\*HO2 +    0.5100\*FURANO2  |   5.0100E-12 |   5.0100E-12 |
| BRTO41   | HO + CH2BR2 ----> HCOBR + BR + HO2  |   2.00E-12e<sup>  -840.00/T</sup> |   1.1953E-13 |
| BRTO42   | HO + HCOBR ----> BR + CO  |   8.5000E-12 |   8.5000E-12 |
| BRTO43   | HO + CHBR3 ---->   3.0000\*BR  |   9.00E-12e<sup>  -360.00/T</sup> |   2.6906E-12 |
| BRT044   | BR + EBZ ----> HBR +    0.8200\*EBZP +    0.1800\*CSL +    0.1800\*HO2  |   3.1400E-14 |   3.1400E-14 |
| BRT045   | BR + STY ----> HBR + STYP  |   5.6000E-12 |   5.6000E-12 |
| IP01   | I2 ---->   2.0000\*I  | I2_JPL19 | Not Available<sup>1</sup> | 
| IP02   | IO ----> I + O3P  | IO_JPL19 | Not Available<sup>1</sup> | 
| IP03   | OIO ----> I  | OIO_JPL19 | Not Available<sup>1</sup> | 
| IP05   | I2O2 ----> I + OIO  | INO3_06 | Not Available<sup>1</sup> | 
| IP09   | HOI ----> I + HO  | HOI_JPL19 | Not Available<sup>1</sup> | 
| IP10   | HI ----> I + HO2  | HI_JPL19 | Not Available<sup>1</sup> | 
| IP11   | INO ----> I + NO  | INO_JPL19 | Not Available<sup>1</sup> | 
| IP12   | INO2 ----> I + NO2  | INO2_JPL19 | Not Available<sup>1</sup> | 
| IP16   | INO3 ----> I + NO3  | INO3_06 | Not Available<sup>1</sup> | 
| IP19   | CH3I ----> I + MO2  | CH3I_JPL19 | Not Available<sup>1</sup> | 
| IP20   | CH2I2 ---->   2.0000\*I +    2.0000\*HO2  | CH2I2_JPL19 | Not Available<sup>1</sup> | 
| IO21   | I2O3 ----> IO + OIO  | INO3_06 | Not Available<sup>1</sup> | 
| IO22   | I2O4 ---->   2.0000\*OIO  | INO3_06 | Not Available<sup>1</sup> | 
| IT02   | I2 + HO ----> HOI + I  |   1.8000E-10 |   1.8000E-10 |
| IT03   | I2 + NO3 ----> I + INO3  |   1.5000E-12 |   1.5000E-12 |
| IT04   | I + O3 ----> IO  |   2.10E-11e<sup>  -830.00/T</sup> |   1.2978E-12 |
| IT05   | I + HO2 ----> HI  |   1.50E-11e<sup> -1090.00/T</sup> |   3.8758E-13 |
| IT06   | I + NO ----> INO  | k<sub>o</sub>=  1.80E-32e<sup>     0.0/T</sup>(T/300)<sup> -1.00</sup><br>k<sub>i</sub> =   1.70E-11e<sup>     0.0/T</sup>(T/300)<sup>  0.00</sup><br>n=     1.00;F=     0.60 |   3.7544E-13 |
| IT07   | I + NO2 ----> INO2  | k<sub>o</sub>=  3.00E-31e<sup>     0.0/T</sup>(T/300)<sup> -1.00</sup><br>k<sub>i</sub> =   6.60E-11e<sup>     0.0/T</sup>(T/300)<sup>  0.00</sup><br>n=     1.00;F=     0.60 |   5.1038E-12 |
| IT09   | I + INO3 ----> I2 + NO3  |   9.10E-11e<sup>  -146.00/T</sup> |   5.5766E-11 |
| IT10   | INO2 ----> I + NO2  |   9.94E+17e<sup>-11859.00/T</sup> |   5.2869E+00 |
| IT11   | INO3 ----> IO + NO2  |   2.10E+15e<sup>-13670.00/T</sup> |   2.5708E-05 |
| IT12   | INO + INO ----> I2 +    2.0000\*NO  |   8.40E-11e<sup> -2620.00/T</sup> |   1.2821E-14 |
| IT13   | INO2 + INO2 ----> I2 +    2.0000\*NO2  |   2.90E-11e<sup> -2600.00/T</sup> |   4.7332E-15 |
| IT15   | HO + HOI ----> IO  |   5.0000E-12 |   5.0000E-12 |
| IT16   | HO + HI ----> I  |   3.0000E-11 |   3.0000E-11 |
| IT20   | IO + HO2 ----> HOI  |   1.40E-11e<sup>   540.00/T</sup> |   8.5646E-11 |
| IT21   | IO + NO ----> I + NO2  |   8.60E-12e<sup>   230.00/T</sup> |   1.8600E-11 |
| IT22   | OIO + NO ----> IO + NO2  |   1.10E-12e<sup>   542.00/T</sup> |   6.7746E-12 |
| IT23   | IO + NO2 ----> INO3  | k<sub>o</sub>=  7.70E-31e<sup>     0.0/T</sup>(T/300)<sup> -3.50</sup><br>k<sub>i</sub> =   7.70E-12e<sup>     0.0/T</sup>(T/300)<sup> -1.50</sup><br>n=     1.00;F=     0.60 |   3.5670E-12 |
| IT25   | IO + IO ---->   0.6400\*I +    0.4000\*OIO +    0.4800\*I2O2  |   1.50E-11e<sup>   500.00/T</sup> |   8.0243E-11 |
| IT30   | I2O2 ----> OIO + I  |   2.50E+14e<sup> -9770.00/T</sup> |   1.4678E+00 |
| IT33   | HOI + NO3 ----> IO + HNO3  |   2.70E-12(T/300)<sup> -2.66</sup> |   2.7448E-12 |
| IT34   | I2O2 ---->   2.0000\*IO  |   1.00E+12e<sup> -9770.00/T</sup> |   5.8711E-03 |
| IT35   | OIO + OIO ----> I2O4  |   1.50E-10e<sup>     0.00/T</sup> |   1.5000E-10 |
| IT36   | IO + OIO ----> I2O3  |   1.50E-10e<sup>     0.00/T</sup> |   1.5000E-10 |
| IT37   | I2O4 ---->   2.0000\*OIO  |   3.80E-02e<sup>     0.00/T</sup> |   3.8000E-02 |
| IT38   | HI + NO3 ----> I + HNO3  |   1.30E-12e<sup> -1830.00/T</sup> |   2.8074E-15 |
| IT39   | I2 + O3P ----> IO + I  |   1.2500E-10 |   1.2500E-10 |
| ITO01   | CH3I + HO ----> I + HCHO  |   4.30E-12e<sup> -1120.00/T</sup> |   1.0047E-13 |
| MP01   | BRCL ----> BR + CL  | BRCL_JPL19 | Not Available<sup>1</sup> | 
| MP03   | ICL ----> I + CL  | ICL_JPL19 | Not Available<sup>1</sup> | 
| MP04   | IBR ----> I + BR  | IBR_JPL19 | Not Available<sup>1</sup> | 
| MP06   | CH2IBR ----> I + BR +    2.0000\*HO2  | CH2IBR_JPL19 | Not Available<sup>1</sup> | 
| MP07   | CH2ICL ----> I + CL + HO2  | CH2ICL_JPL19 | Not Available<sup>1</sup> | 
| MP08   | CHBR2CL ---->   2.0000\*BR + CL + HO2  | CHBR2CL_JPL19 | Not Available<sup>1</sup> | 
| MP09   | CHBRCL2 ----> BR +    2.0000\*CL + HO2  | CHBRCL2_JPL19 | Not Available<sup>1</sup> | 
| MT01   | BR + OCLO ----> BRO + CLO  |   2.60E-11e<sup> -1300.00/T</sup> |   3.3216E-13 |
| MT02   | BR + CL2O2 ----> BRCL + CLOO  |   5.90E-12e<sup>  -170.00/T</sup> |   3.3360E-12 |
| MT03   | I + BRO ----> IO + BR  |   1.2000E-11 |   1.2000E-11 |
| MT04   | BR + IO ----> I + BRO  |   2.7000E-11 |   2.7000E-11 |
| MT05   | CLO + BRO ----> BR + OCLO  |   9.50E-13e<sup>   550.00/T</sup> |   6.0099E-12 |
| MT06   | CLO + BRO ----> CL + BR  |   2.90E-12e<sup>   220.00/T</sup> |   6.0654E-12 |
| MT07   | CLO + IO ----> I + OCLO  |   2.70E-12e<sup>   280.00/T</sup> |   6.9059E-12 |
| MT08   | BRO + IO ----> BR + OIO  |   4.40E-12e<sup>   760.00/T</sup> |   5.6298E-11 |
| MTO01   | CL + CH2BR2 ----> HCL + HO2 +    2.0000\*BR  |   6.80E-12e<sup>  -830.00/T</sup> |   4.2025E-13 |
| MTO02   | CL + CHBR3 ----> HCL +    3.0000\*BR  |   4.35E-12e<sup>  -850.00/T</sup> |   2.5139E-13 |
| MTO03   | CL + CH2BRCL ----> HCL + HO2 + CL + BR  |   6.80E-12e<sup>  -870.00/T</sup> |   3.6749E-13 |
| MTO06   | HO + CH2BRCL ----> HO2 + CL + BR  |   2.10E-13e<sup>  -880.00/T</sup> |   1.0974E-14 |
| MTO07   | CL + CHBR2CL ----> HCL +    2.0000\*BR + CL  |   4.85E-12e<sup>  -850.00/T</sup> |   2.8029E-13 |
| MTO08   | CL + CHBRCL2 ----> HCL + BR +    2.0000\*CL  |   2.03E-11e<sup> -1110.00/T</sup> |   4.9050E-13 |
| MTO09   | HO + CHBR2CL ---->   2.0000\*BR + CL  |   9.00E-13e<sup>  -420.00/T</sup> |   2.2002E-13 |
| MTO10   | HO + CHBRCL2 ----> BR +    2.0000\*CL  |   9.40E-13e<sup>  -510.00/T</sup> |   1.6992E-13 |
| HET_N2O5IJ   | N2O5 ----> HNO3 + NO2PIJ  | HETERO_N2O5IJ | Not Available<sup>2</sup> | 
| HET_N2O5K   | N2O5 ----> HNO3 + NO2PK  | HETERO_N2O5K | Not Available<sup>2</sup> | 
| HET_H2NO3PIJA   | NO2PIJ ----> HNO3  | HETERO_H2NO3PAIJ | Not Available<sup>2</sup> | 
| HET_H2NO3PKA   | NO2PK ----> HNO3  | HETERO_H2NO3PAK | Not Available<sup>2</sup> | 
| HET_H2NO3PIB   | NO2PIJ + ACLI ----> CLNO2  | HETERO_H2NO3PBIJ | Not Available<sup>2</sup> | 
| HET_H2NO3PJB   | NO2PIJ + ACLJ ----> CLNO2  | HETERO_H2NO3PBIJ | Not Available<sup>2</sup> | 
| HET_H2NO3PKB   | NO2PK + ACLK ----> CLNO2  | HETERO_H2NO3PBK | Not Available<sup>2</sup> | 
| HET_HOCL_ACLJ   | HOCL + ACLJ ----> CL2  | HETERO_HOCL_ACLJ | Not Available<sup>2</sup> | 
| HET_HOCL_ABRJ   | HOCL + ABRJ ----> BRCL  | HETERO_HOCL_ABRJ | Not Available<sup>2</sup> | 
| HET_CLN2_WAI   | CLNO2 ----> ACLI + ANO3I  | HETERO_CLN2_WAI | Not Available<sup>2</sup> | 
| HET_CLN2_WAJ   | CLNO2 ----> ACLJ + ANO3J  | HETERO_CLN2_WAJ | Not Available<sup>2</sup> | 
| HET_CLN2_ACLJ   | CLNO2 + ACLJ ----> CL2 + HONO  | HETERO_CLN2_ACLJ | Not Available<sup>2</sup> | 
| HET_CLN2_ABRJ   | CLNO2 + ABRJ ----> BRCL + HONO  | HETERO_CLN2_ABRJ | Not Available<sup>2</sup> | 
| HET_CLN3_WAI   | CLNO3 ----> HOCL + HNO3  | HETERO_CLN3_WAI | Not Available<sup>2</sup> | 
| HET_CLN3_WAJ   | CLNO3 ----> HOCL + HNO3  | HETERO_CLN3_WAJ | Not Available<sup>2</sup> | 
| HET_CLN3_ACLJ   | CLNO3 + ACLJ ----> CL2 + ANO3J  | HETERO_CLN3_ACLJ | Not Available<sup>2</sup> | 
| HET_CLN3_ABRJ   | CLNO3 + ABRJ ----> BRCL + ANO3J  | HETERO_CLN3_ABRJ | Not Available<sup>2</sup> | 
| HET_HOBR_ACLJ   | HOBR + ACLJ ----> BRCL  | HETERO_HOBR_ACLJ | Not Available<sup>2</sup> | 
| HET_HOBR_ABRJ   | HOBR + ABRJ ----> BR2  | HETERO_HOBR_ABRJ | Not Available<sup>2</sup> | 
| HET_BRN2_ACLJ   | BRNO2 + ACLJ ----> BRCL + HONO  | HETERO_BRN2_ACLJ | Not Available<sup>2</sup> | 
| HET_BRN2_ABRJ   | BRNO2 + ABRJ ----> BR2 + HONO  | HETERO_BRN2_ABRJ | Not Available<sup>2</sup> | 
| HET_BRN3_WAI   | BRNO3 ----> HOBR + HNO3  | HETERO_BRN3_WAI | Not Available<sup>2</sup> | 
| HET_BRN3_WAJ   | BRNO3 ----> HOBR + HNO3  | HETERO_BRN3_WAJ | Not Available<sup>2</sup> | 
| HET_BRN3_ACLJ   | BRNO3 + ACLJ ----> BRCL + HNO3  | HETERO_BRN3_ACLJ | Not Available<sup>2</sup> | 
| HET_BRN3_ABRJ   | BRNO3 + ABRJ ----> BR2 + HNO3  | HETERO_BRN3_ABRJ | Not Available<sup>2</sup> | 
| HET_HBR_ABRJ   | HBR ----> ABRJ  | HETERO_HBR_ABRJ | Not Available<sup>2</sup> | 
| HET_HOI_ACLJ   | HOI + ACLJ ----> ICL  | HETERO_HOI_ACLJ | Not Available<sup>2</sup> | 
| HET_HOI_ABRJ   | HOI + ABRJ ----> IBR  | HETERO_HOI_ABRJ | Not Available<sup>2</sup> | 
| HET_INO2_ACLJ   | INO2 + ACLJ ----> ICL + HONO  | HETERO_INO2_ACLJ | Not Available<sup>2</sup> | 
| HET_INO2_ABRJ   | INO2 + ABRJ ----> IBR + HONO  | HETERO_INO2_ABRJ | Not Available<sup>2</sup> | 
| HET_INO3_ACLJ   | INO3 + ACLJ ----> ICL + HNO3  | HETERO_INO3_ACLJ | Not Available<sup>2</sup> | 
| HET_INO3_ABRJ   | INO3 + ABRJ ----> IBR + HNO3  | HETERO_INO3_ABRJ | Not Available<sup>2</sup> | 
| HET_I2O2_AI   | I2O2 ----> | HETERO_I2O2_AI | Not Available<sup>2</sup> | 
| HET_I2O2_AJ   | I2O2 ----> | HETERO_I2O2_AJ | Not Available<sup>2</sup> | 
| HET_I2O3_AI   | I2O3 ----> | HETERO_I2O3_AI | Not Available<sup>2</sup> | 
| HET_I2O3_AJ   | I2O3 ----> | HETERO_I2O3_AJ | Not Available<sup>2</sup> | 
| HET_I2O4_AI   | I2O4 ----> | HETERO_I2O4_AI | Not Available<sup>2</sup> | 
| HET_I2O4_AJ   | I2O4 ----> | HETERO_I2O4_AJ | Not Available<sup>2</sup> | 
| HET_SO2_H2O2   | SO2 + H2O2 ----> ASO4J  | HETERO_SO2H | Not Available<sup>2</sup> | 
| HET_SO2_O3   | SO2 + O3 ----> ASO4J  | HETERO_SO2O | Not Available<sup>2</sup> | 
| HET_SO2_MEPX   | SO2 + OP1 ----> ASO4J + MOH  | HETERO_SO2M | Not Available<sup>2</sup> | 
| HET_SO2_PACD   | SO2 + PAA ----> ASO4J + ORA2  | HETERO_SO2P | Not Available<sup>2</sup> | 
| HET_SO2_NO2   | SO2 + NO2 ----> ASO4J + HONO  | HETERO_SO2N | Not Available<sup>2</sup> | 
| HET_SO2_TMI   | SO2 + AFEJ + AMNJ ----> ASO4J + AFEJ + AMNJ  | HETERO_SO2T | Not Available<sup>2</sup> | 
| HET_SO2_HCHO   | SO2 + HCHO ----> AHMSJ  | HETERO_HMSP | Not Available<sup>2</sup> | 
| HET_SO2_HNO4   | SO2 + HNO4 ----> ASO4J + ANO3J  | HETERO_HNO4 | Not Available<sup>2</sup> | 
| HET_HMS_L1   | AHMSJ + HO ----> HO2 + SO2 + ORA1  | HETERO_HMSL1 | Not Available<sup>2</sup> | 
| HET_HMS_L2   | AHMSJ ----> SO2 + HCHO  | HETERO_HMSL2 | Not Available<sup>2</sup> | 

<sup>0</sup>Units molecules/(sec*cm<sup>3</sup>); Value at 298.15 K;   2.4615E+19 molecules/cm<sup>3</sup>;   1.00 Atm.     
<sup>1</sup>Photolysis Reaction;depends on radiation and predicted concentrations     
<sup>2</sup>Heterogeneous Reaction; depends on predicted concentrations                
<sup>8</sup>Rate constant scaled as reverse equilibrium to constant for listed reaction    
