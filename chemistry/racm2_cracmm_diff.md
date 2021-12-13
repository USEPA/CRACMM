'''diff
0a1,2
+ !! CRACMM version 1.0 mechanism developed 2021 by USEPA
+ !! CRACMM builds upon RACM2 and RACM
91c93,123
- RACM2_AE6_AQ
---
+ ! CRACMMv1.0 modifications
+ ! - XYO and XYP combined and replaced with XYE (R084c). Retains products of XYO 
+ !   (same as XYP) but decreases kOH to surrogate (ethylbenzene) value. 
+ !   Major contributors ethylbenzene and o-xylene.
+ ! - renamed BENZENE to BEN for greater consistency in name length
+ ! - added HAP placeholder chemistry for BDE13, ACRO. NAPH already present.
+ ! - added PROG based on Coggon et al. PNAS 2021 and 
+ !   MCM http://mcm.york.ac.uk/browse.htt?species=PROPGLY
+ ! - Photolysis updates added per B. Hutzell
+ ! - FURAN chemistry added based on Wang et al. JGR 2021, Schwantes, Coggon
+ ! - SESQ chemistry added based on MCM per H. Pye
+ ! - Phenolic (PHEN, CSL) SOA added per H. Pye
+ ! - Monoterpene nitrates added per B. Place
+ ! - ACRO, BDE13 chemistry added per E. D'Ambro
+ ! - Oxygenated ROC (ROCOXY) chemistry added per B. Murphy
+ ! - Alkane ROC (ROCALK) chemistry added per K. Seltzer
+ ! - HC8 replaced with HC10 following ROCALK template by H. Pye
+ ! - Aromatic chemistry (ROCARO, NAPH, BTX) added per H. Pye
+ !------------------------------------------------------------------------------ 
+ ! 10-18-21 G.Sarwar
+ !    updated rate constants for inorganic reactions and three organic reactions (R70-R71)
+ !    added one photolysis reaction (R014a), updated reaction products for R016 and R017
+ !    updated photolysis rate coefficients for CH3COCH3, MEK, KET, ALD, HCHO
+ !------------------------------------------------------------------------------ 
+ CRACMM1_AQ
+ 
+ ELIMINATE =
+ XN;
+ XC;
+ CO2;
+ END ELIMINATE
106c138
- <R010>  HCHO               =  CO                      # 1.0/<HCHO_MOL_RACM2>;
---
+ <R010>  HCHO               =  CO                      # 1.0/<HCHO_MOL_JPL19>;
108c140
-                                        + CO           # 1.0/<HCHO_RAD_RACM2>;
---
+                                        + CO           # 1.0/<HCHO_RAD_JPL19>;
112,113c144,146
-                                        + CO           # 1.0/<ALD_RACM2>;
- <R014>  ACT                =  MO2      + ACO3         # 1.0/<CH3COCH3_RACM2>;
---
+                                        + CO           # 1.0/<ALD_JPL19>;
+ <R014>  ACT                =  MO2      + ACO3         # 1.0/<CH3COCH3A_JPL19>;
+ <R014a> ACT                =  2.0*MO2  + CO           # 1.0/<CH3COCH3B_JPL19>;
119,121c152,160
- <R016>  MEK                =  0.50*MO2 + 0.50*ETHP
-                                        + ACO3         # 1.0/<MEK_RACM2>;
- <R017>  KET                =  ETHP     + ACO3         # 1.0/<KET_RACM2>;
---
+ <TRP01> PINAL              =  HO2      + HC10P
+                                        + CO           # 1.0/<ALD_JPL19>;
+ <TRP02> LIMAL              =  HO2      + HC10P
+                                        + CO           # 1.0/<ALD_JPL19>;
+ <R016>  MEK                =  0.10*MO2 + ETHP
+                                        + 0.9*ACO3
+                                        + 0.1*CO       # 1.0/<MEK_JGR19>;
+ <R017>  KET                =  1.5*ETHP + 0.5*ACO3 
+                                        + 0.5*CO       # 1.0/<KET_JGR19>;
123c162,163
-                                        + HCHO         # 1.0/<HKET_RACM2>;
---
+                                        + HCHO         # 1.0/<HKET_RACM2>;                                       
+                                        
153a194,195
+ <TRP03> OPB                = HO        + HO2
+                                        + ALD          # 1.0/<OP1_RACM2>;
162,164c204,206
- <R036>  O3   + NO          = NO2                      # 1.4E-12 @ 1310.;
- <R037>  O3   + NO2         = NO3                      # 1.4E-13 @ 2470.;
- <R038>  O3P  + O2    + M   = O3                       # 5.74E-34 ^ -2.6; 
---
+ <R036>  O3   + NO          = NO2                      # 3.0E-12 @ 1500.;
+ <R037>  O3   + NO2         = NO3                      # 1.2E-13 @ 2450.;
+ <R038>  O3P  + O2    + M   = O3                       # 6.10E-34 ^ -2.4; 
166,169c208,211
- <R040>  O1D  + O2          = O3P                      # 3.2E-11 @ 67.;
- <R041>  O1D  + N2          = O3P                      # 2.0E-11 @ -130.;
- <R042>  O1D  + H2O         = 2.0*HO                   # 2.14E-10;
- <R043>  H2   + HO          = HO2                      # 7.70E-12 @ 2100.;
---
+ <R040>  O1D  + O2          = O3P                      # 3.3E-11 @ -55.;
+ <R041>  O1D  + N2          = O3P                      # 2.15E-11 @ -110.;
+ <R042>  O1D  + H2O         = 2.0*HO                   # 1.63E-10 @ -60.0;
+ <R043>  H2   + HO          = HO2                      # 2.80E-12 @ 1800.;
171,176c213,218
- <R045>  HO2  + HO2         = H2O2                  %3 # 2.2E-13 @ -600. &                                              
-                                                         1.9E-33 @ -980.;
- <R046>  HO2  + HO2 + H2O   = H2O2                  %3 # 3.08E-34 @ -2800. &
-                                                         2.59E-54 @ -3180.;
- <R047>  H2O2 + HO          = HO2                      # 2.9E-12 @ 160.;
- <R048>  NO   + O3P         = NO2                      # 9.0E-32 ^ -1.5 &
---
+ <R045>  HO2  + HO2         = H2O2                  %3 # 3.0E-13 @ -460. &                                              
+                                                         2.1E-33 @ -920.;                                                                                                              
+ <R046>  HO2  + HO2 + H2O   = H2O2                  %3 # 4.20E-34 @ -2660. &
+                                                         2.94E-54 @ -3120.;                                                        
+ <R047>  H2O2 + HO          = HO2                      # 1.8E-12 @ 0.;
+ <R048>  NO   + O3P         = NO2                      # 9.1E-32 ^ -1.5 &
178c220
- <R049>  NO   + HO          = HONO                     # 7.0E-31 ^ -2.6 &
---
+ <R049>  NO   + HO          = HONO                     # 7.1E-31 ^ -2.6 &
180c222
- <R050>  NO   + HO2         = NO2        + HO          # 3.45E-12 @ -270.;
---
+ <R050>  NO   + HO2         = NO2        + HO          # 3.44E-12 @ -260.;
184,190c226,232
- <R052>  NO   + NO    + O2  = 2.0*NO2                  # 3.3E-39 @ -530.;
- <R053>  HONO + HO          = NO2                      # 2.5E-12 @ -260.; 
- <R054>  NO2  + O3P         = NO                       # 5.5E-12 @ -188.;
- <R055>  NO2  + O3P         = NO3                      # 2.5E-31 ^ -1.8 &
-                                                         2.2E-11 ^ -0.7;
- <R056>  NO2  + HO          = HNO3                     # 1.51E-30 ^ -3.0 &                             
-                                                         2.58E-11 ^ 0.0;                                                      
---
+ <R052>  NO   + NO    + O2  = 2.0*NO2                  # 4.25E-39 @ -663.5;
+ <R053>  HONO + HO          = NO2                      # 3.0E-12 @ -250.; 
+ <R054>  NO2  + O3P         = NO                       # 5.3E-12 @ -200.;
+ <R055>  NO2  + O3P         = NO3                      # 3.4E-31 ^ -1.6 &
+                                                         2.3E-11 ^ -0.2;
+ <R056>  NO2  + HO          = HNO3                     # 1.80E-30 ^ -3.0 &                             
+                                                         2.80E-11 ^ 0.0;                                                 
196,198c238,240
-                                        + 0.3*HNO3     # 4.0E-12;
- <R060>  NO3  + NO          = 2.0*NO2                  # 1.8E-11 @ -110.;
- <R061>  NO3  + NO2         = NO        + NO2          # 4.5E-14 @ 1260.;
---
+                                        + 0.3*HNO3     # 3.50E-12;                                       
+ <R060>  NO3  + NO          = 2.0*NO2                  # 1.7E-11 @ -125.;
+ <R061>  NO3  + NO2         = NO        + NO2          # 4.35E-14 @ 1335.;
200,202c242,244
- <R063>  NO3  + NO2         = N2O5                     # 2.0E-30 ^ -4.4 & 
-                                                         1.4E-12 ^ -0.7;
- <R064>  N2O5               = NO2       + NO3          # 2.70E-27 @ -11000.0
---
+ <R063>  NO3  + NO2         = N2O5                     # 2.40E-30 ^ -3.0 & 
+                                                         1.6E-12 ^  +0.1;
+ <R064>  N2O5               = NO2       + NO3          # 5.80E-27 @ -10840.0
205,206c247,248
- <R066>  NO2  + HO2         = HNO4                     # 2.0E-31 ^ -3.4 &
-                                                         2.9E-12 ^ -1.1;
---
+ <R066>  NO2  + HO2         = HNO4                     # 1.9E-31 ^ -3.4 &
+                                                         4.0E-12 ^ -0.3;
209c251
- <R068>  HNO4 + HO          = NO2                      # 1.3E-12 @ -380.;
---
+ <R068>  HNO4 + HO          = NO2                      # 4.50E-13 @ -610.;
211,212c253,254
-                                        + SULRXN       # 3.3E-31 ^ -4.3 &
-                                                         1.6E-12 ^ 0.0;
---
+                                        + SULRXN       # 2.9E-31 ^ -4.1 &
+                                                         1.7E-12 ^ +0.2;
214,221c256,260
-                                                         2.88E-33 @ 0.0; 
- <R071>  CH4  + HO          = MO2                      # 1.85E-12 @ 1690.;
- <R072>  ETH  + HO          = ETHP                     # 6.90E-12 @ 1000.;
- <R073>  HC3  + HO          = HC3P                     # 7.68E-12 @ 370.;
- <R074>  HC5  + HO          = HC5P                     # 1.01E-11 @ 245.;
- <R075>  HC8  + HO          = 0.049*HO2 + 0.951*HC8P
-                                        + 0.025*ALD
-                                        + 0.024*HKET   # 2.82E-11 @ 273.;
---
+                                                         2.74E-33 @ 0.0; 
+ <R071>  CH4  + HO          = MO2                      # 2.45E-12 @ 1775.;
+ <R072>  ETH  + HO          = ETHP                     # 7.66E-12 @ 1020.;
+ <R073>  HC3  + HO          = HC3P + 0.0000331*ASOATJ  # 7.68E-12 @ 370.;
+ <R074>  HC5  + HO          = HC5P + 0.00158*ASOATJ    # 1.01E-11 @ 245.;
226d264
- <R079>  DIEN + HO          = OLIP                     # 1.48E-11 @ -448.;
232,254c270,279
- <R081>  BENZENE + HO       = 0.648*HO2 + 0.352*BENP
-                                        + 0.118*EPX
-                                        + 0.530*PHEN
-                                        + 1.0*BENZRO2  # 2.33E-12 @ 193.;
- <R082>  TOL + HO           = 0.177*HO2 + 0.763*TR2
-                                        + 0.060*TLP1
-                                        + 0.177*CSL
-                                        + 1.0*TOLRO2   # 1.81E-12 @ -354.;
- <R083>  XYM  + HO         = 0.177*HO2 + 0.763*XY2
-                                        + 0.060*XYL1
-                                        + 0.177*CSL    
-                                        + 0.98*XYLRO2  # 2.31E-11;
- <R084>  XYP  + HO          = 0.177*HO2 + 0.763*XY2
-                                        + 0.060*XYL1
-                                        + 0.177*CSL
-                                        + 1.0*XYLRO2   # 1.43E-11;
- <R085>  XYO  + HO          = 0.177*HO2 + 0.763*XYO2 
-                                        + 0.060*XYL1
-                                        + 0.177*CSL    
-                                        + 1.0*XYLRO2   # 1.36E-11;
- <R086>  ISO  + HO          = ISOP      + ISOPRXN      # 2.70E-11 @ -390.;
- <R087>  API  + HO          = APIP      + TRPRXN       # 1.21E-11 @ -440.;
- <R088>  LIM  + HO          = LIMP      + TRPRXN       # 4.20E-11 @ -401.;
---
+ ! MCM-based chemistry for aromatics, RACM2 rates for BEN, TOL, XYM
+ <ROCARO31> BEN + HO        = 0.4700*BENP + 0.5300*PHEN # 2.33E-12 @ 193.;
+ <ROCARO41> TOL + HO        = 0.8200*TOLP + 0.1800*CSL # 1.81E-12 @ -354.;
+ <ROCARO51> XYM + HO        = 0.8300*XYMP + 0.1700*CSL # 2.33E-11;
+ <ROCARO61> XYE + HO        = 0.8200*XYEP + 0.1800*CSL # 7.16E-12;
+ <R086>  ISO  + HO          = ISOP                     # 2.70E-11 @ -390.;
+ <R087>  API  + HO          = 0.95*APIP1 + 0.05*APIP2  # 1.21E-11 @ -440.;
+ <R088>  LIM  + HO          = 0.87*LIMP1 + 0.13*LIMP2  # 4.20E-12 @ -401.;
+ <TRP04> PINAL  + HO        = PINALP                   # 5.20E-11 @ -600.;
+ <TRP05> LIMAL  + HO        = LIMALP                   # 1.00E-10;
283,291c308,315
- <R105>  PHEN + HO          = 0.73*HO2   + 0.20*ADDC 
-                                         + 0.07*CHO
-                                         + 0.73*MCT   # 6.75E-12 @ -405.;
- <R106>  CSL  + HO          = 0.73*HO2   + 0.20*ADDC 
-                                         + 0.07*CHO
-                                         + 0.73*MCT    # 4.65E-11 @ 0.0;
- <R107>  EPX  + HO          = HO2        + XO2
-                                         + CO
-                                         + ALD         # 2.8E-11 @ -175.;
---
+ <R105>  PHEN + HO          = 0.152*ASOATJ + 0.619*HO2 
+                                         + 0.170*ADDC 
+                                         + 0.059*CHO
+                                         + 0.619*MCT   # 6.75E-12 @ -405.;
+ <R106>  CSL  + HO          = 0.200*ASOATJ + 0.584*HO2   
+                                         + 0.160*ADDC 
+                                         + 0.056*CHO
+                                         + 0.584*MCT    # 4.65E-11 @ 0.0;
303a328,331
+ <TRP06> OPB  + HO          = 0.01*HO    + 0.44*HC10P
+                                         + 0.07*XO2
+                                         + 0.08*ALD
+                                         + 0.41*KET    # 3.40E-12 @ -190.0;
317a346
+ <TRP07> TRPN + HO          = HOM                      # 4.80E-12;
336c365
-                                         + 0.032*BENZENE 
---
+                                         + 0.032*BEN 
362,373d390
- <R129> DIEN + O3           = 0.09*O3P   + 0.28*HO 
-                                         + 0.30*HO2
-                                         + 0.03*MO2 
-                                         + 0.15*ACO3 
-                                         + 0.02*KETP 
-                                         + 0.13*XO2 
-                                         + 0.001*H2O2 
-                                         + 0.36*CO 
-                                         + 0.35*OLT 
-                                         + 0.90*HCHO 
-                                         + 0.39*MACR 
-                                         + 0.15*ORA1   # 1.34E-14 @ 2283.0;
385,404c402,418
- <R131>  API  + O3          = 0.85*HO    + 0.10*HO2
-                                         + 0.20*ETHP
-                                         + 0.42*KETP
-                                         + 0.02*H2O2
-                                         + 0.14*CO
-                                         + 0.65*ALD
-                                         + 0.53*KET
-                                         + 1.0*TRPRXN  # 5.0E-16 @ 530.;
- <R132>  LIM  + O3          = 0.85*HO    + 0.10*HO2 
-                                         + 0.16*ETHP
-                                         + 0.42*KETP
-                                         + 0.02*H2O2
-                                         + 0.14*CO
-                                         + 0.46*OLT
-                                         + 0.04*HCHO
-                                         + 0.79*MACR
-                                         + 0.01*ORA1
-                                         + 0.07*ORA2
-                                         + 1.0*TRPRXN  # 2.95E-15 @ 783.;
- <R133>  MACR + O3          = 0.19*HO    + 0.14*HO2
---
+ <R131>  API  + O3          = 0.85*HO    + 0.85*APIP1
+                                         + 0.10*APIP2
+                                         + 0.05*PINAL
+                                         + 0.05*H2O2
+                                         + 0.14*CO     # 5.0E-16 @ 530.;
+ <R132>  LIM  + O3          = 0.85*HO    + 0.85*LIMP1 
+                                         + 0.1*LIMP2
+                                         + 0.05*LIMAL
+                                         + 0.05*H2O2
+                                         + 0.14*CO     # 2.95E-15 @ 783.;
+ <TRP08> LIMAL  + O3        = 0.04*HO    + 0.67*HC10P
+                                         + 0.79*HCHO
+                                         + 0.33*KET
+                                         + 0.04*HO2
+                                         + 0.20*CO     # 8.30E-18;
+ <TRP09> TRPN  + O3         = HOM                      # 1.67E-16;
+ <R132>  MACR + O3          = 0.19*HO    + 0.14*HO2
453,456d466
- <R139>  EPX  + O3          = 0.05*HO    + 1.5*HO2
-                                         + 1.5*CO
-                                         + 0.85*BALD
-                                         + GLY         # 5.0E-16;
461,467c471,474
- <R144>  DIEN + NO3         = 0.90*OLNN  + 0.10*OLND
-                                         + 0.90*MACR   # 1.0E-13;
- <R145>  ISO  + NO3         =      ISON  + ISOPRXN     # 3.03E-12 @ 446.;
- <R146>  API  + NO3         = 0.10*OLNN  + 0.90*OLND
-                                         + 1.0*TRPRXN  # 1.19E-12 @ -490.;
- <R147>  LIM  + NO3         = 0.71*OLNN  + 0.29*OLND
-                                         + 1.0*TRPRXN  # 1.22E-11;
---
+ <R145>  ISO  + NO3         =      ISON                # 3.03E-12 @ 446.;
+ <R146>  API  + NO3         = 0.95*APINP1 + 0.05*APINP2  # 1.19E-12 @ -490.;
+ <R147>  LIM  + NO3         = 0.95*LIMNP1 + 0.05*LIMNP2  # 1.22E-11;
+ <TRP10> TRPN  + NO3        = HOM                      # 3.15E-14 @ 448.;
486,496c493,500
- <R155>  PHEN + NO3         = 0.4*CHO    + 0.1*ADDC
-                                         + 0.5*ADCN 
-                                         + 0.5*HNO3    # 3.78E-12;
- <R156>  CSL  + NO3         = 0.4*CHO    + 0.1*ADDC 
-                                         + 0.5*ADCN 
-                                         + 0.5*HNO3    # 1.06E-12;
- <R157>  EPX  + NO3         = 0.50*HO    + 1.50*HO2
-                                         + 1.50*CO
-                                         + GLY
-                                         + 0.50*NO2
-                                         + 0.50*HNO3   # 2.87E-13 @ 1000.;
---
+ <R155>  PHEN + NO3         = 0.152*ASOATJ + 0.339*CHO    
+                                         + 0.85*ADDC
+                                         + 0.424*ADCN 
+                                         + 0.424*HNO3    # 3.78E-12;
+ <R156>  CSL  + NO3         = 0.200*ASOATJ + 0.320*CHO    
+                                         + 0.08*ADDC 
+                                         + 0.4*ADCN 
+                                         + 0.4*HNO3    # 1.06E-12;
499,530c503,504
- <R160>  TR2                = 0.28*HO    + 0.29*HO2
-                                         + 0.28*TOLP 
-                                         + 0.15*PER1
-                                         + 0.28*DCB2
-                                         + 0.01*CSL  
-                                         + 0.28*EPX    # 1.0E+03;
- <R161>  TOLP               = 0.49*HO    + 0.01*HO2
-                                         + 0.50*PER1
-                                         + 0.49*DCB2
-                                         + 0.01*CSL    # 1.0E+03;
- <R162> XY2                 = 0.158*HO   + 0.308*HO2 
-                                         + 0.250*RCO3
-                                         + 0.308*XYLP
-                                         + 0.150*PER2
-                                         + 0.224*DCB2
-                                         + 0.010*CSL
-                                         + 0.840*EPX   # 1.00E+03;
- <R163>  XYLP               = 0.390*HO   + 0.010*HO2
-                                         + 0.300*PER2 
-                                         + 0.490*DCB2
-                                         + 0.010*CSL   # 1.0E+03;
- <R164>  XYO2               = 0.158*HO   + 0.308*HO2
-                                         + 0.250*RCO3
-                                         + 0.150*PER2
-                                         + 0.308*XYOP
-                                         + 0.224*DCB2
-                                         + 0.010*CSL
-                                         + 0.840*EPX   # 1.0E+03;
- <R165>  XYOP               = 0.390*HO   + 0.010*HO2   
-                                         + 0.500*PER2
-                                         + 0.490*DCB2
-                                         + 0.010*CSL   # 1.0E+03;
---
+ <TRP11> PINALP             = HOM                      # 1.0;
+ <TRP12> LIMALP             = HOM                      # 1.0;
566,571d539
- <R176>  HC8P + NO          = 0.606*HO2  + 0.133*ETHP 
-                                         + 0.416*XO2
-                                         + 0.739*NO2
-                                         + 0.150*ALD
-                                         + 0.642*KET 
-                                         + 0.261*ONIT  # 4.00E-12;
589,618c557,598
- <R180>  BENP + NO          = 0.918*HO2  + 0.918*NO2
-                                         + 0.459*DCB2
-                                         + 0.459*DCB3
-                                         + 0.918*GLY
-                                         + 0.082*ONIT  # 2.54E-12 @ -360.;
- <R181>  TLP1 + NO          = NO2        + BALD        # 4.0E-12;
- <R182>  TOLP + NO          = 0.95*HO2   + 0.95*NO2
-                                         + 0.95*DCB2
-                                         + 0.05*ONIT   # 2.7E-12 @ -360.;                                 
- <R183> PER1 + NO           = 0.50*HO2   + 0.95*NO2 
-                                         + 0.50*BALD 
-                                         + 0.50*MGLY 
-                                         + 0.50*DCB1 
-                                         + 0.05*ONIT   # 2.70E-12 @ -360.;
- <R184>  XYL1 + NO          = NO2        + BALD        # 4.0E-12;
- <R185>  XYLP + NO          = 0.95*HO2   + 0.95*NO2
-                                         + 0.95*DCB3
-                                         + 0.05*ONIT   # 2.7E-12 @ -360.;
- <R186>  PER2 + NO          = 0.95*HO2   + 0.95*NO2 
-                                         + 0.95*MGLY 
-                                         + 0.95*DCB1 
-                                         + 1.05*DCB3 
-                                         + 0.05*ONIT   # 2.70E-12 @ -360.;
- <R187>  XYOP + NO          = 0.95*HO2   + 0.95*NO2
-                                         + 0.350*GLY
-                                         + 0.600*MGLY
-                                         + 0.700*DCB1
-                                         + 0.073*DCB2
-                                         + 0.177*DCB3
-                                         + 0.05*ONIT   # 2.7E-12 @ -360.;
---
+ ! MCM-based aromatics with Lu et al. updates
+ <ROCARO33> BENP + NO   =   0.0000*ONIT
+                          + 0.0012*VROCP4OXY2
+                          + 0.0008*VROCP1OXY3
+                          + 0.9980*NO2
+                          + 0.9980*HO2
+                          + 0.0000*BALD
+                          + 0.9980*GLY
+                          + 0.4990*FURANONE
+                          + 0.2495*DCB2
+                          + 0.2495*DCB3        # 2.7E-12 @ -360.;
+ <ROCARO43> TOLP + NO   =   0.0002*ONIT
+                          + 0.0013*VROCP4OXY2
+                          + 0.0006*VROCP1OXY3
+                          + 0.9980*NO2
+                          + 0.9980*HO2
+                          + 0.0852*BALD
+                          + 0.5477*GLY
+                          + 0.3651*MGLY
+                          + 0.3651*FURANONE
+                          + 0.5477*DCB1        # 2.7E-12 @ -360.;
+ <ROCARO53> XYMP + NO   =   0.0001*ONIT
+                          + 0.0013*VROCP3OXY2
+                          + 0.0006*VROCP0OXY4
+                          + 0.9980*NO2
+                          + 0.9980*HO2
+                          + 0.0481*BALD
+                          + 0.7029*GLY
+                          + 0.2470*MGLY
+                          + 0.3515*FURANONE
+                          + 0.5984*DCB2        # 2.7E-12 @ -360.;
+ <ROCARO63> XYEP + NO   =   0.0002*ONIT
+                          + 0.0013*VROCP3OXY2
+                          + 0.0006*VROCP0OXY4
+                          + 0.9980*NO2
+                          + 0.9980*HO2
+                          + 0.0852*BALD
+                          + 0.5477*GLY
+                          + 0.3651*MGLY
+                          + 0.4564*FURANONE
+                          + 0.4564*DCB2        # 2.7E-12 @ -360.;
> 
627,638c607,634
- <R189>  APIP + NO          = 0.82*HO2   + 0.82*NO2 
-                                         + 0.23*HCHO
-                                         + 0.43*ALD 
-                                         + 0.11*ACT
-                                         + 0.44*KET
-                                         + 0.07*ORA1 
-                                         + 0.18*ONIT   # 4.0E-12;
- <R190>  LIMP + NO          = 1.00*HO2   + 0.68*UALD
-                                         + 0.43*HCHO
-                                         + 0.07*ORA1
-                                         + 1.00*NO2
-                                         + 0.05*OLI    # 4.0E-12;
---
+ <R189>  APIP1 + NO         = 0.82*HO2   + 0.82*NO2 
+                                         + 0.18*PINAL
+                                         + 0.18*TRPN   # 4.0E-12;
+ <TRP13>  APIP2 + NO        = 0.82*HO    + 0.82*NO2
+                                         + HOM         # 4.0E-12;
+ <TRP14>  APINP1 + NO       = 1.64*NO2   + 0.82*PINAL
+                                         + 0.18*TRPN   # 4.0E-12;
+ <TRP15>  APINP2 + NO       = 0.82*NO2   + 0.82*HO
+                                         + HOM         # 4.0E-12;
+ <R190>  LIMP1 + NO         = 0.77*HO2   + 0.77*NO2
+                                         + 0.49*LIMAL
+                                         + 0.28*HCHO
+                                         + 0.28*UALD
+                                         + 0.23*TRPN   # 4.0E-12;
+ <TRP16>  LIMP2 + NO        = 0.77*HO    + 0.77*NO2
+                                         + HOM         # 4.0E-12;
+ <TRP17>  LIMNP1 + NO       = 1.44*NO2   + 0.77*LIMAL
+                                         + 0.23*TRPN   # 4.0E-12;
+ <TRP18>  LIMNP2 + NO       = 0.77*NO2   + 0.77*HO
+                                         + HOM         # 4.0E-12;
+ <TRP19>  PINALP + NO       = 0.95*HO2   + 0.95*NO2 
+                                         + 0.05*TRPN
+                                         + 0.95*HCHO
+                                         + 0.95*KET    # 2.7E-12 @ -360.;
+ <TRP20>  LIMALP + NO       = 0.94*HO2   + 0.94*NO2
+                                         + 0.06*TRPN
+                                         + 0.94*HCHO
+                                         + 0.94*KET    # 2.7E-12 @ -360.;
695d690
- <R216>  HC8P + HO2         = OP2                      # 1.66E-13 @ -1300.;
699,706c694,707
- <R220>  BENP + HO2         = OP2                      # 2.91E-13 @ -1300.;
- <R221>  TLP1 + HO2         = OP2                      # 3.75E-13 @ -980.;
- <R222>  TOLP + HO2         = OP2                      # 3.75E-13 @ -980.;
- <R223>  PER1 + HO2         = OP2                      # 3.75E-13 @ -980.;
- <R224>  XYL1 + HO2         = OP2                      # 3.75E-13 @ -980.;
- <R225>  XYLP + HO2         = OP2                      # 3.75E-13 @ -980.;
- <R226>  PER2 + HO2         = OP2                      # 3.75E-13 @ -980.;
- <R227>  XYOP + HO2         = OP2                      # 3.75E-13 @ -980.;
---
+ ! MCM-based aromatics
+ <ROCARO32> BENP + HO2 = 0.0000*OP2
+                          + 0.6021*OP2
+                          + 0.3979*VROCP1OXY3          # 2.91E-13 @ -1300.;
+ <ROCARO42> TOLP + HO2  = 0.0854*OP2
+                          + 0.6341*OP2
+                          + 0.2805*VROCP1OXY3          # 2.91E-13 @ -1300.;
+ <ROCARO52> XYMP + HO2  = 0.0482*OP2
+                          + 0.6747*OP3
+                          + 0.2771*VROCP0OXY4          # 2.91E-13 @ -1300.;
+ <ROCARO62> XYEP + HO2  = 0.0854*OP2
+                          + 0.6341*OP3
+                          + 0.2805*VROCP0OXY4          # 2.91E-13 @ -1300.;
> 
708,709c709,718
- <R229>  APIP + HO2         = OP2                      # 1.5E-11;
- <R230>  LIMP + HO2         = OP2                      # 1.5E-11;
---
+ <R229>  APIP1 + HO2        = OPB                      # 1.5E-11;
+ <TRP21> APIP2 + HO2        = HOM                      # 1.5E-11;
+ <TRP22> APINP1 + HO2       = OPB                      # 1.5E-11;
+ <TRP23> APINP2 + HO2       = HOM                      # 1.5E-11;
+ <R230>  LIMP1 + HO2        = OPB                      # 1.5E-11;
+ <TRP24> LIMP2 + HO2        = HOM                      # 1.5E-11;
+ <TRP25> LIMNP1 + HO2       = OPB                      # 1.5E-11;
+ <TRP26> LIMNP2 + HO2       = HOM                      # 1.5E-11;
+ <TRP27> PINALP + HO2       = OPB                      # 2.91E-13 @ -1300.;
+ <TRP28> LIMALP + HO2       = OPB                      # 2.91E-13 @ -1300.;
756,762d764
- <R252>  HC8P + MO2         = 0.910*HO2 + 0.090*ETHP 
-                                        + 0.281*XO2
-                                        + 0.750*HCHO 
-                                        + 0.197*ALD
-                                        + 0.652*KET
-                                        + 0.250*MOH
-                                        + 0.250*ROH    # 4.34E-14 @ -633.;
777,802c779,812
- <R256>  BENP + MO2         = 1.60*HO2  + 0.459*DCB3 
-                                        + HCHO 
-                                        + 0.459*DCB2 
-                                        + 0.600*GLY    # 3.56E-14 @ -708.;
- <R257>  TLP1 + MO2         = HO2       + HCHO
-                                        + BALD         # 3.56E-14 @ -708.;                                      
- <R258>  TOLP + MO2         = 2.0*HO2   + HCHO 
-                                        + 0.271*GLY
-                                        + DCB2         # 3.56E-14 @ -708.;
- <R259>  PER1 + MO2         = 2.0*HO2   + HCHO 
-                                        + MGLY
-                                        + DCB1         # 3.56E-14 @ -708.;
- <R260>  XYL1 + MO2         = HO2       + HCHO
-                                        + BALD         # 3.56E-14 @ -708.;
- <R261>  XYLP + MO2         = 2.0*HO2   + HCHO 
-                                        + DCB2         # 3.56E-14 @ -708.;
- <R262>  PER2 + MO2         = 2.0*HO2   + HCHO
-                                        + MGLY
-                                        + DCB1
-                                        + 1.05*DCB3    # 3.56E-14 @ -708.;
- <R263>  XYOP + MO2         = 2.0*HO2   + HCHO
-                                        + 0.368*GLY
-                                        + 0.632*MGLY
-                                        + 0.737*DCB1
-                                        + 0.077*DCB2
-                                        + 0.186*DCB3   # 3.56E-14 @ -708.;
---
+ ! MCM-based aromatics
+ <ROCARO35> BENP + MO2 =  0.5000*HCHO
+                          + 2.0000*HO2
+                          + 0.5000*MOH
+                          + 0.0000*BALD
+                          + 1.0000*GLY
+                          + 0.5000*FURANONE
+                          + 0.2500*DCB2
+                          + 0.2500*DCB3        # 3.56E-14 @ -708.;
+ <ROCARO45> TOLP + MO2 =  0.5000*HCHO
+                          + 2.0000*HO2
+                          + 0.5000*MOH
+                          + 0.0854*BALD
+                          + 0.5488*GLY
+                          + 0.3659*MGLY
+                          + 0.3659*FURANONE
+                          + 0.5488*DCB1        # 3.56E-14 @ -708.;
+ <ROCARO55> XYMP + MO2 =  0.5000*HCHO
+                          + 2.0000*HO2
+                          + 0.5000*MOH
+                          + 0.0482*BALD
+                          + 0.7043*GLY
+                          + 0.2475*MGLY
+                          + 0.3522*FURANONE
+                          + 0.5996*DCB2        # 3.56E-14 @ -708.;
+ <ROCARO65> XYEP + MO2 =  0.5000*HCHO
+                          + 2.0000*HO2
+                          + 0.5000*MOH
+                          + 0.0854*BALD
+                          + 0.5488*GLY
+                          + 0.3659*MGLY
+                          + 0.4573*FURANONE
+                          + 0.4573*DCB2        # 3.56E-14 @ -708.;
> 
811,813c821,832
- <R265>  APIP + MO2         = HO2       + 0.750*HCHO 
-                                        + 0.750*ALD 
-                                        + 0.750*KET
---
+ <R265>  APIP1 + MO2        = HO2       + 0.750*HCHO 
+                                        + 0.500*PINAL 
+                                        + 0.250*KET
+                                        + 0.250*MOH
+                                        + 0.250*ROH    # 3.56E-14 @ -708.;
+ <TRP29> APIP2 + MO2        = HO2       + 0.750*HCHO
+                                        + 0.250*MOH
+                                        + HOM          # 1.00E-10;
+ <TRP30> APINP1 + MO2       = 0.5*HO2   + 0.500*NO2
+                                        + 0.750*HCHO
+                                        + 0.500*PINAL
+                                        + 0.250*KET
816,818c835,848
- <R266>  LIMP + MO2         = HO2       + 1.04*HCHO 
-                                        + 0.192*OLI
-                                        + 0.308*MACR 
---
+ <TRP31> APINP2 + MO2       = 0.75*HO2  + 0.750*NO2
+                                        + 0.250*MOH
+                                        + HOM          # 1.00E-10;
+ <R266>  LIMP1 + MO2        = HO2       + 0.750*HCHO 
+                                        + 0.500*LIMAL
+                                        + 0.250*KET 
+                                        + 0.250*MOH
+                                        + 0.250*ROH    # 3.56E-14 @ -708.;
+ <TRP32> LIMP2 + MO2        = HO2       + 0.750*HCHO
+                                        + 0.250*MOH
+                                        + HOM          # 1.00E-10;
+ <TRP33> LIMNP1 + MO2       = HO2       + 0.750*HCHO
+                                        + 0.500*LIMAL
+                                        + 0.250*KET
820a851,854
+ <TRP34> LIMNP2 + MO2       = HO2       + 0.750*HCHO
+                                        + 0.250*ROH
+                                        + HOM          # 1.00E-10;
> 
913,918d946
- <R288>  HC8P + ACO3        = 0.303*HO2 + 0.500*MO2 
-                                        + 0.067*ETHP
-                                        + 0.208*XO2
-                                        + 0.217*ALD 
-                                        + 0.642*KET 
-                                        + 0.495*ORA2   # 2.47E-13 @ -683.;
932,954c960,994
- <R292>  BENP + ACO3        = 0.60*HO2  + MO2
-                                        + 0.459*DCB2 
-                                        + 0.458*DCB3
-                                        + 0.600*GLY     # 7.4E-13 @ -765.;
- <R293>  TLP1 + ACO3        = MO2       + BALD         # 7.4E-13 @ -765.;
- <R294>  TOLP + ACO3        = HO2       + MO2
-                                        + DCB2         # 7.4E-13 @ -765.;
- <R295>  PER1 + ACO3        = HO2       + MO2
-                                        + MGLY
-                                        + DCB1         # 7.4E-13 @ -765.;
- <R296>  XYL1 + ACO3        = MO2       + BALD         # 7.4E-13 @ -765.;
- <R297>  XYLP + ACO3        = HO2       + MO2
-                                        + DCB2         # 7.4E-13 @ -765.;
- <R298>  PER2 + ACO3        = HO2       + MO2
-                                        + MGLY
-                                        + DCB1 
-                                        + 1.05*DCB3    # 7.4E-13 @ -765.;
- <R299>  XYOP + ACO3        = HO2       + MO2
-                                        + 0.368*GLY
-                                        + 0.632*MGLY
-                                        + 0.737*DCB1
-                                        + 0.077*DCB2
-                                        + 0.186*DCB3   # 7.4E-13 @ -765.;
---
+ ! MCM-based aromatics
+ <ROCARO36> BENP + ACO3 = 0.7000*MO2
+                          + 2.0000*HO2
+                          + 0.3000*ORA2
+                          + 0.0000*BALD
+                          + 1.0000*GLY
+                          + 0.5000*FURANONE
+                          + 0.2500*DCB2
+                          + 0.2500*DCB3        # 7.4E-13 @ -765.;
+ <ROCARO46> TOLP + ACO3 = 0.7000*MO2
+                          + 2.0000*HO2
+                          + 0.3000*ORA2
+                          + 0.0854*BALD
+                          + 0.5488*GLY
+                          + 0.3659*MGLY
+                          + 0.3659*FURANONE
+                          + 0.5488*DCB1        # 7.4E-13 @ -765.;
+ <ROCARO56> XYMP + ACO3 = 0.7000*MO2
+                          + 2.0000*HO2
+                          + 0.3000*ORA2
+                          + 0.0482*BALD
+                          + 0.7043*GLY
+                          + 0.2475*MGLY
+                          + 0.3522*FURANONE
+                          + 0.5996*DCB2        # 7.4E-13 @ -765.;
+ <ROCARO66> XYEP + ACO3 = 0.7000*MO2
+                          + 2.0000*HO2
+                          + 0.3000*ORA2
+                          + 0.0854*BALD
+                          + 0.5488*GLY
+                          + 0.3659*MGLY
+                          + 0.4573*FURANONE
+                          + 0.4573*DCB2        # 7.4E-13 @ -765.;
> 
> 
960,967c1000,1017
- <R301>  APIP + ACO3        = 0.5*HO2   + 0.5*MO2 
-                                        + ALD 
-                                        + KET
-                                        + ORA2         # 7.4E-13 @ -765.;
- <R302>  LIMP + ACO3        = 0.5*HO2   + 0.5*MO2 
-                                        + 0.192*OLI
-                                        + 0.385*HCHO
-                                        + 0.308*MACR 
---
+ <R301>  APIP1 + ACO3       = 0.5*HO2   + 0.5*MO2 
+                                        + 0.5*PINAL
+                                        + 0.5*ORA2  
+                                        + 0.5*KET      # 7.4E-13 @ -765.;
+ <TRP35> APIP2 + ACO3       = 0.5*HO    + 0.5*MO2
+                                        + 0.5*ORA2
+                                        + HOM          # 1.0E-10;
+ <TRP36> APINP1 + ACO3      = 0.5*HO2   + 0.5*NO2
+                                        + 0.5*PINAL
+                                        + 0.5*MO2
+                                        + 0.5*ORA2
+                                        + 0.5*KET      # 7.4E-13 @ -765.;
+ <TRP37> APINP2 + ACO3      = 0.5*NO2   + 0.5*MO2
+                                        + 0.5*ORA2
+                                        + HOM          # 1.0E-10;
+ <R302>  LIMP1 + ACO3       = 0.5*HO2   + 0.5*MO2 
+                                        + 0.5*LIMAL
+                                        + 0.5*KET
968a1019,1028
+ <TRP38> LIMP2 + ACO3       = 0.5*HO    + 0.5*MO2
+                                        + 0.5*ORA2
+                                        + HOM          # 1.0E-10;
+ <TRP39> LIMNP1 + ACO3      = 0.5*HO2   + 0.5*LIMAL
+                                        + 0.5*MO2
+                                        + 0.5*ORA2
+                                        + 0.5*KET      # 7.4E-13 @ -765.;
+ <TRP40> LIMNP2 + ACO3      = 0.5*HO    + 0.5*MO2
+                                        + 0.5*ORA2
+                                        + HOM          # 1.0E-10;
1051,1055d1110
- <R326>  HC8P + NO3         = 0.820*HO2 + 0.180*ETHP 
-                                        + 0.563*XO2 
-                                        + NO2
-                                        + 0.203*ALD 
-                                        + 0.869*KET    # 1.2E-12;
1071,1094c1126,1156
- <R330> BENP  + NO3         = HO2       + NO2
-                                        + 0.50*DCB2
-                                        + 0.50*DCB3
-                                        + GLY          # 1.20E-12;
- <R331>  TLP1 + NO3         = NO2       + BALD         # 1.2E-12;
- <R332>  TOLP + NO3         = HO2       + NO2
-                                        + DCB2         # 1.2E-12;                                      
- <R333>  PER1 + NO3         = 0.50*HO2  + NO2
-                                        + 0.50*MGLY
-                                        + 0.50*DCB1
-                                        + 0.50*BALD    # 1.2E-12;                                       
- <R334>  XYL1 + NO3         = NO2       + BALD         # 1.2E-12;
- <R335>  XYLP + NO3         = HO2       + NO2
-                                        + DCB3         # 1.2E-12;
- <R336>  PER2 + NO3         = HO2       + NO2
-                                        + MGLY
-                                        + DCB1
-                                        + 1.05*DCB3    # 1.2E-12;
- <R337>  XYOP + NO3         = HO2       + NO2
-                                        + 0.368*GLY
-                                        + 0.632*MGLY
-                                        + 0.737*DCB1
-                                        + 0.077*DCB2
-                                        + 0.186*DCB3   # 1.2E-12;
---
+ ! MCM-based aromatics
+ <ROCARO34> BENP + NO3 =  1.0000*NO2
+                          + 1.0000*HO2
+                          + 0.0000*BALD
+                          + 1.0000*GLY
+                          + 0.5000*FURANONE
+                          + 0.2500*DCB2
+                          + 0.2500*DCB3        # 2.3E-12;
+ <ROCARO44> TOLP + NO3 =  1.0000*NO2
+                          + 1.0000*HO2
+                          + 0.0854*BALD
+                          + 0.5488*GLY
+                          + 0.3659*MGLY
+                          + 0.3659*FURANONE
+                          + 0.5488*DCB1        # 2.3E-12;
+ <ROCARO54> XYMP + NO3 =  1.0000*NO2
+                          + 1.0000*HO2
+                          + 0.0482*BALD
+                          + 0.7043*GLY
+                          + 0.2475*MGLY
+                          + 0.3522*FURANONE
+                          + 0.5996*DCB2        # 2.3E-12;
+ <ROCARO64> XYEP + NO3 =  1.0000*NO2
+                          + 1.0000*HO2
+                          + 0.0854*BALD
+                          + 0.5488*GLY
+                          + 0.3659*MGLY
+                          + 0.4573*FURANONE
+                          + 0.4573*DCB2        # 2.3E-12;
> 
> 
1102c1164
- <R339>  APIP + NO3         = HO2       + NO2
---
+ <R339>  APIP1 + NO3        = HO2       + NO2
1105c1167
- <R340>  LIMP + NO3         = HO2       + NO2
---
+ <R340>  LIMP1 + NO3        = HO2       + NO2
1165a1228,1293
+ <TRP41> APIP2 + APIP1      = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*PINAL
+                                        + 0.48*HO
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP42> APIP2 + LIMP1      = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*LIMAL
+                                        + 0.48*HO
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP43> APIP2 + ISOP       = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*HCHO
+                                        + 0.48*MVK
+                                        + 0.48*HO
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP44> LIMP2 + APIP1      = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*PINAL
+                                        + 0.48*HO
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP45> LIMP2 + LIMP1      = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*LIMAL
+                                        + 0.48*HO
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP46> LIMP2 + ISOP       = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*HCHO
+                                        + 0.48*MVK
+                                        + 0.48*HO
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP47> APINP2 + APIP1     = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*PINAL
+                                        + 0.48*NO2
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP48> APINP2 + LIMP1     = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*LIMAL
+                                        + 0.48*NO2
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP49> APINP2 + ISOP      = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*HCHO
+                                        + 0.48*MVK
+                                        + 0.48*NO2
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP50> LIMNP2 + APIP1     = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*PINAL
+                                        + 0.48*NO2
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP51> LIMNP2 + LIMP1     = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*LIMAL
+                                        + 0.48*NO2
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
+ <TRP52> LIMNP2 + ISOP      = 0.96*HOM  + 0.48*ROH
+                                        + 0.48*HCHO
+                                        + 0.48*MVK
+                                        + 0.48*NO2
+                                        + 0.48*HO2
+                                        + 0.04*ELHOM   #1.00E-10;
> 
> 
1168,1180d1295
- <SA01>  TOLRO2  + NO      = NO  + TOLNRXN             # 2.70e-12@-360;
- <SA02>  TOLRO2  + HO2     = HO2 + TOLHRXN             # 1.90e-13@-1300;
- <SA03>  XYLRO2  + NO      = NO  + XYLNRXN             # 2.70e-12@-360;
- <SA04>  XYLRO2  + HO2     = HO2 + XYLHRXN             # 1.90e-13@-1300; 
- <SA05>  BENZRO2 + NO      = NO  + BNZNRXN             # 2.70e-12@-360;
- <SA06>  BENZRO2 + HO2     = HO2 + BNZHRXN             # 1.90e-13@-1300;
- <SA07>  SESQ + O3         = O3  + SESQRXN             # 1.16E-14;
- <SA08>  SESQ + HO         = HO  + SESQRXN             # 1.97E-10;
- <SA09>  SESQ + NO3        = NO3 + SESQRXN             # 1.90E-11;
- <SA10>  NAPH + HO         = HO  + PAHRO2              # 2.31E-11;
- <SA11>  PAHRO2  + NO      = NO  + PAHNRXN             # 2.70e-12@-360;
- <SA12>  PAHRO2  + HO2     = HO2 + PAHHRXN             # 1.90e-13@-1300; 
- <SA13>  SOAALK  + HO      = HO  + 0.47*ALKRXN         # 2.70e-12@-374;
1182a1298,1390
+ ! VROCIOXY added with behavior like ETHP
+ ! 12.0% by mass (14.8% by mole) SOA yield added
+ ! kOH set to emission weighted value
+ <R001c> VROCIOXY + HO      = 0.852*ETHP
+                                  + 0.149*ASOATJ       # 6.89E-12;
+ ! assume SLOWROC, which has effectively 2.1C, makes ethane-like RO2 with SLOWROC emission weighted kOH
+ <R002c> SLOWROC + HO      = ETHP + 0.00101*ASOATJ     # 6.55E-14;
> 
+ ! HAP chemistry
+ ! ELD uncommented ACRO photolysis 11/18/21, kept photolysis rate constant that was already here
+ < T17>  ACRO + HO          = 0.57*MACP + 0.43*MCP 
+                                        -1.0*XC     # 8.E-12@-380;
+ < T18>  ACRO + O3          = .84*CO + .56*HO2 
+                                     + .28*HO 
+                                     + .72*HCHO 
+                                     + .62*GLY 
+                                     + 0.2*XC       # 2.9E-19;
+ < T19>  ACRO + NO3         = .68*HCHO + .32*MACP 
+                                       + .68*XO2 
+                                       + .68*MGLY 
+                                       + .32*HNO3 
+                                       + .68*NO2 
+                                       - 0.32*XC    # 3.4E-15;
+ ! 0.219*CH4 product removed from ACRO due to fixed CH4 conc
+ < T20>  ACRO               = CO + .477*HO2 
+                                 + .25*ETE 
+                                 + .246*CO2 
+                                 + .204*ACO3  
+                                 + .204*HO 
+                                 + .15*HCHO 
+                                 + .15*ACO3 
+                                 + .177*XC 
+                                 + .027*MO2         # 1.0/<ACRO_09>;
+ < T10>  BDE13 + HO         = HO + 0.58*ACRO 
+                                 + 2.26*XC   # 1.48E-11@-448.;
+ < T11>  BDE13 + O3         = .62*ACRO + .63*CO 
+                                       + .42*HO2 
+                                       + .08*HO
+                                       + .83*HCHO 
+                                       + .17*ETE 
+                                       + 3.66*XC  # 1.34E-14@2283.;
+ < T12>  BDE13 + NO3        = 0.900*OLNN 
+                                       + 0.100*OLND 
+                                       + 0.900*MACR  # 1E-13;
> 
+ ! Furans based on 5 species aggregate using  Wang et al. JGR 2021, Schwantes, and Coggon
+ ! Use RACM2 o-xylene RO2+HO2, RACM2 (same as MCM) RO2+NO rate constants
+ ! SOA yield taken from Table S1 of Bruns et al. 2016 Sci Rep and mass removed from KET product
+ <R003c>  FURAN + HO          = 0.49*DCB1 + 0.49*HO2
+                                          + 0.51*FURANO2 # 5.01E-11;
+ <R004c>  FURANO2 + NO        = 0.08*ONIT + 0.92*NO2
+                                          + 0.92*FURANONE
+                                          + 0.75*HO2
+                                          + 0.17*MO2     # 2.7E-12 @ -360.;
+ <R005c>  FURANO2 + HO2       = 0.6*OP2   + 0.4*FURANONE
+                                          + 0.4*HO
+                                          + 0.32*HO2
+                                          + 0.08*MO2     # 3.75E-13 @ -980.;
+ <R006c>  FURANONE + HO       = 0.65*KET  + 0.31*GLY
+                                          + 0.66*HO2
+                                          + 0.34*MO2
+                                          + 0.43*CO
+                                          + 0.04*ASOATJ # 4.40E-11;
+ <R007c>  FURAN + O3          = 0.02*HO   + ALD          # 3.43E-17;
+ <R008c>  FURAN + NO3         = NO2       + 0.8*DCB1
+                                          + 0.2*DCB3     # 8.99E-12;
> 
> 
+ ! PROG based on Coggon et al. and MCM http://mcm.york.ac.uk/browse.htt?species=PROPGLY
+ <R010c> PROG + HO = 0.613*HKET + 0.387*ALD + HO2 #1.20E-11;
> 
+ ! Sesquiterpenes based on MCM b-caryophyllene with autoxidation
+ ! added to O3 channel following Richters et al. 2016 ES&T
+ <R011c> SESQ  + NO3          = SESQNRO2            # 1.9E-11;
+ <R012c> SESQNRO2 + HO2       = VROCP0OXY2           # 2.84E-13 @ -1300.0;
+ <R013c> SESQNRO2 + NO        = VROCP3OXY2 + 2.0*NO2 # 2.70E-12 @ -360.0;
+ <R014c> SESQNRO2 + NO3       = VROCP3OXY2 + 2.0*NO2 # 2.3E-12;
+ <R015c> SESQ  + O3           = 0.982*VROCP3OXY2 
+                                  + 0.018*VROCN2OXY2 # 1.2E-14;
+ <R016c> SESQ + HO            = SESQRO2             # 1.97E-10;
+ <R017c> SESQRO2 + HO2        = VROCP0OXY2           # 2.84E-13 @ -1300.0;
+ <R019c> SESQRO2 + NO3        = VROCP3OXY2           # 2.3E-12;
+ <R020c> SESQRO2 + NO         = 0.247*VROCP0OXY2 
+                                  + 0.753*VROCP0OXY2
+                                  + 0.753*NO2       # 2.70E-12 @ -360.0;
> 
+ ! GLY and MGLY uptake
+ <HET_GLY>  GLY  = AGLYJ # 1.0~<HETERO_GLY>;
+ <HET_MGLY> MGLY = AGLYJ # 1.0~<HETERO_MGLY>;
> 
+ !ISON and TRPN uptake
+ <HET_ISON> ISON = AISONJ # 6.5E-07;
+ <HET_TRPN> TRPN = ATRPNJ # 1.3E-06;
1193a1402,1479
+ <HET_IEPOX> IEPOX = IEPOXP                 # 1.0~<HETERO_IEPOX>;
+ <HET_ISO3TET> IEPOXP = AISO3NOSJ           # 1.0~<HETERO_ISO3NOSJ>;
+ <HET_IEPOXOS> IEPOXP + ASO4J   = AISO3OSJ  # 1.0~<HETERO_ISO3OSJ>;
> 
> 
+ !<HET_IEPOX> IEPOX = AISO3J  # 1.0~<HETERO_IEPOX>;
> 
+ ! ROCALK chemistry based on GECKO (Lannuque et al. 2018 ACP) 
+ ! with autoxidation from Praske et al. 2018 PNAS
+ ! HO not regenerated due to actual radical chemistry
+ <ROCALK1c> VROCP6ALK + HO = 1.0000 * VROCP6ALKP   # 1.53e-11;
+ <ROCALK2c> VROCP5ALK + HO = 1.0000 * VROCP5ALKP   # 1.68e-11;
+ <ROCALK3c> VROCP4ALK + HO = 1.0000 * VROCP4ALKP   # 2.24e-11;
+ <ROCALK4c> VROCP3ALK + HO = 1.0000 * VROCP3ALKP   # 2.67e-11;
+ <ROCALK5c> VROCP2ALK + HO = 1.0000 * VROCP2ALKP   # 3.09e-11;
+ <ROCALK6c> VROCP1ALK + HO = 1.0000 * VROCP1ALKP   # 3.38e-11;
+ <HC1001>   HC10 + HO = 1.0000 * HC10P             # 1.10e-11;
> 
+ ! RO+NO updated to MCM values to include T dep
+ <ROCALK7c> VROCP6ALKP + NO =   0.7200 * VROCP6ALKP2
+                              + 0.2800 * VROCP4OXY2
+                              + 0.7200 * NO2         # 2.7e-12 @ -360.;
+ <ROCALK8c> VROCP5ALKP + NO =   0.7200 * VROCP5ALKP2 
+                              + 0.2800 * VROCP3OXY2
+                              + 0.7200 * NO2         # 2.7e-12 @ -360.;
+ <ROCALK9c> VROCP4ALKP + NO =   0.7200 * VROCP4ALKP2 
+                              + 0.2800 * VROCP2OXY2
+                              + 0.7200 * NO2         # 2.7e-12 @ -360.;
+ <ROCALK10c> VROCP3ALKP + NO =  0.7200 * VROCP3ALKP2 
+                              + 0.2800 * VROCP0OXY2
+                              + 0.7200 * NO2         # 2.7e-12 @ -360.;
+ <ROCALK11c> VROCP2ALKP + NO =  0.7200 * VROCP2ALKP2 
+                              + 0.2800 * VROCN1OXY1
+                              + 0.7200 * NO2         # 2.7e-12 @ -360.;
+ <ROCALK12c> VROCP1ALKP + NO =  0.7200 * VROCP1ALKP2 
+                              + 0.2800 * VROCN2OXY2
+                              + 0.7200 * NO2         # 2.7e-12 @ -360.;
+ <HC1002+    HC10P + NO      =  0.7400 * HC10P2 
+                              + 0.2600 * ONIT
+                              + 0.7400 * NO2         # 2.7E-12 @ -360.;
> 
+ <ROCALK13c> VROCP6ALKP + NO3 = 1.0000 * VROCP6ALKP2 
+                                + 1.0000 * NO2       # 2.30e-12;
+ <ROCALK14c> VROCP5ALKP + NO3 = 1.0000 * VROCP5ALKP2 
+                                + 1.0000 * NO2       # 2.30e-12;
+ <ROCALK15c> VROCP4ALKP + NO3 = 1.0000 * VROCP4ALKP2 
+                                + 1.0000 * NO2       # 2.30e-12;
+ <ROCALK16c> VROCP3ALKP + NO3 = 1.0000 * VROCP3ALKP2 
+                                + 1.0000 * NO2       # 2.30e-12;
+ <ROCALK17c> VROCP2ALKP + NO3 = 1.0000 * VROCP2ALKP2 
+                                + 1.0000 * NO2       # 2.30e-12;
+ <ROCALK18c> VROCP1ALKP + NO3 = 1.0000 * VROCP1ALKP2 
+                                + 1.0000 * NO2       # 2.30e-12;
+ <HC1003+    HC10P + NO3      = 1.0000 * HC10P2 
+                                + 1.0000 * NO2       # 2.30e-12;
> 
+ <ROCALK19c> VROCP6ALKP + HO2 = 1.0000 * VROCP3OXY2  # 2.17e-11;
+ <ROCALK20c> VROCP5ALKP + HO2 = 1.0000 * VROCP3OXY2  # 2.20e-11;
+ <ROCALK21c> VROCP4ALKP + HO2 = 1.0000 * VROCP1OXY1  # 2.25e-11;
+ <ROCALK22c> VROCP3ALKP + HO2 = 1.0000 * VROCP0OXY2  # 2.26e-11;
+ <ROCALK23c> VROCP2ALKP + HO2 = 1.0000 * VROCN2OXY2  # 2.27e-11;
+ <ROCALK24c> VROCP1ALKP + HO2 = 1.0000 * VROCN2OXY2  # 2.27e-11;
+ <HC1004+    HC10P + HO2      = 1.0000 * OP2         # 2.66e-13 @ -1300.;
> 
+ <ROCALK25c> VROCP6ALKP2 = 1.0000 * HO2
+                           + 1.0000 * VROCP2OXY2     # 1.88e-1;
+ <ROCALK26c> VROCP5ALKP2 = 1.0000 * HO2
+                           + 1.0000 * VROCP2OXY2     # 1.88e-1;
+ <ROCALK27c> VROCP4ALKP2 = 1.0000 * HO2
+                           + 1.0000 * VROCP1OXY1     # 1.88e-1;
+ <ROCALK28c> VROCP3ALKP2 = 1.0000 * HO2
+                           + 1.0000 * VROCN1OXY1     # 1.88e-1;
+ <ROCALK29c> VROCP2ALKP2 = 1.0000 * HO2
+                           + 1.0000 * VROCN2OXY2     # 1.88e-1;
+ <ROCALK30c> VROCP1ALKP2 = 1.0000 * HO2
+                           + 1.0000 * VROCN2OXY2     # 1.88e-1;
+ <HC1005+    HC10P2      = 1.0000 * HO2
+                           + 1.0000 * VROCP4OXY2     # 1.88e-1;
1195c1481,1510
- <HET_IEPOX> IEPOX = AISO3J  # 1.0~<HETERO_IEPOX>;
---
+ ! RO2+NO,NO3 products updated to assume alkoxy radical proceeds
+ ! entirely through ketone channel (same as MCM)
+ <ROCALK31c> VROCP6ALKP2 + NO =  0.1400 * VROCP2OXY2 
+                                + 0.8600 * NO2
+                                + 0.8600 * VROCP3OXY2 
+                                + 0.8600 * HO2       # 2.7E-12 @ -360.;
+ <ROCALK32c> VROCP5ALKP2 + NO = 0.1400 * VROCP1OXY1 
+                                + 0.8600 * NO2
+                                + 0.8600 * VROCP3OXY2 
+                                + 0.8600 * HO2        # 2.7E-12 @ -360.;
+ <ROCALK33c> VROCP4ALKP2 + NO = 0.1400 * VROCP0OXY2 
+                                + 0.8600 * NO2
+                                + 0.8600 * VROCP1OXY1
+                                + 0.8600 * HO2        # 2.7E-12 @ -360.;
+ <ROCALK34c> VROCP3ALKP2 + NO = 0.1400 * VROCN2OXY2 
+                                + 0.8600 * NO2
+                                + 0.8600 * VROCP0OXY2 
+                                + 0.8600 * HO2        # 2.7E-12 @ -360.;
+ <ROCALK35c> VROCP2ALKP2 + NO = 0.1400 * VROCN2OXY2 
+                                + 0.8600 * NO2
+                                + 0.8600 * VROCN2OXY2 
+                                + 0.8600 * HO2        # 2.7E-12 @ -360.;
+ <ROCALK36c> VROCP1ALKP2 + NO = 0.1400 * VROCN2OXY2 
+                                + 0.8600 * NO2
+                                + 0.8600 * VROCN2OXY2 
+                                + 0.8600 * HO2        # 2.7E-12 @ -360.;
+ <HC1006+    HC10P2 + NO      = 0.1200 * ONIT 
+                                + 0.8800 * NO2
+                                + 0.8800 * KET 
+                                + 0.8800 * HO2        # 2.7E-12 @ -360.;
1197c1512,1532
< ! oligomerization reaction for secondary organic aerosols
---
+ <ROCALK37c> VROCP6ALKP2 + NO3 =  1.0000 * NO2
+                                + 1.0000 * VROCP3OXY2 
+                                + 1.0000 * HO2        # 2.30e-12;
+ <ROCALK38c> VROCP5ALKP2 + NO3 =  1.0000 * NO2
+                                 + 1.0000 * VROCP3OXY2 
+                                 + 1.0000 * HO2       # 2.30e-12;
+ <ROCALK39c> VROCP4ALKP2 + NO3 = 1.0000 * NO2
+                                 + 1.0000 * VROCP1OXY1 
+                                 + 1.0000 * HO2       # 2.30e-12;
+ <ROCALK40c> VROCP3ALKP2 + NO3 = 1.0000 * NO2
+                                 + 1.0000 * VROCP0OXY2 
+                                 + 1.0000 * HO2       # 2.30e-12;
+ <ROCALK41c> VROCP2ALKP2 + NO3 = 1.0000 * NO2
+                                 + 1.0000 * VROCN2OXY2 
+                                 + 1.0000 * HO2       # 2.30e-12;
+ <ROCALK42c> VROCP1ALKP2 + NO3 = 1.0000 * NO2
+                                 + 1.0000 * VROCN2OXY2 
+                                 + 1.0000 * HO2       # 2.30e-12;
+ <HC1007+    HC10P2 + NO3      = 1.0000 * NO2
+                                 + 1.0000 * KET 
+                                 + 1.0000 * HO2       # 2.30e-12;
1199,1266c1534,1540
- <OLIG_XYLENE1+    AXYL1J = 0.8571*AOLGAJ # 9.48816E-6;
- <OLIG_XYLENE2+    AXYL2J = 1.1429*AOLGAJ # 9.48816E-6;
- <OLIG_TOLUENE1>   ATOL1J = 0.8571*AOLGAJ # 9.48816E-6;
- <OLIG_TOLUENE2>   ATOL2J = 1.1429*AOLGAJ # 9.48816E-6;
- <OLIG_BENZENE1>   ABNZ1J = 0.7143*AOLGAJ # 9.48816E-6;
- <OLIG_BENZENE2>   ABNZ2J = 0.7143*AOLGAJ # 9.48816E-6;
- <OLIG_TERPENE1>   ATRP1J = 0.8*AOLGBJ # 9.48816E-6;
- <OLIG_TERPENE2>   ATRP2J = 0.9*AOLGBJ # 9.48816E-6;
- <OLIG_ISOPRENE1>  AISO1J = 0.50*AOLGBJ # 9.48816E-6;
- <OLIG_ISOPRENE2>  AISO2J = 0.50*AOLGBJ # 9.48816E-6;
- <OLIG_SESQT1+     ASQTJ  = 1.50*AOLGBJ # 9.48816E-6;
- <OLIG_PAH1+       APAH1J = 1.4286*AOLGAJ # 9.48816E-6;
- <OLIG_PAH2+       APAH2J = 1.4286*AOLGAJ # 9.48816E-6;
- <OLIG_ALK1+       AALK1J = 1.7143*AOLGAJ # 9.48816E-6;
- <OLIG_ALK2+       AALK2J = 1.7143*AOLGAJ # 9.48816E-6;
- 
- !aging reactions for primary organic carbon
- <RPOAGEPI> APOCI   + HO = 1.25*APNCOMI + APOCI + HO # 2.5E-12;
- <RPOAGELI> APNCOMI + HO = HO                        # 1.0~<HETERO_PNCOMLI>;
- <RPOAGEPJ> APOCJ   + HO = 1.25*APNCOMJ + APOCJ + HO # 2.5E-12;
- <RPOAGELJ> APNCOMJ + HO = HO                        # 1.0~<HETERO_PNCOMLJ>;
- 
- ! Formation of Potential Combustion SOA (pcSOA)
- <PCSOA>  PCVOC + HO       = HO  + PCSOARXN  # 1.25E-11;
- 
- ! Aging with Func. and Frag. (Donahue et al. 2012)
- <POA_AGE1> VLVPO1 + HO = HO 
-       + 0.4857 * VLVPO1 + 0.0062 * VSVPO1
-       + 0.0025 * VSVPO2 + 0.0026 * VSVPO3
-       + 0.0023 * VIVPO1 + 0.2944 * VLVOO1
-       + 0.2021 * VLVOO2 + 0.0019 * VSVOO2
-       + 0.0023 * VSVOO3                   #4.0e-11;
- <POA_AGE2> VSVPO1 + HO = HO 
-       + 0.3003 * VLVPO1 + 0.2862 * VSVPO1
-       + 0.0041 * VSVPO2 + 0.0035 * VSVPO3
-       + 0.2239 * VLVOO1 + 0.1820 * VLVOO2 #4.0e-11;
- <POA_AGE3> VSVPO2 + HO = HO
-       + 0.3856 * VLVPO1 + 0.0950 * VSVPO1
-       + 0.1373 * VSVPO2 + 0.0005 * VSVPO3
-       + 0.2051 * VLVOO1 + 0.1764 * VLVOO2 #4.0e-11;
- <POA_AGE4> VSVPO3 + HO = HO 
-       + 0.2181 * VLVPO1 + 0.3063 * VSVPO1
-       + 0.0153 * VSVPO2 + 0.1043 * VSVPO3
-       + 0.1893 * VLVOO1 + 0.1668 * VLVOO2 #4.0e-11;
- <POA_AGE5> VIVPO1 + HO = HO 
-       + 0.2412 * VLVPO1 + 0.2089 * VSVPO1
-       + 0.3000 * VSVPO2 + 0.2028 * VLVOO1
-       + 0.0471 * VLVOO2                   #4.0e-11;
- <POA_AGE6> VLVOO1 + HO = HO 
-       + 0.6664 * VLVOO1 + 0.0143 * VLVOO2
-       + 0.0123 * VSVOO1 + 0.1239 * VSVOO2
-       + 0.1831 * VSVOO3                   #4.0e-11;
- <POA_AGE7> VLVOO2 + HO = HO
-       + 0.2858 * VLVOO1 + 0.3931 * VLVOO2
-       + 0.0139 * VSVOO1 + 0.1027 * VSVOO2
-       + 0.2045 * VSVOO3                   #4.0e-11;
- <POA_AGE8> VSVOO1 + HO = HO 
-       + 0.3303 * VLVOO1 + 0.2272 * VLVOO2
-       + 0.2607 * VSVOO1 + 0.0702 * VSVOO2
-       + 0.1116 * VSVOO3                   #4.0e-11;
- <POA_AGE9> VSVOO2 + HO = HO
-       + 0.3444 * VLVOO1 + 0.2749 * VLVOO2
-       + 0.0491 * VSVOO1 + 0.2577 * VSVOO2
-       + 0.0739 * VSVOO3                   #4.0e-11;
- <POA_AGE10> VSVOO3 + HO = HO 
-       + 0.3886 * VLVOO1 + 0.2421 * VLVOO2
-       + 0.0640 * VSVOO1 + 0.0385 * VSVOO2
-       + 0.2667 * VSVOO3                   #4.0e-11;         
---
+ <ROCALK43c> VROCP6ALKP2 + HO2 = 1.0000 * VROCP1OXY3 # 2.17e-11;
+ <ROCALK44c> VROCP5ALKP2 + HO2 = 1.0000 * VROCP0OXY2 # 2.20e-11;
+ <ROCALK45c> VROCP4ALKP2 + HO2 = 1.0000 * VROCN1OXY1 # 2.25e-11;
+ <ROCALK46c> VROCP3ALKP2 + HO2 = 1.0000 * VROCN2OXY2 # 2.26e-11;
+ <ROCALK47c> VROCP2ALKP2 + HO2 = 1.0000 * VROCN2OXY2 # 2.27e-11;
+ <ROCALK48c> VROCP1ALKP2 + HO2 = 1.0000 * VROCN2OXY2 # 2.27e-11;
+ <HC1008+    HC10P2 + HO2      = 1.0000 * VROCP2OXY2 # 2.66e-13 @ -1300.;
1267a1542,1625
+ ! IVOC aromatic oxidation following MCM with autoxidation
+ ! added to bicyclic RO2 channel. Epoxide channel eliminated
+ ! and nitrate yield reduced following Xu et al. JPCA 2020.
+ ! RO2+RO2 rates from RACM2 aromatic RO2s
+ ! ROCP6ARO
+ <ROCARO01> VROCP6ARO + HO = 0.8400*VROCP6AROP
+                          + 0.1600*HO2
+                          + 0.1600*VROCP4OXY2 # 1.81E-11;
+ <ROCARO02> VROCP6AROP + HO2 = 0.0595*VROCP4OXY2
+                          + 0.9048*VROCP1OXY3
+                          + 0.0357*VROCN2OXY4 # 2.91E-13 @ -1300.;
+ <ROCARO03> VROCP6AROP + NO =   0.0001*VROCP4OXY2
+                          + 0.0018*VROCP1OXY3
+                          + 0.0001*VROCN1OXY3
+                          + 0.9980*NO2
+                          + 0.9980*HO2
+                          + 0.0594*VROCP4OXY2
+                          + 0.4693*GLY
+                          + 0.4693*MGLY
+                          + 0.4693*FURANONE
+                          + 0.4693*DCB2        # 2.7E-12 @ -360.;
+ <ROCARO04> VROCP6AROP + NO3 =  1.0000*NO2
+                          + 1.0000*HO2
+                          + 0.0595*VROCP4OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 2.3E-12;
+ <ROCARO05> VROCP6AROP + MO2 =  0.5000*HCHO
+                          + 2.0000*HO2
+                          + 0.5000*MOH
+                          + 0.0595*VROCP4OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 3.56E-14 @ -708.;
+ <ROCARO06> VROCP6AROP + ACO3 = 0.7000*MO2
+                          + 2.0000*HO2
+                          + 0.3000*ORA2
+                          + 0.0595*VROCP4OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 7.4E-13 @ -765.;
+ ! ROCP5ARO
+ <ROCARO11> VROCP5ARO + HO = 0.8400*VROCP5AROP
+                          + 0.1600*HO2
+                          + 0.1600*VROCP3OXY2 # 1.81E-11;
+ <ROCARO12> VROCP5AROP + HO2 = 0.0595*VROCP3OXY2
+                          + 0.9048*VROCP0OXY2
+                          + 0.0357*VROCN2OXY4 # 2.91E-13 @ -1300.;
+ <ROCARO13> VROCP5AROP + NO =   0.0001*VROCP3OXY2
+                          + 0.0018*VROCP0OXY4
+                          + 0.0001*VROCN2OXY4
+                          + 0.9980*NO2
+                          + 0.9980*HO2
+                          + 0.0594*VROCP3OXY2
+                          + 0.4693*GLY
+                          + 0.4693*MGLY
+                          + 0.4693*FURANONE
+                          + 0.4693*DCB2        # 2.7E-12 @ -360.;
+ <ROCARO14> VROCP5AROP + NO3 =  1.0000*NO2
+                          + 1.0000*HO2
+                          + 0.0595*VROCP3OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 2.3E-12;
+ <ROCARO15> VROCP5AROP + MO2 =  0.5000*HCHO
+                          + 2.0000*HO2
+                          + 0.5000*MOH
+                          + 0.0595*VROCP3OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 3.56E-14 @ -708.;
+ <ROCARO16> VROCP5AROP + ACO3 = 0.7000*MO2
+                          + 2.0000*HO2
+                          + 0.3000*ORA2
+                          + 0.0595*VROCP3OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 7.4E-13 @ -765.;
1268a1627,1666
+ ! NAPH
+ <ROCARO21> NAPH + HO = 0.8400*NAPHP
+                          + 0.1600*HO2
+                          + 0.1600*VROCP3OXY2 # 2.31E-11;
+ <ROCARO22> NAPHP + HO2 = 0.0595*VROCP3OXY2
+                          + 0.9048*VROCP1OXY3
+                          + 0.0357*VROCN2OXY8 # 2.91E-13 @ -1300.;
+ <ROCARO23> NAPHP + NO =   0.0001*VROCP4OXY2
+                          + 0.0018*VROCP1OXY3
+                          + 0.0001*VROCN2OXY8
+                          + 0.9980*NO2
+                          + 0.9980*HO2
+                          + 0.0594*VROCP4OXY2
+                          + 0.4693*GLY
+                          + 0.4693*MGLY
+                          + 0.4693*FURANONE
+                          + 0.4693*DCB2        # 2.7E-12 @ -360.;
+ <ROCARO24> NAPHP + NO3 =  1.0000*NO2
+                          + 1.0000*HO2
+                          + 0.0595*VROCP4OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 2.3E-12;
+ <ROCARO25> NAPHP + MO2 =  0.5000*HCHO
+                          + 2.0000*HO2
+                          + 0.5000*MOH
+                          + 0.0595*VROCP4OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 3.56E-14 @ -708.;
+ <ROCARO26> NAPHP + ACO3 = 0.7000*MO2
+                          + 2.0000*HO2
+                          + 0.3000*ORA2
+                          + 0.0595*VROCP4OXY2
+                          + 0.4702*GLY
+                          + 0.4702*MGLY
+                          + 0.4702*FURANONE
+                          + 0.4702*DCB2        # 7.4E-13 @ -765.;
1269a1668,1864
+ ! Multigenerational oxidation of LVOCs and SVOCs
+ ! Aging of ROCOXY with explicit low MW species
+ <ROCOXY1c> VROCN2OXY8 + HO = HO 
+       + 0.0854 * VROCN2OXY8 + 0.2581 * DCB1
+       + 0.2581 * MEK + 0.2581 * ACD
+       + 0.2581 * ALD + 0.2581 * MO2
+       + 0.2581 * ETHP + 0.2581 * HC3P
+       + 0.2581 * MEKP                   # 5.90e-11;
+ <ROCOXY2c> VROCN2OXY4 + HO = HO 
+       + 0.4640 * VROCN2OXY8 + 0.1977 * VROCN2OXY4
+       + 0.0121 * VROCN1OXY6 + 0.0152 * VROCN1OXY3
+       + 0.0624 * VROCP0OXY4 + 0.0388 * VROCP1OXY3
+       + 0.0491 * VROCP2OXY2 + 0.0398 * VROCP3OXY2
+       + 0.0183 * VROCP4OXY2 + 0.0308 * OP3
+       + 0.0040 * OP2 + 0.0794 * DCB1
+       + 0.0794 * MEK + 0.0794 * KET
+       + 0.0794 * ACD + 0.0794 * ALD
+       + 0.0794 * MO2 + 0.0794 * ETHP
+       + 0.0794 * HC3P + 0.0794 * MEKP
+       + 0.0794 * HC5P + 0.0794 * KETP # 6.07e-11;
+ <ROCOXY3c> VROCN2OXY2 + HO = HO 
+       + 0.1041 * VROCN2OXY8 + 0.5638 * VROCN2OXY4
+       + 0.2141 * VROCN2OXY2 + 0.0153 * VROCN1OXY6
+       + 0.0298 * VROCN1OXY3 + 0.0096 * VROCN1OXY1
+       + 0.0189 * VROCP0OXY4 + 0.0456 * VROCP0OXY2
+       + 0.0314 * VROCP1OXY3 + 0.0199 * VROCP1OXY1
+       + 0.0459 * VROCP2OXY2 + 0.0452 * VROCP3OXY2
+       + 0.0455 * VROCP4OXY2 + 0.0325 * VROCP5OXY1
+       + 0.0369 * VROCP6OXY1 + 0.0026 * OP3
+       + 0.0390 * DCB1 + 0.0390 * HKET
+       + 0.0390 * MEK + 0.0390 * ACD
+       + 0.0390 * ALD + 0.0390 * MO2
+       + 0.0390 * ETHP + 0.0390 * HC3P
+       + 0.0390 * MEKP + 0.0925 * HC5P # 5.54e-11;
+ <ROCOXY4c> VROCN1OXY6 + HO = HO 
+       + 0.2036 * VROCN2OXY8 + 0.0071 * VROCN2OXY4
+       + 0.1840 * DCB1 + 0.1840 * MEK
+       + 0.1840 * KET + 0.1840 * ACD
+       + 0.1840 * ALD + 0.1840 * MO2
+       + 0.1840 * ETHP + 0.1840 * HC3P
+       + 0.1840 * MEKP + 0.1840 * HC5P # 5.63e-11;
+ <ROCOXY5c> VROCN1OXY3 + HO = HO 
+       + 0.2792 * VROCN2OXY8 + 0.4025 * VROCN2OXY4
+       + 0.0088 * VROCN2OXY2 + 0.0319 * VROCN1OXY6
+       + 0.0076 * VROCN1OXY3 + 0.0194 * VROCP0OXY4
+       + 0.0104 * VROCP0OXY2 + 0.0510 * VROCP1OXY3
+       + 0.0075 * VROCP1OXY1 + 0.0512 * VROCP2OXY2
+       + 0.0462 * VROCP3OXY2 + 0.0512 * VROCP4OXY2
+       + 0.0138 * VROCP5OXY1 + 0.0135 * OP2
+       + 0.0646 * DCB1 + 0.0646 * HKET
+       + 0.0646 * MEK + 0.0646 * ACD
+       + 0.0646 * ALD + 0.0646 * MO2
+       + 0.0646 * ETHP + 0.0646 * HC3P
+       + 0.0646 * MEKP + 0.1753 * HC5P # 5.46e-11;
+ <ROCOXY6c> VROCN1OXY1 + HO = HO 
+       + 0.0074 * VROCN2OXY8 + 0.1190 * VROCN2OXY4
+       + 0.7261 * VROCN2OXY2 + 0.0122 * VROCN1OXY6
+       + 0.0305 * VROCN1OXY3 + 0.0070 * VROCN1OXY1
+       + 0.0291 * VROCP0OXY4 + 0.0454 * VROCP0OXY2
+       + 0.0234 * VROCP1OXY3 + 0.0352 * VROCP1OXY1
+       + 0.0624 * VROCP2OXY2 + 0.0518 * VROCP3OXY2
+       + 0.0509 * VROCP4OXY2 + 0.0347 * VROCP5OXY1
+       + 0.0748 * VROCP6OXY1 + 0.0163 * OP3
+       + 0.0062 * OP2 + 0.0244 * DCB1
+       + 0.0244 * HKET + 0.0244 * MEK
+       + 0.0244 * ACD + 0.0244 * ALD
+       + 0.0244 * MO2 + 0.0244 * ETHP
+       + 0.0244 * HC3P + 0.0244 * MEKP
+       + 0.0537 * HC5P                   # 4.50e-11;
+ <ROCOXY7c> VROCP0OXY4 + HO = HO 
+       + 0.2822 * VROCN2OXY8 + 0.1165 * VROCN2OXY4
+       + 0.0320 * VROCN1OXY6 + 0.0183 * VROCN1OXY3
+       + 0.0011 * VROCP0OXY4 + 0.0660 * VROCP2OXY2
+       + 0.0535 * VROCP3OXY2 + 0.0246 * VROCP4OXY2
+       + 0.0054 * OP2 + 0.1068 * DCB1
+       + 0.1068 * MEK + 0.1068 * KET
+       + 0.1068 * ACD + 0.1068 * ALD
+       + 0.1068 * MO2 + 0.1068 * ETHP
+       + 0.1068 * HC3P + 0.1068 * MEKP
+       + 0.1068 * HC5P + 0.1068 * KETP # 5.17e-11;
+ <ROCOXY8c> VROCP0OXY2 + HO = HO 
+       + 0.0659 * VROCN2OXY8 + 0.4579 * VROCN2OXY4
+       + 0.1156 * VROCN2OXY2 + 0.0325 * VROCN1OXY6
+       + 0.0657 * VROCN1OXY3 + 0.0046 * VROCN1OXY1
+       + 0.0307 * VROCP0OXY4 + 0.0024 * VROCP0OXY2
+       + 0.0395 * VROCP1OXY3 + 0.0215 * VROCP1OXY1
+       + 0.0539 * VROCP2OXY2 + 0.0516 * VROCP3OXY2
+       + 0.0519 * VROCP4OXY2 + 0.0371 * VROCP5OXY1
+       + 0.0421 * VROCP6OXY1 + 0.0105 * OP3
+       + 0.0445 * DCB1 + 0.0445 * HKET
+       + 0.0445 * MEK + 0.0445 * ACD
+       + 0.0445 * ALD + 0.0445 * MO2
+       + 0.0445 * ETHP + 0.0445 * HC3P
+       + 0.0445 * MEKP + 0.1055 * HC5P # 4.73e-11;
+ <ROCOXY9c> VROCP1OXY3 + HO = HO 
+       + 0.1778 * VROCN2OXY8 + 0.1924 * VROCN2OXY4
+       + 0.0004 * VROCN2OXY2 + 0.0740 * VROCN1OXY6
+       + 0.0452 * VROCN1OXY3 + 0.0631 * VROCP0OXY4
+       + 0.0007 * VROCP0OXY2 + 0.0006 * VROCP1OXY3
+       + 0.0227 * VROCP2OXY2 + 0.0585 * VROCP3OXY2
+       + 0.0649 * VROCP4OXY2 + 0.0174 * VROCP5OXY1
+       + 0.0154 * OP3 + 0.0170 * OP2
+       + 0.0818 * DCB1 + 0.0818 * HKET
+       + 0.0818 * MEK + 0.0818 * ACD
+       + 0.0818 * ALD + 0.0818 * MO2
+       + 0.0818 * ETHP + 0.0818 * HC3P
+       + 0.0818 * MEKP + 0.2220 * HC5P # 4.60e-11;
+ <ROCOXY10c> VROCP1OXY1 + HO = HO 
+       + 0.0023 * VROCN2OXY8 + 0.1340 * VROCN2OXY4
+       + 0.3349 * VROCN2OXY2 + 0.0080 * VROCN1OXY6
+       + 0.1193 * VROCN1OXY3 + 0.0758 * VROCN1OXY1
+       + 0.0292 * VROCP0OXY4 + 0.0766 * VROCP0OXY2
+       + 0.0277 * VROCP1OXY3 + 0.0118 * VROCP1OXY1
+       + 0.0651 * VROCP2OXY2 + 0.0709 * VROCP3OXY2
+       + 0.0668 * VROCP4OXY2 + 0.0423 * VROCP5OXY1
+       + 0.0911 * VROCP6OXY1 + 0.0066 * OP3
+       + 0.0025 * OP2 + 0.0297 * DCB1
+       + 0.0297 * HKET + 0.0297 * MEK
+       + 0.0297 * ACD + 0.0297 * ALD
+       + 0.0297 * MO2 + 0.0297 * ETHP
+       + 0.0297 * HC3P + 0.0297 * MEKP
+       + 0.0654 * HC5P                   # 3.80e-11;
+ <ROCOXY11c> VROCP2OXY2 + HO = HO 
+       + 0.0445 * VROCN2OXY8 + 0.1726 * VROCN2OXY4
+       + 0.0104 * VROCN2OXY2 + 0.0513 * VROCN1OXY6
+       + 0.1118 * VROCN1OXY3 + 0.0013 * VROCN1OXY1
+       + 0.1337 * VROCP0OXY4 + 0.0403 * VROCP0OXY2
+       + 0.0511 * VROCP1OXY3 + 0.0068 * VROCP1OXY1
+       + 0.0236 * VROCP2OXY2 + 0.0293 * VROCP3OXY2
+       + 0.0733 * VROCP4OXY2 + 0.0523 * VROCP5OXY1
+       + 0.0595 * VROCP6OXY1 + 0.0041 * OP3
+       + 0.0023 * OP2 + 0.0628 * DCB1
+       + 0.0628 * HKET + 0.0628 * MEK
+       + 0.0628 * ACD + 0.0628 * ALD
+       + 0.0628 * MO2 + 0.0628 * ETHP
+       + 0.0628 * HC3P + 0.0628 * MEKP
+       + 0.1489 * HC5P                   # 3.93e-11;
+ <ROCOXY12c> VROCP3OXY2 + HO = HO 
+       + 0.0317 * VROCN2OXY8 + 0.0765 * VROCN2OXY4
+       + 0.0009 * VROCN2OXY2 + 0.0526 * VROCN1OXY6
+       + 0.0489 * VROCN1OXY3 + 0.1550 * VROCP0OXY4
+       + 0.0155 * VROCP0OXY2 + 0.1051 * VROCP1OXY3
+       + 0.0013 * VROCP1OXY1 + 0.0535 * VROCP2OXY2
+       + 0.0086 * VROCP3OXY2 + 0.0426 * VROCP4OXY2
+       + 0.0582 * VROCP5OXY1 + 0.0661 * VROCP6OXY1
+       + 0.0506 * OP3 + 0.0114 * OP2
+       + 0.0698 * DCB1 + 0.0698 * HKET
+       + 0.0698 * MEK + 0.0698 * ACD
+       + 0.0698 * ALD + 0.0698 * MO2
+       + 0.0698 * ETHP + 0.0698 * HC3P
+       + 0.0698 * MEKP + 0.1656 * HC5P # 3.52e-11;
+ <ROCOXY13c> VROCP4OXY2 + HO = HO 
+       + 0.0117 * VROCN2OXY8 + 0.0167 * VROCN2OXY4
+       + 0.0480 * VROCN1OXY6 + 0.0246 * VROCN1OXY3
+       + 0.0881 * VROCP0OXY4 + 0.0916 * VROCP1OXY3
+       + 0.0073 * VROCP1OXY1 + 0.0972 * VROCP2OXY2
+       + 0.0456 * VROCP3OXY2 + 0.0024 * VROCP4OXY2
+       + 0.0479 * VROCP5OXY1 + 0.0745 * VROCP6OXY1
+       + 0.0607 * OP3 + 0.0155 * OP2
+       + 0.0786 * DCB1 + 0.0786 * HKET
+       + 0.0786 * MEK + 0.0786 * ACD
+       + 0.0786 * ALD + 0.0786 * MO2
+       + 0.0786 * ETHP + 0.0786 * HC3P
+       + 0.0786 * MEKP + 0.1730 * HC5P # 3.12e-11;
+ <ROCOXY14c> VROCP5OXY1 + HO = HO 
+       + 0.0103 * VROCN2OXY4 + 0.0006 * VROCN2OXY2
+       + 0.0090 * VROCN1OXY6 + 0.0146 * VROCN1OXY3
+       + 0.0702 * VROCP0OXY4 + 0.0153 * VROCP0OXY2
+       + 0.1038 * VROCP1OXY3 + 0.0031 * VROCP1OXY1
+       + 0.1650 * VROCP2OXY2 + 0.1566 * VROCP3OXY2
+       + 0.0724 * VROCP4OXY2 + 0.0062 * VROCP5OXY1
+       + 0.1398 * VROCP6OXY1 + 0.0216 * OP3
+       + 0.0384 * OP2 + 0.0526 * DCB1
+       + 0.0526 * HKET + 0.0526 * MEK
+       + 0.0526 * ACD + 0.0526 * ALD
+       + 0.0526 * MO2 + 0.0526 * ETHP
+       + 0.0526 * HC3P + 0.0526 * MEKP
+       + 0.1280 * HC5P                   # 2.40e-11;
+ <ROCOXY15c> VROCP6OXY1 + HO = HO 
+       + 0.0061 * VROCN1OXY6 + 0.0049 * VROCN1OXY3
+       + 0.0224 * VROCP0OXY4 + 0.0503 * VROCP1OXY3
+       + 0.0022 * VROCP1OXY1 + 0.0879 * VROCP2OXY2
+       + 0.1384 * VROCP3OXY2 + 0.1463 * VROCP4OXY2
+       + 0.0432 * VROCP5OXY1 + 0.0957 * VROCP6OXY1
+       + 0.0316 * OP3 + 0.0585 * OP2
+       + 0.0571 * DCB1 + 0.0571 * HKET
+       + 0.0571 * MEK + 0.0571 * ACD
+       + 0.0571 * ALD + 0.0571 * MO2
+       + 0.0571 * ETHP + 0.0571 * HC3P
+       + 0.0571 * MEKP + 0.1544 * HC5P # 2.05e-11;
+ <ROCOXY16c> OP3 + HO = HO 
+       + 0.1188 * VROCN2OXY8 + 0.0008 * VROCN2OXY4
+       + 0.0390 * VROCN1OXY6 + 0.0114 * VROCP0OXY4
+       + 0.2266 * DCB1 + 0.2266 * MEK
+       + 0.2266 * ACD + 0.2266 * ALD
+       + 0.2266 * MO2 + 0.2266 * ETHP
+       + 0.2266 * HC3P + 0.2266 * MEKP # 4.69e-11;
'''
