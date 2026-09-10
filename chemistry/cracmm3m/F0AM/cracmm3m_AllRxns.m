%Foam Reactions File based on the mech.def file for the cracmm3m mechanism.
% # of species   =  248
% # of reactions =  921
% file created by Havala Pye

% Set constant species by scaling to air number density
N2  =  0.780800000.*M;
O2  =  0.209500000.*M;
H2  =  0.000000560.*M;
% CH4 =  0.000001850.*M;
% methane is set to a constant global background of 1850 ppb in CMAQ but is
% modified in the F0AM mechanism to evolve freely


SpeciesToAdd = {...
'O3'; 'O3P'; 'O1D'; 'H2O2'; 'HO'; ...
'NO2'; 'NO'; 'NO3'; 'HONO'; 'HNO3'; ...
'HNO4'; 'HO2'; 'HCHO'; 'CO'; 'ACD'; ...
'MO2'; 'ALD'; 'ETHP'; 'ACT'; 'ACO3'; ...
'UALD'; 'KET'; 'PINAL'; 'PINALP'; 'LIMAL'; ...
'LIMALP'; 'MEK'; 'HKET'; 'MACR'; 'MACP'; ...
'XO2'; 'MVK'; 'GLY'; 'MGLY'; 'DCB1'; ...
'DCB2'; 'BALD'; 'BEN'; 'BAL1'; 'OP1'; ...
'OP2'; 'OPB'; 'VOP3'; 'PAA'; 'ONIT'; ...
'PAN'; 'CO2'; 'PPN'; 'RCO3'; 'HC3P'; ...
'VTRPN'; 'VHONIT'; 'N2O5'; 'SO2'; 'SULF'; ...
'SULRXN'; 'ETH'; 'HC3'; 'ASOATJ'; 'HC5'; ...
'HC5P'; 'ETE'; 'ETEP'; 'OLT'; 'OLTP'; ...
'OLI'; 'OLIP'; 'ACE'; 'ORA1'; 'BENP'; ...
'PHEN'; 'TOL'; 'TOLP'; 'CSL'; 'XYL'; ...
'XYLP'; 'EBZ'; 'EBZP'; 'ISO'; 'ISON'; ...
'ISONP'; 'ISOP'; 'ISHP'; 'IEPOX'; 'IPX'; ...
'INALD'; 'ROH'; 'API'; 'APIP1'; 'APIP2'; ...
'LIM'; 'LIMP1'; 'LIMP2'; 'ACTP'; 'MEKP'; ...
'KETP'; 'MCP'; 'MVKP'; 'UALP'; 'DCB3'; ...
'BALP'; 'ADDC'; 'CHO'; 'MCT'; 'MCTO'; ...
'MOH'; 'EOH'; 'ETEG'; 'HC10P'; 'MAHP'; ...
'ORA2'; 'ORAP'; 'MPAN'; 'MCTP'; 'OLNN'; ...
'OLND'; 'APINP1'; 'APINP2'; 'LIMNP1'; 'LIMNP2'; ...
'ADCN'; 'VHOM'; 'VROCP4OXY2'; 'VROCN1OXY6'; 'FURANONE'; ...
'VROCP3OXY2'; 'VROCP0OXY4'; 'BAL2'; 'VELHOM'; 'VROCIOXY'; ...
'SLOWROC'; 'ACRO'; 'BDE13'; 'BDE13P'; 'FURAN'; ...
'FURANO2'; 'PROG'; 'SESQ'; 'SESQNRO2'; 'VROCN2OXY2'; ...
'SESQRO2'; 'VROCP0OXY2'; 'VROCP1OXY3'; 'AGLYOLIGJ'; 'IEPOXP'; ...
'AISO3NOSJ'; 'ASO4J'; 'AISO3OSJ'; 'AISO4J'; 'AISO5J'; ...
'VROCP6ALK'; 'VROCP6ALKP'; 'VROCP5ALK'; 'VROCP5ALKP'; 'VROCP4ALK'; ...
'VROCP4ALKP'; 'VROCP3ALK'; 'VROCP3ALKP'; 'VROCP2ALK'; 'VROCP2ALKP'; ...
'VROCP1ALK'; 'VROCP1ALKP'; 'HC10'; 'VROCP6ALKP2'; 'VROCP5ALKP2'; ...
'VROCP4ALKP2'; 'VROCP2OXY2'; 'VROCP3ALKP2'; 'VROCP1OXY1'; 'VROCP2ALKP2'; ...
'VROCP1ALKP2'; 'VROCN1OXY1'; 'HC10P2'; 'VROCP6ARO'; 'VROCP6AROP'; ...
'VROCN2OXY4'; 'VROCN1OXY3'; 'VROCP5ARO'; 'VROCP5AROP'; 'NAPH'; ...
'NAPHP'; 'VROCN2OXY8'; 'VROCP5OXY1'; 'VROCP6OXY1'; 'ECH4'; ...
'ATRPNJ'; 'AHOMJ'; 'AHONITJ'; 'STY'; 'STYP'; ...
'ANO3I'; 'ANO3J'; 'AMTN1J'; 'CL2'; 'CL'; ...
'CLO'; 'OCLO'; 'CL2O2'; 'CLOO'; 'HOCL'; ...
'CLNO'; 'CLNO2'; 'CLNO3'; 'HCOCL'; 'HCL'; ...
'BR2'; 'BR'; 'BRO'; 'OBRO'; 'HOBR'; ...
'BRNO'; 'BRNO2'; 'BRNO3'; 'CH2BR2'; 'CHBR3'; ...
'HCOBR'; 'HBR'; 'I2'; 'I'; 'IO'; ...
'OIO'; 'I2O2'; 'HOI'; 'HI'; 'INO'; ...
'INO2'; 'INO3'; 'CH3I'; 'CH2I2'; 'I2O3'; ...
'I2O4'; 'BRCL'; 'ICL'; 'IBR'; 'CH2IBR'; ...
'CH2ICL'; 'CHBR2CL'; 'CHBRCL2'; 'CH2BRCL'; 'NO2PIJ'; ...
'NO2PK'; 'ACLI'; 'ACLJ'; 'ACLK'; 'ABRJ'; ...
'AFEJ'; 'AMNJ'; 'AHMSJ'; 'CH4'; };


AddSpecies


%   1, <R001>
i=i+1;
Rnames{   1} = 'O3 = O3P ';
k(:,i) = (JO3O3P_NASA06 ); 
Gstr{i,   1}='O3';
fO3(i)=fO3(i)-1.0;
fO3P(i)=fO3P(i)+  1.0000;

%   2, <R002>
i=i+1;
Rnames{   2} = 'O3 = O1D ';
k(:,i) = (JO3O1D_NASA06 ); 
Gstr{i,   1}='O3';
fO3(i)=fO3(i)-1.0;
fO1D(i)=fO1D(i)+  1.0000;

%   3, <R003>
i=i+1;
Rnames{   3} = 'H2O2 = 2.00000*HO ';
k(:,i) = (JH2O2_RACM2 ); 
Gstr{i,   1}='H2O2';
fH2O2(i)=fH2O2(i)-1.0;
fHO(i)=fHO(i)+  2.0000;

%   4, <R004>
i=i+1;
Rnames{   4} = 'NO2 = O3P + NO ';
k(:,i) = (JNO2_RACM2 ); 
Gstr{i,   1}='NO2';
fNO2(i)=fNO2(i)-1.0;
fO3P(i)=fO3P(i)+  1.0000;fNO(i)=fNO(i)+  1.0000;

%   5, <R005>
i=i+1;
Rnames{   5} = 'NO3 = NO ';
k(:,i) = (JNO3NO_RACM2 ); 
Gstr{i,   1}='NO3';
fNO3(i)=fNO3(i)-1.0;
fNO(i)=fNO(i)+  1.0000;

%   6, <R006>
i=i+1;
Rnames{   6} = 'NO3 = O3P + NO2 ';
k(:,i) = (JNO3NO2_RACM2 ); 
Gstr{i,   1}='NO3';
fNO3(i)=fNO3(i)-1.0;
fO3P(i)=fO3P(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%   7, <R007>
i=i+1;
Rnames{   7} = 'HONO = HO + NO ';
k(:,i) = (JHONO_RACM2 ); 
Gstr{i,   1}='HONO';
fHONO(i)=fHONO(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fNO(i)=fNO(i)+  1.0000;

%   8, <R008>
i=i+1;
Rnames{   8} = 'HNO3 = HO + NO2 ';
k(:,i) = (JHNO3_RACM2 ); 
Gstr{i,   1}='HNO3';
fHNO3(i)=fHNO3(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%   9, <R009>
i=i+1;
Rnames{   9} = 'HNO4 = 0.20000*HO +  0.80000*HO2 +  0.80000*NO2 +  0.20000*NO3 ';
k(:,i) = (JHNO4_RACM2 ); 
Gstr{i,   1}='HNO4';
fHNO4(i)=fHNO4(i)-1.0;
fHO(i)=fHO(i)+  0.2000;fHO2(i)=fHO2(i)+  0.8000;fNO2(i)=fNO2(i)+  0.8000;fNO3(i)=fNO3(i)+  0.2000;

%  10, <R010>
i=i+1;
Rnames{  10} = 'HCHO = CO ';
k(:,i) = (JHCHO_MOL_JPL19 ); 
Gstr{i,   1}='HCHO';
fHCHO(i)=fHCHO(i)-1.0;
fCO(i)=fCO(i)+  1.0000;

%  11, <R011>
i=i+1;
Rnames{  11} = 'HCHO = 2.00000*HO2 + CO ';
k(:,i) = (JHCHO_RAD_JPL19 ); 
Gstr{i,   1}='HCHO';
fHCHO(i)=fHCHO(i)-1.0;
fHO2(i)=fHO2(i)+  2.0000;fCO(i)=fCO(i)+  1.0000;

%  12, <R012>
i=i+1;
Rnames{  12} = 'ACD = HO2 + MO2 + CO ';
k(:,i) = (JCH3CHO_RACM2 ); 
Gstr{i,   1}='ACD';
fACD(i)=fACD(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

%  13, <R013>
i=i+1;
Rnames{  13} = 'ALD = HO2 + ETHP + CO ';
k(:,i) = (JALD_JPL19 ); 
Gstr{i,   1}='ALD';
fALD(i)=fALD(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fETHP(i)=fETHP(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

%  14, <R014>
i=i+1;
Rnames{  14} = 'ACT = MO2 + ACO3 ';
k(:,i) = (JCH3COCH3A_JPL19 ); 
Gstr{i,   1}='ACT';
fACT(i)=fACT(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fACO3(i)=fACO3(i)+  1.0000;

%  15, <R014a>
i=i+1;
Rnames{  15} = 'ACT = 2.00000*MO2 + CO ';
k(:,i) = (JCH3COCH3B_JPL19 ); 
Gstr{i,   1}='ACT';
fACT(i)=fACT(i)-1.0;
fMO2(i)=fMO2(i)+  2.0000;fCO(i)=fCO(i)+  1.0000;

%  16, <R015>
i=i+1;
Rnames{  16} = 'UALD = 1.22000*HO2 +  0.78400*ACO3 +  1.22000*CO +  0.35000*HCHO +  0.43400*ALD +  0.21600*KET ';
k(:,i) = (JUALD_RACM2 ); 
Gstr{i,   1}='UALD';
fUALD(i)=fUALD(i)-1.0;
fHO2(i)=fHO2(i)+  1.2200;fACO3(i)=fACO3(i)+  0.7840;fCO(i)=fCO(i)+  1.2200;fHCHO(i)=fHCHO(i)+  0.3500;fALD(i)=fALD(i)+  0.4340;fKET(i)=fKET(i)+  0.2160;

%  17, <TRP01>
i=i+1;
Rnames{  17} = 'PINAL = HO2 + PINALP + CO ';
k(:,i) = (JALD_JPL19 ); 
Gstr{i,   1}='PINAL';
fPINAL(i)=fPINAL(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fPINALP(i)=fPINALP(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

%  18, <TRP02>
i=i+1;
Rnames{  18} = 'LIMAL = HO2 + LIMALP + CO ';
k(:,i) = (JALD_JPL19 ); 
Gstr{i,   1}='LIMAL';
fLIMAL(i)=fLIMAL(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fLIMALP(i)=fLIMALP(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

%  19, <R016>
i=i+1;
Rnames{  19} = 'MEK = 0.10000*MO2 + ETHP +  0.90000*ACO3 +  0.10000*CO ';
k(:,i) = (JMEK_JGR19 ); 
Gstr{i,   1}='MEK';
fMEK(i)=fMEK(i)-1.0;
fMO2(i)=fMO2(i)+  0.1000;fETHP(i)=fETHP(i)+  1.0000;fACO3(i)=fACO3(i)+  0.9000;fCO(i)=fCO(i)+  0.1000;

%  20, <R017>
i=i+1;
Rnames{  20} = 'KET = 1.50000*ETHP +  0.50000*ACO3 +  0.50000*CO ';
k(:,i) = (JKET_JGR19 ); 
Gstr{i,   1}='KET';
fKET(i)=fKET(i)-1.0;
fETHP(i)=fETHP(i)+  1.5000;fACO3(i)=fACO3(i)+  0.5000;fCO(i)=fCO(i)+  0.5000;

%  21, <R018>
i=i+1;
Rnames{  21} = 'HKET = HO2 + ACO3 + HCHO ';
k(:,i) = (JHKET_RACM2 ); 
Gstr{i,   1}='HKET';
fHKET(i)=fHKET(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fACO3(i)=fACO3(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

%  22, <R019>
i=i+1;
Rnames{  22} = 'MACR = 0.34000*HO +  0.66000*HO2 +  0.67000*ACO3 +  0.33000*MACP +  0.34000*XO2 +  0.67000*CO +  0.67000*HCHO ';
k(:,i) = (JMACR_RACM2 ); 
Gstr{i,   1}='MACR';
fMACR(i)=fMACR(i)-1.0;
fHO(i)=fHO(i)+  0.3400;fHO2(i)=fHO2(i)+  0.6600;fACO3(i)=fACO3(i)+  0.6700;fMACP(i)=fMACP(i)+  0.3300;fXO2(i)=fXO2(i)+  0.3400;fCO(i)=fCO(i)+  0.6700;fHCHO(i)=fHCHO(i)+  0.6700;

%  23, <R020>
i=i+1;
Rnames{  23} = 'MVK = 0.30000*MO2 +  0.30000*MACP +  0.70000*CO +  0.70000*UALD ';
k(:,i) = (JMVK_JPL19 ); 
Gstr{i,   1}='MVK';
fMVK(i)=fMVK(i)-1.0;
fMO2(i)=fMO2(i)+  0.3000;fMACP(i)=fMACP(i)+  0.3000;fCO(i)=fCO(i)+  0.7000;fUALD(i)=fUALD(i)+  0.7000;

%  24, <R021>
i=i+1;
Rnames{  24} = 'GLY = 2.00000*CO ';
k(:,i) = (JGLYH2_JPL19 ); 
Gstr{i,   1}='GLY';
fGLY(i)=fGLY(i)-1.0;
fCO(i)=fCO(i)+  2.0000;

%  25, <R022>
i=i+1;
Rnames{  25} = 'GLY = HCHO + CO ';
k(:,i) = (JGLYF_JPL19 ); 
Gstr{i,   1}='GLY';
fGLY(i)=fGLY(i)-1.0;
fHCHO(i)=fHCHO(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

%  26, <R023>
i=i+1;
Rnames{  26} = 'GLY = 2.00000*HO2 +  2.00000*CO ';
k(:,i) = (JGLYHX_JPL19 ); 
Gstr{i,   1}='GLY';
fGLY(i)=fGLY(i)-1.0;
fHO2(i)=fHO2(i)+  2.0000;fCO(i)=fCO(i)+  2.0000;

%  27, <R024>
i=i+1;
Rnames{  27} = 'MGLY = HO2 + ACO3 + CO ';
k(:,i) = (JMGLY_RACM2 ); 
Gstr{i,   1}='MGLY';
fMGLY(i)=fMGLY(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fACO3(i)=fACO3(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

%  28, <R025>
i=i+1;
Rnames{  28} = 'DCB1 = 1.50000*HO2 +  0.25000*ACO3 +  0.20000*XO2 + CO +  0.50000*GLY +  0.50000*MGLY ';
k(:,i) = (JMGLY_RACM2 ); 
Gstr{i,   1}='DCB1';
fDCB1(i)=fDCB1(i)-1.0;
fHO2(i)=fHO2(i)+  1.5000;fACO3(i)=fACO3(i)+  0.2500;fXO2(i)=fXO2(i)+  0.2000;fCO(i)=fCO(i)+  1.0000;fGLY(i)=fGLY(i)+  0.5000;fMGLY(i)=fMGLY(i)+  0.5000;

%  29, <R026>
i=i+1;
Rnames{  29} = 'DCB2 = 1.50000*HO2 +  0.25000*ACO3 +  0.20000*XO2 + CO +  0.50000*GLY +  0.50000*MGLY ';
k(:,i) = (JMGLY_RACM2 ); 
Gstr{i,   1}='DCB2';
fDCB2(i)=fDCB2(i)-1.0;
fHO2(i)=fHO2(i)+  1.5000;fACO3(i)=fACO3(i)+  0.2500;fXO2(i)=fXO2(i)+  0.2000;fCO(i)=fCO(i)+  1.0000;fGLY(i)=fGLY(i)+  0.5000;fMGLY(i)=fMGLY(i)+  0.5000;

%  30, <R027a>
i=i+1;
Rnames{  30} = 'BALD = BEN + CO ';
k(:,i) = (JBALD1_CALVERT11 ); 
Gstr{i,   1}='BALD';
fBALD(i)=fBALD(i)-1.0;
fBEN(i)=fBEN(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

%  31, <R027b>
i=i+1;
Rnames{  31} = 'BALD = BAL1 + CO + HO2 ';
k(:,i) = (JBALD2_CALVERT11 ); 
Gstr{i,   1}='BALD';
fBALD(i)=fBALD(i)-1.0;
fBAL1(i)=fBAL1(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

%  32, <R028>
i=i+1;
Rnames{  32} = 'OP1 = HO + HO2 + HCHO ';
k(:,i) = (JOP1_RACM2 ); 
Gstr{i,   1}='OP1';
fOP1(i)=fOP1(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

%  33, <R029>
i=i+1;
Rnames{  33} = 'OP2 = HO + HO2 + ALD ';
k(:,i) = (JOP1_RACM2 ); 
Gstr{i,   1}='OP2';
fOP2(i)=fOP2(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fALD(i)=fALD(i)+  1.0000;

%  34, <TRP03>
i=i+1;
Rnames{  34} = 'OPB = HO + HO2 + ALD ';
k(:,i) = (JOP1_RACM2 ); 
Gstr{i,   1}='OPB';
fOPB(i)=fOPB(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fALD(i)=fALD(i)+  1.0000;

%  35, <R029a>
i=i+1;
Rnames{  35} = 'VOP3 = HO + HO2 + ALD ';
k(:,i) = (JOP1_RACM2 ); 
Gstr{i,   1}='VOP3';
fVOP3(i)=fVOP3(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fALD(i)=fALD(i)+  1.0000;

%  36, <R030>
i=i+1;
Rnames{  36} = 'PAA = HO + MO2 ';
k(:,i) = (JPAA_RACM2 ); 
Gstr{i,   1}='PAA';
fPAA(i)=fPAA(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;

%  37, <R031>
i=i+1;
Rnames{  37} = 'ONIT = HO2 + NO2 +  0.20000*ALD +  0.80000*KET ';
k(:,i) = (JONIT_CALVERT08 ); 
Gstr{i,   1}='ONIT';
fONIT(i)=fONIT(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fALD(i)=fALD(i)+  0.2000;fKET(i)=fKET(i)+  0.8000;

%  38, <R032>
i=i+1;
Rnames{  38} = 'PAN = ACO3 + NO2 ';
k(:,i) = (JPAN1_JPL19 ); 
Gstr{i,   1}='PAN';
fPAN(i)=fPAN(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%  39, <R033>
i=i+1;
Rnames{  39} = 'PAN = MO2 + NO3 + CO2 ';
k(:,i) = (JPAN2_JPL19 ); 
Gstr{i,   1}='PAN';
fPAN(i)=fPAN(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

%  40, <R033a>
i=i+1;
Rnames{  40} = 'PPN = RCO3 + NO2 ';
k(:,i) = (JPPN1_JPL19 ); 
Gstr{i,   1}='PPN';
fPPN(i)=fPPN(i)-1.0;
fRCO3(i)=fRCO3(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%  41, <R033b>
i=i+1;
Rnames{  41} = 'PPN = HC3P + NO3 ';
k(:,i) = (JPPN2_JPL19 ); 
Gstr{i,   1}='PPN';
fPPN(i)=fPPN(i)-1.0;
fHC3P(i)=fHC3P(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

%  42, <TRP55>
i=i+1;
Rnames{  42} = 'VTRPN = NO2 +  0.67000*KET +  0.33000*UALD ';
k(:,i) = (JTRPN_WANG2023 ); 
Gstr{i,   1}='VTRPN';
fVTRPN(i)=fVTRPN(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fKET(i)=fKET(i)+  0.6700;fUALD(i)=fUALD(i)+  0.3300;

%  43, <TRP56>
i=i+1;
Rnames{  43} = 'VHONIT = HKET + NO2 ';
k(:,i) = (JTRPN_WANG2023 ); 
Gstr{i,   1}='VHONIT';
fVHONIT(i)=fVHONIT(i)-1.0;
fHKET(i)=fHKET(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%  44, <R034>
i=i+1;
Rnames{  44} = 'O3 + HO = HO2 ';
k(:,i) = (  1.7000E-12.*exp( -9.4000E+02./T) ); 
Gstr{i,   1}='O3';Gstr{i,   2}='HO';
fO3(i)=fO3(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;

%  45, <R035>
i=i+1;
Rnames{  45} = 'O3 + HO2 = HO ';
k(:,i) = (  1.0000E-14.*exp( -4.9000E+02./T) ); 
Gstr{i,   1}='O3';Gstr{i,   2}='HO2';
fO3(i)=fO3(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHO(i)=fHO(i)+  1.0000;

%  46, <R036>
i=i+1;
Rnames{  46} = 'O3 + NO = NO2 ';
k(:,i) = (  3.0000E-12.*exp( -1.5000E+03./T) ); 
Gstr{i,   1}='O3';Gstr{i,   2}='NO';
fO3(i)=fO3(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;

%  47, <R037>
i=i+1;
Rnames{  47} = 'O3 + NO2 = NO3 ';
k(:,i) = (  1.2000E-13.*exp( -2.4500E+03./T) ); 
Gstr{i,   1}='O3';Gstr{i,   2}='NO2';
fO3(i)=fO3(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fNO3(i)=fNO3(i)+  1.0000;

%  48, <R038>
i=i+1;
Rnames{  48} = 'O3P + O2 + M = O3 ';
k(:,i) = (  6.1000E-34.*(T./300).^( -2.4000E+00) ).*O2.*M; 
Gstr{i,   1}='O3P';
fO3P(i)=fO3P(i)-1.0;
fO3(i)=fO3(i)+  1.0000;

%  49, <R039>
i=i+1;
Rnames{  49} = 'O3P + O3 =';
k(:,i) = (  8.0000E-12.*exp( -2.0600E+03./T) ); 
Gstr{i,   1}='O3P';Gstr{i,   2}='O3';
fO3P(i)=fO3P(i)-1.0;fO3(i)=fO3(i)-1.0;


%  50, <R040>
i=i+1;
Rnames{  50} = 'O1D + O2 = O3P ';
k(:,i) = (  3.3000E-11.*exp(  5.5000E+01./T) ).*O2; 
Gstr{i,   1}='O1D';
fO1D(i)=fO1D(i)-1.0;
fO3P(i)=fO3P(i)+  1.0000;

%  51, <R041>
i=i+1;
Rnames{  51} = 'O1D + N2 = O3P ';
k(:,i) = (  2.1500E-11.*exp(  1.1000E+02./T) ).*N2; 
Gstr{i,   1}='O1D';
fO1D(i)=fO1D(i)-1.0;
fO3P(i)=fO3P(i)+  1.0000;

%  52, <R042>
i=i+1;
Rnames{  52} = 'O1D + H2O = 2.00000*HO ';
k(:,i) = (  1.6300E-10.*exp(  6.0000E+01./T) ).*H2O; 
Gstr{i,   1}='O1D';
fO1D(i)=fO1D(i)-1.0;
fHO(i)=fHO(i)+  2.0000;

%  53, <R043>
i=i+1;
Rnames{  53} = 'HO + H2 = HO2 ';
k(:,i) = (  2.8000E-12.*exp( -1.8000E+03./T) ).*H2; 
Gstr{i,   1}='HO';
fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;

%  54, <R044>
i=i+1;
Rnames{  54} = 'HO + HO2 =';
k(:,i) = (  4.8000E-11.*exp(  2.5000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HO2';
fHO(i)=fHO(i)-1.0;fHO2(i)=fHO2(i)-1.0;


%  55, <R045>
i=i+1;
Rnames{  55} = 'HO2 + HO2 = H2O2 ';
xk0 =   3.0000E-13.*exp(  4.6000E+02./T);
xk1 =   2.1000E-33.*exp(  9.2000E+02./T);
k(:,i) = (xk0+xk1.*M ); 
Gstr{i,   1}='HO2';Gstr{i,   2}='HO2';
fHO2(i)=fHO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fH2O2(i)=fH2O2(i)+  1.0000;

%  56, <R046>
i=i+1;
Rnames{  56} = 'HO2 + HO2 + H2O = H2O2 ';
xk0 =   4.2000E-34.*exp(  2.6600E+03./T);
xk1 =   2.9400E-54.*exp(  3.1200E+03./T);
k(:,i) = (xk0+xk1.*M ).*H2O; 
Gstr{i,   1}='HO2';Gstr{i,   2}='HO2';
fHO2(i)=fHO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fH2O2(i)=fH2O2(i)+  1.0000;

%  57, <R047>
i=i+1;
Rnames{  57} = 'H2O2 + HO = HO2 ';
k(:,i) = (  1.8000E-12.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='H2O2';Gstr{i,   2}='HO';
fH2O2(i)=fH2O2(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;

%  58, <R048>
i=i+1;
Rnames{  58} = 'NO + O3P = NO2 ';
xko =   9.1000E-32.*M.*exp(  0.0000E+00./T).*(T./300).^ -1.5000E+00;
xkinf =   3.0000E-11.*exp(  0.0000E+00./T).*(T./300).^  0.0000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='NO';Gstr{i,   2}='O3P';
fNO(i)=fNO(i)-1.0;fO3P(i)=fO3P(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;

%  59, <R049>
i=i+1;
Rnames{  59} = 'NO + HO = HONO ';
xko =   7.1000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -2.6000E+00;
xkinf =   3.6000E-11.*exp(  0.0000E+00./T).*(T./300).^ -1.0000E-01;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='NO';Gstr{i,   2}='HO';
fNO(i)=fNO(i)-1.0;fHO(i)=fHO(i)-1.0;
fHONO(i)=fHONO(i)+  1.0000;

%  60, <R050>
i=i+1;
Rnames{  60} = 'NO + HO2 = NO2 + HO ';
k(:,i) = (  3.4400E-12.*exp(  2.6000E+02./T) ); 
Gstr{i,   1}='NO';Gstr{i,   2}='HO2';
fNO(i)=fNO(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO(i)=fHO(i)+  1.0000;

%  61, <R051>
i=i+1;
Rnames{  61} = 'NO + HO2 = HNO3 ';
xk0 =   6.0950E-14.*exp(  2.7000E+02./T).*(T./300).^ -1.0000E+00;
xk1 =   6.8570E-34.*exp(  2.7000E+02./T).*(T./300).^  1.0000E+00;
xk2 =  -5.9680E-14.*exp(  2.7000E+02./T);
k(:,i) = (xk0+xk1.*M+xk2 ); 
Gstr{i,   1}='NO';Gstr{i,   2}='HO2';
fNO(i)=fNO(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;

%  62, <R052>
i=i+1;
Rnames{  62} = 'NO + NO + O2 = 2.00000*NO2 ';
k(:,i) = (  4.2500E-39.*exp(  6.6350E+02./T) ).*O2; 
Gstr{i,   1}='NO';Gstr{i,   2}='NO';
fNO(i)=fNO(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  2.0000;

%  63, <R053>
i=i+1;
Rnames{  63} = 'HONO + HO = NO2 ';
k(:,i) = (  3.0000E-12.*exp(  2.5000E+02./T) ); 
Gstr{i,   1}='HONO';Gstr{i,   2}='HO';
fHONO(i)=fHONO(i)-1.0;fHO(i)=fHO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;

%  64, <R054>
i=i+1;
Rnames{  64} = 'NO2 + O3P = NO ';
k(:,i) = (  5.3000E-12.*exp(  2.0000E+02./T) ); 
Gstr{i,   1}='NO2';Gstr{i,   2}='O3P';
fNO2(i)=fNO2(i)-1.0;fO3P(i)=fO3P(i)-1.0;
fNO(i)=fNO(i)+  1.0000;

%  65, <R055>
i=i+1;
Rnames{  65} = 'NO2 + O3P = NO3 ';
xko =   3.4000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -1.6000E+00;
xkinf =   2.3000E-11.*exp(  0.0000E+00./T).*(T./300).^ -2.0000E-01;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='NO2';Gstr{i,   2}='O3P';
fNO2(i)=fNO2(i)-1.0;fO3P(i)=fO3P(i)-1.0;
fNO3(i)=fNO3(i)+  1.0000;

%  66, <R056>
i=i+1;
Rnames{  66} = 'NO2 + HO = HNO3 ';
xko =   1.8000E-30.*M.*exp(  0.0000E+00./T).*(T./300).^ -3.0000E+00;
xkinf =   2.8000E-11.*exp(  0.0000E+00./T).*(T./300).^  0.0000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='NO2';Gstr{i,   2}='HO';
fNO2(i)=fNO2(i)-1.0;fHO(i)=fHO(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;

%  67, <R057>
i=i+1;
Rnames{  67} = 'HNO3 + HO = NO3 ';
 xk0 =   2.4000E-14.*exp(  4.6000E+02./T);
 xk2 =   2.7000E-17.*exp(  2.1990E+03./T);
 xk3 =   6.5000E-34.*exp(  1.3350E+03./T);
k(:,i) = (xk0+xk3.*M./(1.0+xk3.*M./xk2) ); 
Gstr{i,   1}='HNO3';Gstr{i,   2}='HO';
fHNO3(i)=fHNO3(i)-1.0;fHO(i)=fHO(i)-1.0;
fNO3(i)=fNO3(i)+  1.0000;

%  68, <R058>
i=i+1;
Rnames{  68} = 'NO3 + HO = HO2 + NO2 ';
k(:,i) = (  2.0000E-11 ); 
Gstr{i,   1}='NO3';Gstr{i,   2}='HO';
fNO3(i)=fNO3(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%  69, <R059>
i=i+1;
Rnames{  69} = 'NO3 + HO2 = 0.70000*HO +  0.70000*NO2 +  0.30000*HNO3 ';
k(:,i) = (  3.5000E-12 ); 
Gstr{i,   1}='NO3';Gstr{i,   2}='HO2';
fNO3(i)=fNO3(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHO(i)=fHO(i)+  0.7000;fNO2(i)=fNO2(i)+  0.7000;fHNO3(i)=fHNO3(i)+  0.3000;

%  70, <R060>
i=i+1;
Rnames{  70} = 'NO3 + NO = 2.00000*NO2 ';
k(:,i) = (  1.7000E-11.*exp(  1.2500E+02./T) ); 
Gstr{i,   1}='NO3';Gstr{i,   2}='NO';
fNO3(i)=fNO3(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  2.0000;

%  71, <R061>
i=i+1;
Rnames{  71} = 'NO3 + NO2 = NO + NO2 ';
k(:,i) = (  4.3500E-14.*exp( -1.3350E+03./T) ); 
Gstr{i,   1}='NO3';Gstr{i,   2}='NO2';
fNO3(i)=fNO3(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fNO(i)=fNO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%  72, <R062>
i=i+1;
Rnames{  72} = 'NO3 + NO3 = 2.00000*NO2 ';
k(:,i) = (  8.5000E-13.*exp( -2.4500E+03./T) ); 
Gstr{i,   1}='NO3';Gstr{i,   2}='NO3';
fNO3(i)=fNO3(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  2.0000;

%  73, <R063>
i=i+1;
Rnames{  73} = 'NO3 + NO2 = N2O5 ';
xko =   2.4000E-30.*M.*exp(  0.0000E+00./T).*(T./300).^ -3.0000E+00;
xkinf =   1.6000E-12.*exp(  0.0000E+00./T).*(T./300).^  1.0000E-01;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='NO3';Gstr{i,   2}='NO2';
fNO3(i)=fNO3(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fN2O5(i)=fN2O5(i)+  1.0000;

%  74, <R064>
i=i+1;
Rnames{  74} = 'N2O5 = NO2 + NO3 ';
k(:,i) = (  1.7241E+26.*exp( -1.0840E+04./T).*k(:,  73) ); 
Gstr{i,   1}='N2O5';
fN2O5(i)=fN2O5(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

%  75, <R065>
i=i+1;
Rnames{  75} = 'N2O5 + H2O = 2.00000*HNO3 ';
k(:,i) = (  1.0000E-22 ).*H2O; 
Gstr{i,   1}='N2O5';
fN2O5(i)=fN2O5(i)-1.0;
fHNO3(i)=fHNO3(i)+  2.0000;

%  76, <R066>
i=i+1;
Rnames{  76} = 'NO2 + HO2 = HNO4 ';
xko =   1.9000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -3.4000E+00;
xkinf =   4.0000E-12.*exp(  0.0000E+00./T).*(T./300).^ -3.0000E-01;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='NO2';Gstr{i,   2}='HO2';
fNO2(i)=fNO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHNO4(i)=fHNO4(i)+  1.0000;

%  77, <R067>
i=i+1;
Rnames{  77} = 'HNO4 = HO2 + NO2 ';
k(:,i) = (  4.7619E+26.*exp( -1.0900E+04./T).*k(:,  76) ); 
Gstr{i,   1}='HNO4';
fHNO4(i)=fHNO4(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

%  78, <R068>
i=i+1;
Rnames{  78} = 'HNO4 + HO = NO2 ';
k(:,i) = (  4.5000E-13.*exp(  6.1000E+02./T) ); 
Gstr{i,   1}='HNO4';Gstr{i,   2}='HO';
fHNO4(i)=fHNO4(i)-1.0;fHO(i)=fHO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;

%  79, <R069>
i=i+1;
Rnames{  79} = 'SO2 + HO = HO2 + SULF + SULRXN ';
xko =   2.9000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -4.1000E+00;
xkinf =   1.7000E-12.*exp(  0.0000E+00./T).*(T./300).^  2.0000E-01;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='HO';
fSO2(i)=fSO2(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fSULF(i)=fSULF(i)+  1.0000;fSULRXN(i)=fSULRXN(i)+  1.0000;

%  80, <R070>
i=i+1;
Rnames{  80} = 'CO + HO = HO2 + CO2 ';
xk0 =   1.4400E-13.*exp(  0.0000E+00./T);
xk1 =   2.7400E-33.*exp(  0.0000E+00./T);
k(:,i) = (xk0+xk1.*M ); 
Gstr{i,   1}='CO';Gstr{i,   2}='HO';
fCO(i)=fCO(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

%  81, <R071>
i=i+1;
Rnames{  81} = 'HO + CH4 = MO2 ';
k(:,i) = (  2.4500E-12.*exp( -1.7750E+03./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CH4';
fHO(i)=fHO(i)-1.0;fCH4(i)=fCH4(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;

%  82, <R072>
i=i+1;
Rnames{  82} = 'ETH + HO = ETHP ';
k(:,i) = (  7.6600E-12.*exp( -1.0200E+03./T) ); 
Gstr{i,   1}='ETH';Gstr{i,   2}='HO';
fETH(i)=fETH(i)-1.0;fHO(i)=fHO(i)-1.0;
fETHP(i)=fETHP(i)+  1.0000;

%  83, <R073>
i=i+1;
Rnames{  83} = 'HC3 + HO = HC3P +  0.00003*ASOATJ ';
k(:,i) = (  7.6800E-12.*exp( -3.7000E+02./T) ); 
Gstr{i,   1}='HC3';Gstr{i,   2}='HO';
fHC3(i)=fHC3(i)-1.0;fHO(i)=fHO(i)-1.0;
fHC3P(i)=fHC3P(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.0000;

%  84, <R074>
i=i+1;
Rnames{  84} = 'HC5 + HO = HC5P +  0.00134*ASOATJ ';
k(:,i) = (  1.0100E-11.*exp( -2.4500E+02./T) ); 
Gstr{i,   1}='HC5';Gstr{i,   2}='HO';
fHC5(i)=fHC5(i)-1.0;fHO(i)=fHO(i)-1.0;
fHC5P(i)=fHC5P(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.0013;

%  85, <R076>
i=i+1;
Rnames{  85} = 'ETE + HO = ETEP ';
xko =   1.0000E-28.*M.*exp(  0.0000E+00./T).*(T./300).^ -4.5000E+00;
xkinf =   8.8000E-12.*exp(  0.0000E+00./T).*(T./300).^ -8.5000E-01;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='ETE';Gstr{i,   2}='HO';
fETE(i)=fETE(i)-1.0;fHO(i)=fHO(i)-1.0;
fETEP(i)=fETEP(i)+  1.0000;

%  86, <R077>
i=i+1;
Rnames{  86} = 'OLT + HO = OLTP ';
k(:,i) = (  5.7200E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='OLT';Gstr{i,   2}='HO';
fOLT(i)=fOLT(i)-1.0;fHO(i)=fHO(i)-1.0;
fOLTP(i)=fOLTP(i)+  1.0000;

%  87, <R078>
i=i+1;
Rnames{  87} = 'OLI + HO = OLIP ';
k(:,i) = (  1.3300E-11.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='OLI';Gstr{i,   2}='HO';
fOLI(i)=fOLI(i)-1.0;fHO(i)=fHO(i)-1.0;
fOLIP(i)=fOLIP(i)+  1.0000;

%  88, <R080>
i=i+1;
Rnames{  88} = 'ACE + HO = 0.65000*HO +  0.35000*HO2 +  0.35000*CO +  0.65000*GLY +  0.35000*ORA1 ';
xko =   5.5000E-30.*M.*exp(  0.0000E+00./T).*(T./300).^  0.0000E+00;
xkinf =   8.3000E-13.*exp(  0.0000E+00./T).*(T./300).^  2.0000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='ACE';Gstr{i,   2}='HO';
fACE(i)=fACE(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO(i)=fHO(i)+  0.6500;fHO2(i)=fHO2(i)+  0.3500;fCO(i)=fCO(i)+  0.3500;fGLY(i)=fGLY(i)+  0.6500;fORA1(i)=fORA1(i)+  0.3500;

%  89, <ROCARO31>
i=i+1;
Rnames{  89} = 'BEN + HO = 0.47000*BENP +  0.53000*PHEN +  0.53000*HO2 ';
k(:,i) = (  2.3300E-12.*exp( -1.9300E+02./T) ); 
Gstr{i,   1}='BEN';Gstr{i,   2}='HO';
fBEN(i)=fBEN(i)-1.0;fHO(i)=fHO(i)-1.0;
fBENP(i)=fBENP(i)+  0.4700;fPHEN(i)=fPHEN(i)+  0.5300;fHO2(i)=fHO2(i)+  0.5300;

%  90, <ROCARO41>
i=i+1;
Rnames{  90} = 'TOL + HO = 0.82000*TOLP +  0.18000*CSL +  0.18000*HO2 ';
k(:,i) = (  1.8100E-12.*exp(  3.5400E+02./T) ); 
Gstr{i,   1}='TOL';Gstr{i,   2}='HO';
fTOL(i)=fTOL(i)-1.0;fHO(i)=fHO(i)-1.0;
fTOLP(i)=fTOLP(i)+  0.8200;fCSL(i)=fCSL(i)+  0.1800;fHO2(i)=fHO2(i)+  0.1800;

%  91, <ROCARO51>
i=i+1;
Rnames{  91} = 'XYL + HO = 0.83000*XYLP +  0.17000*CSL +  0.17000*HO2 ';
k(:,i) = (  2.3300E-11 ); 
Gstr{i,   1}='XYL';Gstr{i,   2}='HO';
fXYL(i)=fXYL(i)-1.0;fHO(i)=fHO(i)-1.0;
fXYLP(i)=fXYLP(i)+  0.8300;fCSL(i)=fCSL(i)+  0.1700;fHO2(i)=fHO2(i)+  0.1700;

%  92, <ROCARO61>
i=i+1;
Rnames{  92} = 'EBZ + HO = 0.82000*EBZP +  0.18000*CSL +  0.18000*HO2 ';
k(:,i) = (  7.0000E-12 ); 
Gstr{i,   1}='EBZ';Gstr{i,   2}='HO';
fEBZ(i)=fEBZ(i)-1.0;fHO(i)=fHO(i)-1.0;
fEBZP(i)=fEBZP(i)+  0.8200;fCSL(i)=fCSL(i)+  0.1800;fHO2(i)=fHO2(i)+  0.1800;

%  93, <ROCARO61a>
i=i+1;
Rnames{  93} = 'EBZ + NO3 = EBZP + HNO3 ';
k(:,i) = (  5.7000E-16 ); 
Gstr{i,   1}='EBZ';Gstr{i,   2}='NO3';
fEBZ(i)=fEBZ(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fEBZP(i)=fEBZP(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

%  94, <RAM01>
i=i+1;
Rnames{  94} = 'ISO + O3 = 0.25000*HO +  0.25000*HO2 +  0.40000*MO2 +  0.01800*ACO3 +  0.10000*MACP +  0.09000*H2O2 +  0.22000*CO + HCHO +  0.30000*MACR +  0.14000*MVK +  0.28000*ORA1 +  0.15300*OLT ';
k(:,i) = (  1.5800E-14.*exp( -2.0000E+03./T) ); 
Gstr{i,   1}='ISO';Gstr{i,   2}='O3';
fISO(i)=fISO(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.2500;fHO2(i)=fHO2(i)+  0.2500;fMO2(i)=fMO2(i)+  0.4000;fACO3(i)=fACO3(i)+  0.0180;fMACP(i)=fMACP(i)+  0.1000;fH2O2(i)=fH2O2(i)+  0.0900;fCO(i)=fCO(i)+  0.2200;fHCHO(i)=fHCHO(i)+  1.0000;fMACR(i)=fMACR(i)+  0.3000;fMVK(i)=fMVK(i)+  0.1400;fORA1(i)=fORA1(i)+  0.2800;fOLT(i)=fOLT(i)+  0.1530;

%  95, <RAM02>
i=i+1;
Rnames{  95} = 'ISO + NO3 = 0.40000*NO2 +  0.04500*ISON +  0.35000*HCHO +  0.55500*ISONP +  0.26000*MVK +  0.02800*MACR ';
k(:,i) = (  2.9500E-12.*exp( -4.5000E+02./T) ); 
Gstr{i,   1}='ISO';Gstr{i,   2}='NO3';
fISO(i)=fISO(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  0.4000;fISON(i)=fISON(i)+  0.0450;fHCHO(i)=fHCHO(i)+  0.3500;fISONP(i)=fISONP(i)+  0.5550;fMVK(i)=fMVK(i)+  0.2600;fMACR(i)=fMACR(i)+  0.0280;

%  96, <RAM03>
i=i+1;
Rnames{  96} = 'ISO + HO = ISOP +  0.25000*HCHO +  0.03000*MACR +  0.05000*MGLY ';
k(:,i) = (  2.6900E-11.*exp(  3.9000E+02./T) ); 
Gstr{i,   1}='ISO';Gstr{i,   2}='HO';
fISO(i)=fISO(i)-1.0;fHO(i)=fHO(i)-1.0;
fISOP(i)=fISOP(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.2500;fMACR(i)=fMACR(i)+  0.0300;fMGLY(i)=fMGLY(i)+  0.0500;

%  97, <RAM04>
i=i+1;
Rnames{  97} = 'ISOP + HO2 = ISHP +  0.07000*HO2 +  0.50000*HO ';
k(:,i) = (  4.5000E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='ISOP';Gstr{i,   2}='HO2';
fISOP(i)=fISOP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fISHP(i)=fISHP(i)+  1.0000;fHO2(i)=fHO2(i)+  0.0700;fHO(i)=fHO(i)+  0.5000;

%  98, <RAM05>
i=i+1;
Rnames{  98} = 'ISOP + NO = 0.13000*ISON +  0.40000*HCHO +  0.88000*HO2 +  0.87000*NO2 +  0.18000*MACR +  0.51000*MVK ';
k(:,i) = (  6.0000E-12.*exp(  3.5000E+02./T) ); 
Gstr{i,   1}='ISOP';Gstr{i,   2}='NO';
fISOP(i)=fISOP(i)-1.0;fNO(i)=fNO(i)-1.0;
fISON(i)=fISON(i)+  0.1300;fHCHO(i)=fHCHO(i)+  0.4000;fHO2(i)=fHO2(i)+  0.8800;fNO2(i)=fNO2(i)+  0.8700;fMACR(i)=fMACR(i)+  0.1800;fMVK(i)=fMVK(i)+  0.5100;

%  99, <RAM06>
i=i+1;
Rnames{  99} = 'ISHP + HO = ISOP ';
k(:,i) = (  4.6000E-12.*exp(  2.0000E+02./T) ); 
Gstr{i,   1}='ISHP';Gstr{i,   2}='HO';
fISHP(i)=fISHP(i)-1.0;fHO(i)=fHO(i)-1.0;
fISOP(i)=fISOP(i)+  1.0000;

% 100, <RAM07>
i=i+1;
Rnames{ 100} = 'ISHP + HO = 0.04000*MGLY +  0.02000*GLY +  0.13000*MVK +  0.44000*IEPOX +  0.11000*ACO3 +  0.03000*MACR +  2.00000*HO +  0.34000*HO2 +  0.14000*IPX + CO ';
k(:,i) = (  2.9700E-11.*exp(  3.9000E+02./T) ); 
Gstr{i,   1}='ISHP';Gstr{i,   2}='HO';
fISHP(i)=fISHP(i)-1.0;fHO(i)=fHO(i)-1.0;
fMGLY(i)=fMGLY(i)+  0.0400;fGLY(i)=fGLY(i)+  0.0200;fMVK(i)=fMVK(i)+  0.1300;fIEPOX(i)=fIEPOX(i)+  0.4400;fACO3(i)=fACO3(i)+  0.1100;fMACR(i)=fMACR(i)+  0.0300;fHO(i)=fHO(i)+  2.0000;fHO2(i)=fHO2(i)+  0.3400;fIPX(i)=fIPX(i)+  0.1400;fCO(i)=fCO(i)+  1.0000;

% 101, <RAM08>
i=i+1;
Rnames{ 101} = 'ISONP + HO2 = 0.45000*HO +  0.95000*INALD +  0.02000*IPX ';
k(:,i) = (  3.1400E-11.*exp(  5.8000E+02./T) ); 
Gstr{i,   1}='ISONP';Gstr{i,   2}='HO2';
fISONP(i)=fISONP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHO(i)=fHO(i)+  0.4500;fINALD(i)=fINALD(i)+  0.9500;fIPX(i)=fIPX(i)+  0.0200;

% 102, <RAM09>
i=i+1;
Rnames{ 102} = 'ISONP + NO = 0.15000*MVK +  0.65000*INALD +  0.05000*ISON +  0.20000*HCHO +  1.30000*NO2 ';
k(:,i) = (  9.4200E-12.*exp(  5.8000E+02./T) ); 
Gstr{i,   1}='ISONP';Gstr{i,   2}='NO';
fISONP(i)=fISONP(i)-1.0;fNO(i)=fNO(i)-1.0;
fMVK(i)=fMVK(i)+  0.1500;fINALD(i)=fINALD(i)+  0.6500;fISON(i)=fISON(i)+  0.0500;fHCHO(i)=fHCHO(i)+  0.2000;fNO2(i)=fNO2(i)+  1.3000;

% 103, <RAM10>
i=i+1;
Rnames{ 103} = 'ISON + HO = HO +  0.35000*INALD +  0.17000*IEPOX +  0.65000*NO2 ';
k(:,i) = (  2.4000E-11.*exp(  3.9000E+02./T) ); 
Gstr{i,   1}='ISON';Gstr{i,   2}='HO';
fISON(i)=fISON(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fINALD(i)=fINALD(i)+  0.3500;fIEPOX(i)=fIEPOX(i)+  0.1700;fNO2(i)=fNO2(i)+  0.6500;

% 104, <RAM11>
i=i+1;
Rnames{ 104} = 'HO + INALD = CO + NO2 +  0.30000*HO2 + HCHO ';
k(:,i) = (  1.5000E-11 ); 
Gstr{i,   1}='HO';Gstr{i,   2}='INALD';
fHO(i)=fHO(i)-1.0;fINALD(i)=fINALD(i)-1.0;
fCO(i)=fCO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.3000;fHCHO(i)=fHCHO(i)+  1.0000;

% 105, <RAM12>
i=i+1;
Rnames{ 105} = 'ISON = HNO3 + ROH ';
k(:,i) = (  4.0000E-05 ); 
Gstr{i,   1}='ISON';
fISON(i)=fISON(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;fROH(i)=fROH(i)+  1.0000;

% 106, <RAM13>
i=i+1;
Rnames{ 106} = 'IPX + HO = 0.57000*MACR +  0.43000*MVK ';
k(:,i) = (  3.0000E-12 ); 
Gstr{i,   1}='IPX';Gstr{i,   2}='HO';
fIPX(i)=fIPX(i)-1.0;fHO(i)=fHO(i)-1.0;
fMACR(i)=fMACR(i)+  0.5700;fMVK(i)=fMVK(i)+  0.4300;

% 107, <R087>
i=i+1;
Rnames{ 107} = 'API + HO = 0.97500*APIP1 +  0.02500*APIP2 ';
k(:,i) = (  1.2100E-11.*exp(  4.4000E+02./T) ); 
Gstr{i,   1}='API';Gstr{i,   2}='HO';
fAPI(i)=fAPI(i)-1.0;fHO(i)=fHO(i)-1.0;
fAPIP1(i)=fAPIP1(i)+  0.9750;fAPIP2(i)=fAPIP2(i)+  0.0250;

% 108, <R088>
i=i+1;
Rnames{ 108} = 'LIM + HO = 0.94500*LIMP1 +  0.05500*LIMP2 ';
k(:,i) = (  4.2000E-11.*exp(  4.0100E+02./T) ); 
Gstr{i,   1}='LIM';Gstr{i,   2}='HO';
fLIM(i)=fLIM(i)-1.0;fHO(i)=fHO(i)-1.0;
fLIMP1(i)=fLIMP1(i)+  0.9450;fLIMP2(i)=fLIMP2(i)+  0.0550;

% 109, <TRP04>
i=i+1;
Rnames{ 109} = 'PINAL + HO = 0.23000*PINALP +  0.77000*RCO3 ';
k(:,i) = (  5.2000E-12.*exp(  6.0000E+02./T) ); 
Gstr{i,   1}='PINAL';Gstr{i,   2}='HO';
fPINAL(i)=fPINAL(i)-1.0;fHO(i)=fHO(i)-1.0;
fPINALP(i)=fPINALP(i)+  0.2300;fRCO3(i)=fRCO3(i)+  0.7700;

% 110, <TRP05>
i=i+1;
Rnames{ 110} = 'LIMAL + HO = 0.83000*LIMALP +  0.17000*RCO3 ';
k(:,i) = (  1.1000E-10 ); 
Gstr{i,   1}='LIMAL';Gstr{i,   2}='HO';
fLIMAL(i)=fLIMAL(i)-1.0;fHO(i)=fHO(i)-1.0;
fLIMALP(i)=fLIMALP(i)+  0.8300;fRCO3(i)=fRCO3(i)+  0.1700;

% 111, <R089>
i=i+1;
Rnames{ 111} = 'HCHO + HO = HO2 + CO ';
k(:,i) = (  5.5000E-12.*exp(  1.2500E+02./T) ); 
Gstr{i,   1}='HCHO';Gstr{i,   2}='HO';
fHCHO(i)=fHCHO(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 112, <R090>
i=i+1;
Rnames{ 112} = 'ACD + HO = ACO3 ';
k(:,i) = (  4.7000E-12.*exp(  3.4500E+02./T) ); 
Gstr{i,   1}='ACD';Gstr{i,   2}='HO';
fACD(i)=fACD(i)-1.0;fHO(i)=fHO(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;

% 113, <R091>
i=i+1;
Rnames{ 113} = 'ALD + HO = RCO3 ';
k(:,i) = (  4.9000E-12.*exp(  4.0500E+02./T) ); 
Gstr{i,   1}='ALD';Gstr{i,   2}='HO';
fALD(i)=fALD(i)-1.0;fHO(i)=fHO(i)-1.0;
fRCO3(i)=fRCO3(i)+  1.0000;

% 114, <R092>
i=i+1;
Rnames{ 114} = 'ACT + HO = ACTP ';
k(:,i) = (  4.5600E-14.*exp( -4.2700E+02./T).*(T./300).^(  3.6500E+00 ) ); 
Gstr{i,   1}='ACT';Gstr{i,   2}='HO';
fACT(i)=fACT(i)-1.0;fHO(i)=fHO(i)-1.0;
fACTP(i)=fACTP(i)+  1.0000;

% 115, <R093>
i=i+1;
Rnames{ 115} = 'MEK + HO = MEKP ';
k(:,i) = (  1.5000E-12.*exp( -9.0000E+01./T) ); 
Gstr{i,   1}='MEK';Gstr{i,   2}='HO';
fMEK(i)=fMEK(i)-1.0;fHO(i)=fHO(i)-1.0;
fMEKP(i)=fMEKP(i)+  1.0000;

% 116, <R094>
i=i+1;
Rnames{ 116} = 'KET + HO = KETP ';
k(:,i) = (  2.8000E-12.*exp(  1.0000E+01./T) ); 
Gstr{i,   1}='KET';Gstr{i,   2}='HO';
fKET(i)=fKET(i)-1.0;fHO(i)=fHO(i)-1.0;
fKETP(i)=fKETP(i)+  1.0000;

% 117, <R095>
i=i+1;
Rnames{ 117} = 'HKET + HO = HO2 + MGLY ';
k(:,i) = (  3.0000E-12 ); 
Gstr{i,   1}='HKET';Gstr{i,   2}='HO';
fHKET(i)=fHKET(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fMGLY(i)=fMGLY(i)+  1.0000;

% 118, <R096>
i=i+1;
Rnames{ 118} = 'MACR + HO = 0.57000*MACP +  0.43000*MCP ';
k(:,i) = (  8.0000E-12.*exp(  3.8000E+02./T) ); 
Gstr{i,   1}='MACR';Gstr{i,   2}='HO';
fMACR(i)=fMACR(i)-1.0;fHO(i)=fHO(i)-1.0;
fMACP(i)=fMACP(i)+  0.5700;fMCP(i)=fMCP(i)+  0.4300;

% 119, <R097>
i=i+1;
Rnames{ 119} = 'MVK + HO = MVKP ';
k(:,i) = (  2.6000E-12.*exp(  6.1000E+02./T) ); 
Gstr{i,   1}='MVK';Gstr{i,   2}='HO';
fMVK(i)=fMVK(i)-1.0;fHO(i)=fHO(i)-1.0;
fMVKP(i)=fMVKP(i)+  1.0000;

% 120, <R098>
i=i+1;
Rnames{ 120} = 'UALD + HO = 0.31300*ACO3 +  0.68700*UALP ';
k(:,i) = (  5.7700E-12.*exp(  5.3300E+02./T) ); 
Gstr{i,   1}='UALD';Gstr{i,   2}='HO';
fUALD(i)=fUALD(i)-1.0;fHO(i)=fHO(i)-1.0;
fACO3(i)=fACO3(i)+  0.3130;fUALP(i)=fUALP(i)+  0.6870;

% 121, <R099>
i=i+1;
Rnames{ 121} = 'GLY + HO = HO2 +  2.00000*CO ';
k(:,i) = (  1.1000E-11 ); 
Gstr{i,   1}='GLY';Gstr{i,   2}='HO';
fGLY(i)=fGLY(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  2.0000;

% 122, <R100>
i=i+1;
Rnames{ 122} = 'MGLY + HO = ACO3 + CO ';
k(:,i) = (  9.2600E-13.*exp(  8.3000E+02./T) ); 
Gstr{i,   1}='MGLY';Gstr{i,   2}='HO';
fMGLY(i)=fMGLY(i)-1.0;fHO(i)=fHO(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 123, <R101>
i=i+1;
Rnames{ 123} = 'DCB1 + HO = 0.52000*HO2 +  0.33000*CO +  0.40000*ALD +  0.78000*KET +  0.10000*GLY +  0.01000*MGLY ';
k(:,i) = (  2.8000E-11.*exp(  1.7500E+02./T) ); 
Gstr{i,   1}='DCB1';Gstr{i,   2}='HO';
fDCB1(i)=fDCB1(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  0.5200;fCO(i)=fCO(i)+  0.3300;fALD(i)=fALD(i)+  0.4000;fKET(i)=fKET(i)+  0.7800;fGLY(i)=fGLY(i)+  0.1000;fMGLY(i)=fMGLY(i)+  0.0100;

% 124, <R102>
i=i+1;
Rnames{ 124} = 'DCB2 + HO = 0.52000*HO2 +  0.33000*CO +  0.13000*MEK +  0.10000*GLY +  0.01000*MGLY +  0.78000*OP2 ';
k(:,i) = (  2.8000E-11.*exp(  1.7500E+02./T) ); 
Gstr{i,   1}='DCB2';Gstr{i,   2}='HO';
fDCB2(i)=fDCB2(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  0.5200;fCO(i)=fCO(i)+  0.3300;fMEK(i)=fMEK(i)+  0.1300;fGLY(i)=fGLY(i)+  0.1000;fMGLY(i)=fMGLY(i)+  0.0100;fOP2(i)=fOP2(i)+  0.7800;

% 125, <R103>
i=i+1;
Rnames{ 125} = 'DCB3 + HO = 0.56000*HO2 +  0.21000*MACP +  0.11000*CO +  0.27000*GLY +  0.01000*MGLY +  0.79000*OP2 ';
k(:,i) = (  1.0000E-11 ); 
Gstr{i,   1}='DCB3';Gstr{i,   2}='HO';
fDCB3(i)=fDCB3(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  0.5600;fMACP(i)=fMACP(i)+  0.2100;fCO(i)=fCO(i)+  0.1100;fGLY(i)=fGLY(i)+  0.2700;fMGLY(i)=fMGLY(i)+  0.0100;fOP2(i)=fOP2(i)+  0.7900;

% 126, <R104>
i=i+1;
Rnames{ 126} = 'BALD + HO = BALP ';
k(:,i) = (  5.3200E-12.*exp(  2.4300E+02./T) ); 
Gstr{i,   1}='BALD';Gstr{i,   2}='HO';
fBALD(i)=fBALD(i)-1.0;fHO(i)=fHO(i)-1.0;
fBALP(i)=fBALP(i)+  1.0000;

% 127, <R105>
i=i+1;
Rnames{ 127} = 'PHEN + HO = 0.15200*ASOATJ +  0.61900*HO2 +  0.17000*ADDC +  0.05900*CHO +  0.61900*MCT ';
k(:,i) = (  6.7500E-12.*exp(  4.0500E+02./T) ); 
Gstr{i,   1}='PHEN';Gstr{i,   2}='HO';
fPHEN(i)=fPHEN(i)-1.0;fHO(i)=fHO(i)-1.0;
fASOATJ(i)=fASOATJ(i)+  0.1520;fHO2(i)=fHO2(i)+  0.6190;fADDC(i)=fADDC(i)+  0.1700;fCHO(i)=fCHO(i)+  0.0590;fMCT(i)=fMCT(i)+  0.6190;

% 128, <R106>
i=i+1;
Rnames{ 128} = 'CSL + HO = 0.20000*ASOATJ +  0.58400*HO2 +  0.16000*ADDC +  0.05600*CHO +  0.58400*MCT ';
k(:,i) = (  4.6500E-11.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CSL';Gstr{i,   2}='HO';
fCSL(i)=fCSL(i)-1.0;fHO(i)=fHO(i)-1.0;
fASOATJ(i)=fASOATJ(i)+  0.2000;fHO2(i)=fHO2(i)+  0.5840;fADDC(i)=fADDC(i)+  0.1600;fCHO(i)=fCHO(i)+  0.0560;fMCT(i)=fMCT(i)+  0.5840;

% 129, <R108>
i=i+1;
Rnames{ 129} = 'MCT + HO = MCTO ';
k(:,i) = (  2.0500E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='MCT';Gstr{i,   2}='HO';
fMCT(i)=fMCT(i)-1.0;fHO(i)=fHO(i)-1.0;
fMCTO(i)=fMCTO(i)+  1.0000;

% 130, <R109>
i=i+1;
Rnames{ 130} = 'MOH + HO = HO2 + HCHO ';
k(:,i) = (  2.8500E-12.*exp( -3.4500E+02./T) ); 
Gstr{i,   1}='MOH';Gstr{i,   2}='HO';
fMOH(i)=fMOH(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 131, <R110>
i=i+1;
Rnames{ 131} = 'EOH + HO = HO2 + ACD ';
k(:,i) = (  3.0000E-12.*exp(  2.0000E+01./T) ); 
Gstr{i,   1}='EOH';Gstr{i,   2}='HO';
fEOH(i)=fEOH(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fACD(i)=fACD(i)+  1.0000;

% 132, <R111>
i=i+1;
Rnames{ 132} = 'ROH + HO = HO2 +  0.71900*ALD +  0.18400*ACD ';
k(:,i) = (  2.6000E-12.*exp(  2.0000E+02./T) ); 
Gstr{i,   1}='ROH';Gstr{i,   2}='HO';
fROH(i)=fROH(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fALD(i)=fALD(i)+  0.7190;fACD(i)=fACD(i)+  0.1840;

% 133, <R112>
i=i+1;
Rnames{ 133} = 'ETEG + HO = HO2 + ACD ';
k(:,i) = (  1.4700E-11 ); 
Gstr{i,   1}='ETEG';Gstr{i,   2}='HO';
fETEG(i)=fETEG(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fACD(i)=fACD(i)+  1.0000;

% 134, <R113>
i=i+1;
Rnames{ 134} = 'OP1 + HO = 0.35000*HO +  0.65000*MO2 +  0.35000*HCHO ';
k(:,i) = (  2.9000E-12.*exp(  1.9000E+02./T) ); 
Gstr{i,   1}='OP1';Gstr{i,   2}='HO';
fOP1(i)=fOP1(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO(i)=fHO(i)+  0.3500;fMO2(i)=fMO2(i)+  0.6500;fHCHO(i)=fHCHO(i)+  0.3500;

% 135, <R114>
i=i+1;
Rnames{ 135} = 'OP2 + HO = 0.01000*HO +  0.44000*HC3P +  0.07000*XO2 +  0.08000*ALD +  0.41000*KET ';
k(:,i) = (  3.4000E-12.*exp(  1.9000E+02./T) ); 
Gstr{i,   1}='OP2';Gstr{i,   2}='HO';
fOP2(i)=fOP2(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO(i)=fHO(i)+  0.0100;fHC3P(i)=fHC3P(i)+  0.4400;fXO2(i)=fXO2(i)+  0.0700;fALD(i)=fALD(i)+  0.0800;fKET(i)=fKET(i)+  0.4100;

% 136, <TRP06>
i=i+1;
Rnames{ 136} = 'OPB + HO = 0.01000*HO +  0.44000*HC10P +  0.07000*XO2 +  0.08000*ALD +  0.41000*KET ';
k(:,i) = (  3.4000E-12.*exp(  1.9000E+02./T) ); 
Gstr{i,   1}='OPB';Gstr{i,   2}='HO';
fOPB(i)=fOPB(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO(i)=fHO(i)+  0.0100;fHC10P(i)=fHC10P(i)+  0.4400;fXO2(i)=fXO2(i)+  0.0700;fALD(i)=fALD(i)+  0.0800;fKET(i)=fKET(i)+  0.4100;

% 137, <R116>
i=i+1;
Rnames{ 137} = 'MAHP + HO = MACP ';
k(:,i) = (  3.0000E-11 ); 
Gstr{i,   1}='MAHP';Gstr{i,   2}='HO';
fMAHP(i)=fMAHP(i)-1.0;fHO(i)=fHO(i)-1.0;
fMACP(i)=fMACP(i)+  1.0000;

% 138, <R117>
i=i+1;
Rnames{ 138} = 'ORA1 + HO = HO2 + CO2 ';
k(:,i) = (  4.5000E-13 ); 
Gstr{i,   1}='ORA1';Gstr{i,   2}='HO';
fORA1(i)=fORA1(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 139, <R118>
i=i+1;
Rnames{ 139} = 'ORA2 + HO = 0.64000*MO2 +  0.36000*ORAP +  0.64000*CO2 ';
k(:,i) = (  4.0000E-14.*exp(  8.5000E+02./T) ); 
Gstr{i,   1}='ORA2';Gstr{i,   2}='HO';
fORA2(i)=fORA2(i)-1.0;fHO(i)=fHO(i)-1.0;
fMO2(i)=fMO2(i)+  0.6400;fORAP(i)=fORAP(i)+  0.3600;fCO2(i)=fCO2(i)+  0.6400;

% 140, <R119>
i=i+1;
Rnames{ 140} = 'PAA + HO = 0.35000*HO +  0.65000*ACO3 +  0.35000*XO2 +  0.35000*HCHO ';
k(:,i) = (  2.9300E-12.*exp(  1.9000E+02./T) ); 
Gstr{i,   1}='PAA';Gstr{i,   2}='HO';
fPAA(i)=fPAA(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO(i)=fHO(i)+  0.3500;fACO3(i)=fACO3(i)+  0.6500;fXO2(i)=fXO2(i)+  0.3500;fHCHO(i)=fHCHO(i)+  0.3500;

% 141, <R120>
i=i+1;
Rnames{ 141} = 'PAN + HO = XO2 + NO3 + HCHO ';
k(:,i) = (  4.0000E-14 ); 
Gstr{i,   1}='PAN';Gstr{i,   2}='HO';
fPAN(i)=fPAN(i)-1.0;fHO(i)=fHO(i)-1.0;
fXO2(i)=fXO2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 142, <R121>
i=i+1;
Rnames{ 142} = 'PPN + HO = XO2 + NO3 + HCHO ';
k(:,i) = (  4.0000E-14 ); 
Gstr{i,   1}='PPN';Gstr{i,   2}='HO';
fPPN(i)=fPPN(i)-1.0;fHO(i)=fHO(i)-1.0;
fXO2(i)=fXO2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 143, <R122>
i=i+1;
Rnames{ 143} = 'MPAN + HO = NO2 + HKET + CO ';
k(:,i) = (  3.2000E-11 ); 
Gstr{i,   1}='MPAN';Gstr{i,   2}='HO';
fMPAN(i)=fMPAN(i)-1.0;fHO(i)=fHO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHKET(i)=fHKET(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 144, <R123>
i=i+1;
Rnames{ 144} = 'ONIT + HO = HC3P + NO2 ';
k(:,i) = (  5.3100E-12.*exp( -2.6000E+02./T) ); 
Gstr{i,   1}='ONIT';Gstr{i,   2}='HO';
fONIT(i)=fONIT(i)-1.0;fHO(i)=fHO(i)-1.0;
fHC3P(i)=fHC3P(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 145, <TRP07>
i=i+1;
Rnames{ 145} = 'VTRPN + HO = 0.33000*VHONIT +  0.67000*NO2 +  0.27000*PINAL +  0.38000*KET +  0.21000*HCHO +  0.02000*ALD ';
k(:,i) = (  4.8000E-12 ); 
Gstr{i,   1}='VTRPN';Gstr{i,   2}='HO';
fVTRPN(i)=fVTRPN(i)-1.0;fHO(i)=fHO(i)-1.0;
fVHONIT(i)=fVHONIT(i)+  0.3300;fNO2(i)=fNO2(i)+  0.6700;fPINAL(i)=fPINAL(i)+  0.2700;fKET(i)=fKET(i)+  0.3800;fHCHO(i)=fHCHO(i)+  0.2100;fALD(i)=fALD(i)+  0.0200;

% 146, <TRP57>
i=i+1;
Rnames{ 146} = 'VHONIT + HO = HKET + NO3 ';
 xk0 =   2.4000E-14.*exp(  4.6000E+02./T);
 xk2 =   2.7000E-17.*exp(  2.1990E+03./T);
 xk3 =   6.5000E-34.*exp(  1.3350E+03./T);
k(:,i) = (xk0+xk3.*M./(1.0+xk3.*M./xk2) ); 
Gstr{i,   1}='VHONIT';Gstr{i,   2}='HO';
fVHONIT(i)=fVHONIT(i)-1.0;fHO(i)=fHO(i)-1.0;
fHKET(i)=fHKET(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 147, <R126>
i=i+1;
Rnames{ 147} = 'ETE + O3 = 0.08000*HO +  0.15000*HO2 +  0.63000*CO + HCHO +  0.37000*ORA1 ';
k(:,i) = (  9.1400E-15.*exp( -2.5800E+03./T) ); 
Gstr{i,   1}='ETE';Gstr{i,   2}='O3';
fETE(i)=fETE(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.0800;fHO2(i)=fHO2(i)+  0.1500;fCO(i)=fCO(i)+  0.6300;fHCHO(i)=fHCHO(i)+  1.0000;fORA1(i)=fORA1(i)+  0.3700;

% 148, <R127>
i=i+1;
Rnames{ 148} = 'OLT + O3 = 0.22000*HO +  0.32000*HO2 +  0.08000*MO2 +  0.06000*ETHP +  0.04000*HC3P +  0.02000*HC5P +  0.06800*H2O2 +  0.43000*CO +  0.02000*ETH +  0.01500*HC3 +  0.00600*HC5 +  0.03200*BEN +  0.56000*HCHO +  0.01000*ACD +  0.44000*ALD +  0.03000*ACT +  0.02000*BALD +  0.06000*MEK +  0.01000*HKET +  0.03000*ORA1 +  0.06000*ORA2 ';
k(:,i) = (  4.3300E-15.*exp( -1.8000E+03./T) ); 
Gstr{i,   1}='OLT';Gstr{i,   2}='O3';
fOLT(i)=fOLT(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.2200;fHO2(i)=fHO2(i)+  0.3200;fMO2(i)=fMO2(i)+  0.0800;fETHP(i)=fETHP(i)+  0.0600;fHC3P(i)=fHC3P(i)+  0.0400;fHC5P(i)=fHC5P(i)+  0.0200;fH2O2(i)=fH2O2(i)+  0.0680;fCO(i)=fCO(i)+  0.4300;fETH(i)=fETH(i)+  0.0200;fHC3(i)=fHC3(i)+  0.0150;fHC5(i)=fHC5(i)+  0.0060;fBEN(i)=fBEN(i)+  0.0320;fHCHO(i)=fHCHO(i)+  0.5600;fACD(i)=fACD(i)+  0.0100;fALD(i)=fALD(i)+  0.4400;fACT(i)=fACT(i)+  0.0300;fBALD(i)=fBALD(i)+  0.0200;fMEK(i)=fMEK(i)+  0.0600;fHKET(i)=fHKET(i)+  0.0100;fORA1(i)=fORA1(i)+  0.0300;fORA2(i)=fORA2(i)+  0.0600;

% 149, <R128>
i=i+1;
Rnames{ 149} = 'OLI + O3 = 0.46000*HO +  0.07000*HO2 +  0.32000*MO2 +  0.07000*ETHP +  0.04000*HC3P +  0.09000*ACO3 +  0.37000*CO +  0.02600*H2O2 +  0.01000*ETH +  0.01000*HC3 +  0.09000*HCHO +  0.45700*ACD +  0.73000*ALD +  0.11000*ACT +  0.01700*KET +  0.04400*HKET +  0.01700*ORA2 ';
k(:,i) = (  4.4000E-15.*exp( -8.4500E+02./T) ); 
Gstr{i,   1}='OLI';Gstr{i,   2}='O3';
fOLI(i)=fOLI(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.4600;fHO2(i)=fHO2(i)+  0.0700;fMO2(i)=fMO2(i)+  0.3200;fETHP(i)=fETHP(i)+  0.0700;fHC3P(i)=fHC3P(i)+  0.0400;fACO3(i)=fACO3(i)+  0.0900;fCO(i)=fCO(i)+  0.3700;fH2O2(i)=fH2O2(i)+  0.0260;fETH(i)=fETH(i)+  0.0100;fHC3(i)=fHC3(i)+  0.0100;fHCHO(i)=fHCHO(i)+  0.0900;fACD(i)=fACD(i)+  0.4570;fALD(i)=fALD(i)+  0.7300;fACT(i)=fACT(i)+  0.1100;fKET(i)=fKET(i)+  0.0170;fHKET(i)=fHKET(i)+  0.0440;fORA2(i)=fORA2(i)+  0.0170;

% 150, <R131>
i=i+1;
Rnames{ 150} = 'API + O3 = 0.60550*HO +  0.21450*PINALP +  0.25500*H2O2 +  0.25350*PINAL +  0.00650*ORA2 +  0.11050*HO2 +  0.11050*CO +  0.45900*HCHO +  0.23050*APIP1 +  0.05000*APIP2 +  0.17850*KET +  0.06650*HC3 +  0.03850*OP1 +  0.02800*ORA1 ';
k(:,i) = (  8.0500E-16.*exp( -6.4000E+02./T) ); 
Gstr{i,   1}='API';Gstr{i,   2}='O3';
fAPI(i)=fAPI(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.6055;fPINALP(i)=fPINALP(i)+  0.2145;fH2O2(i)=fH2O2(i)+  0.2550;fPINAL(i)=fPINAL(i)+  0.2535;fORA2(i)=fORA2(i)+  0.0065;fHO2(i)=fHO2(i)+  0.1105;fCO(i)=fCO(i)+  0.1105;fHCHO(i)=fHCHO(i)+  0.4590;fAPIP1(i)=fAPIP1(i)+  0.2305;fAPIP2(i)=fAPIP2(i)+  0.0500;fKET(i)=fKET(i)+  0.1785;fHC3(i)=fHC3(i)+  0.0665;fOP1(i)=fOP1(i)+  0.0385;fORA1(i)=fORA1(i)+  0.0280;

% 151, <R132>
i=i+1;
Rnames{ 151} = 'LIM + O3 = 0.66000*HO +  0.66000*LIMAL +  0.33000*ACO3 +  0.33000*HCHO +  0.22000*LIMP1 +  0.11000*LIMP2 +  0.33000*H2O2 +  0.01000*ORA2 ';
k(:,i) = (  2.8000E-15.*exp( -7.7000E+02./T) ); 
Gstr{i,   1}='LIM';Gstr{i,   2}='O3';
fLIM(i)=fLIM(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.6600;fLIMAL(i)=fLIMAL(i)+  0.6600;fACO3(i)=fACO3(i)+  0.3300;fHCHO(i)=fHCHO(i)+  0.3300;fLIMP1(i)=fLIMP1(i)+  0.2200;fLIMP2(i)=fLIMP2(i)+  0.1100;fH2O2(i)=fH2O2(i)+  0.3300;fORA2(i)=fORA2(i)+  0.0100;

% 152, <TRP08>
i=i+1;
Rnames{ 152} = 'LIMAL + O3 = 0.09000*HO + ALD +  0.62000*HCHO +  0.23000*OP1 +  0.02000*H2O2 +  0.15000*ORA1 ';
k(:,i) = (  8.3000E-18 ); 
Gstr{i,   1}='LIMAL';Gstr{i,   2}='O3';
fLIMAL(i)=fLIMAL(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.0900;fALD(i)=fALD(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.6200;fOP1(i)=fOP1(i)+  0.2300;fH2O2(i)=fH2O2(i)+  0.0200;fORA1(i)=fORA1(i)+  0.1500;

% 153, <TRP09>
i=i+1;
Rnames{ 153} = 'VTRPN + O3 = 0.33000*VHONIT +  0.67000*NO2 +  0.27000*PINAL +  0.38000*KET +  0.21000*HCHO +  0.02000*ALD ';
k(:,i) = (  1.6700E-16 ); 
Gstr{i,   1}='VTRPN';Gstr{i,   2}='O3';
fVTRPN(i)=fVTRPN(i)-1.0;fO3(i)=fO3(i)-1.0;
fVHONIT(i)=fVHONIT(i)+  0.3300;fNO2(i)=fNO2(i)+  0.6700;fPINAL(i)=fPINAL(i)+  0.2700;fKET(i)=fKET(i)+  0.3800;fHCHO(i)=fHCHO(i)+  0.2100;fALD(i)=fALD(i)+  0.0200;

% 154, <R133>
i=i+1;
Rnames{ 154} = 'MACR + O3 = 0.19000*HO +  0.14000*HO2 +  0.10000*ACO3 +  0.22000*CO +  0.50000*MGLY +  0.45000*ORA1 ';
k(:,i) = (  1.3600E-15.*exp( -2.1120E+03./T) ); 
Gstr{i,   1}='MACR';Gstr{i,   2}='O3';
fMACR(i)=fMACR(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.1900;fHO2(i)=fHO2(i)+  0.1400;fACO3(i)=fACO3(i)+  0.1000;fCO(i)=fCO(i)+  0.2200;fMGLY(i)=fMGLY(i)+  0.5000;fORA1(i)=fORA1(i)+  0.4500;

% 155, <R134>
i=i+1;
Rnames{ 155} = 'MVK + O3 = 0.16000*HO +  0.11000*HO2 +  0.28000*ACO3 +  0.01000*XO2 +  0.56000*CO +  0.10000*HCHO +  0.54000*MGLY +  0.07000*ORA1 +  0.07000*ORA2 +  0.10000*ALD ';
k(:,i) = (  8.5000E-16.*exp( -1.5200E+03./T) ); 
Gstr{i,   1}='MVK';Gstr{i,   2}='O3';
fMVK(i)=fMVK(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.1600;fHO2(i)=fHO2(i)+  0.1100;fACO3(i)=fACO3(i)+  0.2800;fXO2(i)=fXO2(i)+  0.0100;fCO(i)=fCO(i)+  0.5600;fHCHO(i)=fHCHO(i)+  0.1000;fMGLY(i)=fMGLY(i)+  0.5400;fORA1(i)=fORA1(i)+  0.0700;fORA2(i)=fORA2(i)+  0.0700;fALD(i)=fALD(i)+  0.1000;

% 156, <R135>
i=i+1;
Rnames{ 156} = 'UALD + O3 = 0.10000*HO +  0.07200*HO2 +  0.00800*MO2 +  0.00200*ACO3 +  0.10000*XO2 +  0.24300*CO +  0.08000*HCHO +  0.42000*ACD +  0.02800*KET +  0.49100*GLY +  0.00300*MGLY +  0.04400*ORA1 ';
k(:,i) = (  1.6600E-18 ); 
Gstr{i,   1}='UALD';Gstr{i,   2}='O3';
fUALD(i)=fUALD(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.1000;fHO2(i)=fHO2(i)+  0.0720;fMO2(i)=fMO2(i)+  0.0080;fACO3(i)=fACO3(i)+  0.0020;fXO2(i)=fXO2(i)+  0.1000;fCO(i)=fCO(i)+  0.2430;fHCHO(i)=fHCHO(i)+  0.0800;fACD(i)=fACD(i)+  0.4200;fKET(i)=fKET(i)+  0.0280;fGLY(i)=fGLY(i)+  0.4910;fMGLY(i)=fMGLY(i)+  0.0030;fORA1(i)=fORA1(i)+  0.0440;

% 157, <R136>
i=i+1;
Rnames{ 157} = 'DCB1 + O3 = 0.05000*HO + HO2 +  0.60000*RCO3 +  0.60000*XO2 +  1.50000*CO +  0.50000*CO2 +  0.05000*HCHO +  0.05000*GLY +  0.08000*MGLY +  0.65000*OP2 ';
k(:,i) = (  2.0000E-16 ); 
Gstr{i,   1}='DCB1';Gstr{i,   2}='O3';
fDCB1(i)=fDCB1(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.0500;fHO2(i)=fHO2(i)+  1.0000;fRCO3(i)=fRCO3(i)+  0.6000;fXO2(i)=fXO2(i)+  0.6000;fCO(i)=fCO(i)+  1.5000;fCO2(i)=fCO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.0500;fGLY(i)=fGLY(i)+  0.0500;fMGLY(i)=fMGLY(i)+  0.0800;fOP2(i)=fOP2(i)+  0.6500;

% 158, <R137>
i=i+1;
Rnames{ 158} = 'DCB2 + O3 = 0.05000*HO + HO2 +  0.60000*RCO3 +  0.60000*XO2 +  1.50000*CO +  0.50000*CO2 +  0.05000*HCHO +  0.05000*GLY +  0.08000*MGLY +  0.70000*DCB1 +  0.65000*OP2 ';
k(:,i) = (  2.0000E-16 ); 
Gstr{i,   1}='DCB2';Gstr{i,   2}='O3';
fDCB2(i)=fDCB2(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.0500;fHO2(i)=fHO2(i)+  1.0000;fRCO3(i)=fRCO3(i)+  0.6000;fXO2(i)=fXO2(i)+  0.6000;fCO(i)=fCO(i)+  1.5000;fCO2(i)=fCO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.0500;fGLY(i)=fGLY(i)+  0.0500;fMGLY(i)=fMGLY(i)+  0.0800;fDCB1(i)=fDCB1(i)+  0.7000;fOP2(i)=fOP2(i)+  0.6500;

% 159, <R138>
i=i+1;
Rnames{ 159} = 'DCB3 + O3 = 0.05000*HO + HO2 +  1.50000*CO +  0.50000*CO2 +  0.48000*GLY +  0.70000*DCB1 +  0.25000*ORA1 +  0.25000*ORA2 +  0.11000*PAA ';
k(:,i) = (  9.0000E-17 ); 
Gstr{i,   1}='DCB3';Gstr{i,   2}='O3';
fDCB3(i)=fDCB3(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.0500;fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  1.5000;fCO2(i)=fCO2(i)+  0.5000;fGLY(i)=fGLY(i)+  0.4800;fDCB1(i)=fDCB1(i)+  0.7000;fORA1(i)=fORA1(i)+  0.2500;fORA2(i)=fORA2(i)+  0.2500;fPAA(i)=fPAA(i)+  0.1100;

% 160, <R140>
i=i+1;
Rnames{ 160} = 'MCTO + O3 = MCTP ';
k(:,i) = (  2.8600E-13 ); 
Gstr{i,   1}='MCTO';Gstr{i,   2}='O3';
fMCTO(i)=fMCTO(i)-1.0;fO3(i)=fO3(i)-1.0;
fMCTP(i)=fMCTP(i)+  1.0000;

% 161, <R141>
i=i+1;
Rnames{ 161} = 'ETE + NO3 = 0.80000*OLNN +  0.20000*OLND ';
k(:,i) = (  4.3920E-13.*exp( -2.2820E+03./T).*(T./300).^(  2.0000E+00 ) ); 
Gstr{i,   1}='ETE';Gstr{i,   2}='NO3';
fETE(i)=fETE(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fOLNN(i)=fOLNN(i)+  0.8000;fOLND(i)=fOLND(i)+  0.2000;

% 162, <R142>
i=i+1;
Rnames{ 162} = 'OLT + NO3 = 0.43000*OLNN +  0.57000*OLND ';
k(:,i) = (  1.7900E-13.*exp( -4.5000E+02./T) ); 
Gstr{i,   1}='OLT';Gstr{i,   2}='NO3';
fOLT(i)=fOLT(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fOLNN(i)=fOLNN(i)+  0.4300;fOLND(i)=fOLND(i)+  0.5700;

% 163, <R143>
i=i+1;
Rnames{ 163} = 'OLI + NO3 = 0.11000*OLNN +  0.89000*OLND ';
k(:,i) = (  8.6400E-13.*exp(  4.5000E+02./T) ); 
Gstr{i,   1}='OLI';Gstr{i,   2}='NO3';
fOLI(i)=fOLI(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fOLNN(i)=fOLNN(i)+  0.1100;fOLND(i)=fOLND(i)+  0.8900;

% 164, <R146>
i=i+1;
Rnames{ 164} = 'API + NO3 = 0.97500*APINP1 +  0.02500*APINP2 ';
k(:,i) = (  1.1900E-12.*exp(  4.9000E+02./T) ); 
Gstr{i,   1}='API';Gstr{i,   2}='NO3';
fAPI(i)=fAPI(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fAPINP1(i)=fAPINP1(i)+  0.9750;fAPINP2(i)=fAPINP2(i)+  0.0250;

% 165, <R147>
i=i+1;
Rnames{ 165} = 'LIM + NO3 = 0.94500*LIMNP1 +  0.05500*LIMNP2 ';
k(:,i) = (  1.2200E-11 ); 
Gstr{i,   1}='LIM';Gstr{i,   2}='NO3';
fLIM(i)=fLIM(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fLIMNP1(i)=fLIMNP1(i)+  0.9450;fLIMNP2(i)=fLIMNP2(i)+  0.0550;

% 166, <TRP10>
i=i+1;
Rnames{ 166} = 'VTRPN + NO3 = 0.33000*VHONIT +  0.67000*NO2 +  0.27000*PINAL +  0.38000*KET +  0.21000*HCHO +  0.02000*ALD ';
k(:,i) = (  3.1500E-13.*exp( -4.4800E+02./T) ); 
Gstr{i,   1}='VTRPN';Gstr{i,   2}='NO3';
fVTRPN(i)=fVTRPN(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVHONIT(i)=fVHONIT(i)+  0.3300;fNO2(i)=fNO2(i)+  0.6700;fPINAL(i)=fPINAL(i)+  0.2700;fKET(i)=fKET(i)+  0.3800;fHCHO(i)=fHCHO(i)+  0.2100;fALD(i)=fALD(i)+  0.0200;

% 167, <R148>
i=i+1;
Rnames{ 167} = 'HCHO + NO3 = HO2 + CO + HNO3 ';
k(:,i) = (  2.0000E-12.*exp( -2.4400E+03./T) ); 
Gstr{i,   1}='HCHO';Gstr{i,   2}='NO3';
fHCHO(i)=fHCHO(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 168, <R149>
i=i+1;
Rnames{ 168} = 'ACD + NO3 = ACO3 + HNO3 ';
k(:,i) = (  1.4000E-12.*exp( -1.9000E+03./T) ); 
Gstr{i,   1}='ACD';Gstr{i,   2}='NO3';
fACD(i)=fACD(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 169, <R150>
i=i+1;
Rnames{ 169} = 'ALD + NO3 = RCO3 + HNO3 ';
k(:,i) = (  3.7600E-12.*exp( -1.9000E+03./T) ); 
Gstr{i,   1}='ALD';Gstr{i,   2}='NO3';
fALD(i)=fALD(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fRCO3(i)=fRCO3(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 170, <R151>
i=i+1;
Rnames{ 170} = 'MACR + NO3 = 0.68000*HCHO +  0.32000*MACP +  0.68000*XO2 +  0.68000*MGLY +  0.32000*HNO3 +  0.68000*NO2 ';
k(:,i) = (  3.4000E-15 ); 
Gstr{i,   1}='MACR';Gstr{i,   2}='NO3';
fMACR(i)=fMACR(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fMACP(i)=fMACP(i)+  0.3200;fXO2(i)=fXO2(i)+  0.6800;fMGLY(i)=fMGLY(i)+  0.6800;fHNO3(i)=fHNO3(i)+  0.3200;fNO2(i)=fNO2(i)+  0.6800;

% 171, <R152>
i=i+1;
Rnames{ 171} = 'UALD + NO3 = HO2 + XO2 +  0.66800*CO +  0.33200*HCHO +  0.33200*ALD + ONIT ';
k(:,i) = (  5.0200E-13.*exp( -1.0760E+03./T) ); 
Gstr{i,   1}='UALD';Gstr{i,   2}='NO3';
fUALD(i)=fUALD(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fXO2(i)=fXO2(i)+  1.0000;fCO(i)=fCO(i)+  0.6680;fHCHO(i)=fHCHO(i)+  0.3320;fALD(i)=fALD(i)+  0.3320;fONIT(i)=fONIT(i)+  1.0000;

% 172, <R153>
i=i+1;
Rnames{ 172} = 'GLY + NO3 = HO2 +  2.00000*CO + HNO3 ';
k(:,i) = (  2.9000E-12.*exp( -1.9000E+03./T) ); 
Gstr{i,   1}='GLY';Gstr{i,   2}='NO3';
fGLY(i)=fGLY(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  2.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 173, <R154>
i=i+1;
Rnames{ 173} = 'MGLY + NO3 = ACO3 + CO + HNO3 ';
k(:,i) = (  3.7600E-12.*exp( -1.9000E+03./T) ); 
Gstr{i,   1}='MGLY';Gstr{i,   2}='NO3';
fMGLY(i)=fMGLY(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 174, <RBAL1>
i=i+1;
Rnames{ 174} = 'BALD + NO3 = BALP + HNO3 ';
k(:,i) = (  2.4000E-15 ); 
Gstr{i,   1}='BALD';Gstr{i,   2}='NO3';
fBALD(i)=fBALD(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fBALP(i)=fBALP(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 175, <R155>
i=i+1;
Rnames{ 175} = 'PHEN + NO3 = 0.15200*ASOATJ +  0.33900*CHO +  0.85000*ADDC +  0.42400*ADCN +  0.42400*HNO3 ';
k(:,i) = (  3.7800E-12 ); 
Gstr{i,   1}='PHEN';Gstr{i,   2}='NO3';
fPHEN(i)=fPHEN(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fASOATJ(i)=fASOATJ(i)+  0.1520;fCHO(i)=fCHO(i)+  0.3390;fADDC(i)=fADDC(i)+  0.8500;fADCN(i)=fADCN(i)+  0.4240;fHNO3(i)=fHNO3(i)+  0.4240;

% 176, <R156>
i=i+1;
Rnames{ 176} = 'CSL + NO3 = 0.20000*ASOATJ +  0.32000*CHO +  0.08000*ADDC +  0.40000*ADCN +  0.40000*HNO3 ';
k(:,i) = (  1.0600E-12 ); 
Gstr{i,   1}='CSL';Gstr{i,   2}='NO3';
fCSL(i)=fCSL(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fASOATJ(i)=fASOATJ(i)+  0.2000;fCHO(i)=fCHO(i)+  0.3200;fADDC(i)=fADDC(i)+  0.0800;fADCN(i)=fADCN(i)+  0.4000;fHNO3(i)=fHNO3(i)+  0.4000;

% 177, <R158>
i=i+1;
Rnames{ 177} = 'MCT + NO3 = MCTO + HNO3 ';
k(:,i) = (  2.0100E-10 ); 
Gstr{i,   1}='MCT';Gstr{i,   2}='NO3';
fMCT(i)=fMCT(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fMCTO(i)=fMCTO(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 178, <R159>
i=i+1;
Rnames{ 178} = 'MPAN + NO3 = MACP + NO2 + HNO3 ';
k(:,i) = (  2.2000E-14.*exp( -5.0000E+02./T) ); 
Gstr{i,   1}='MPAN';Gstr{i,   2}='NO3';
fMPAN(i)=fMPAN(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fMACP(i)=fMACP(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 179, <RBAL2>
i=i+1;
Rnames{ 179} = 'BALP + NO2 = PAN ';
xko =   9.7000E-29.*M.*exp(  0.0000E+00./T).*(T./300).^ -5.6000E+00;
xkinf =   9.3000E-12.*exp(  0.0000E+00./T).*(T./300).^ -1.5000E+00;
xn =   3.0000E-01;
F =   1.4200E+00;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='BALP';Gstr{i,   2}='NO2';
fBALP(i)=fBALP(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fPAN(i)=fPAN(i)+  1.0000;

% 180, <TRP11>
i=i+1;
Rnames{ 180} = 'PINALP = VHOM ';
k(:,i) = (  2.9000E-02 ); 
Gstr{i,   1}='PINALP';
fPINALP(i)=fPINALP(i)-1.0;
fVHOM(i)=fVHOM(i)+  1.0000;

% 181, <TRP12>
i=i+1;
Rnames{ 181} = 'LIMALP = VHOM ';
k(:,i) = (  2.4000E-02 ); 
Gstr{i,   1}='LIMALP';
fLIMALP(i)=fLIMALP(i)-1.0;
fVHOM(i)=fVHOM(i)+  1.0000;

% 182, <R166>
i=i+1;
Rnames{ 182} = 'ACO3 + NO2 = PAN ';
xko =   9.7000E-29.*M.*exp(  0.0000E+00./T).*(T./300).^ -5.6000E+00;
xkinf =   9.3000E-12.*exp(  0.0000E+00./T).*(T./300).^ -1.5000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='ACO3';Gstr{i,   2}='NO2';
fACO3(i)=fACO3(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fPAN(i)=fPAN(i)+  1.0000;

% 183, <R167>
i=i+1;
Rnames{ 183} = 'PAN = ACO3 + NO2 ';
k(:,i) = (  1.1111E+28.*exp( -1.4000E+04./T).*k(:, 182) ); 
Gstr{i,   1}='PAN';
fPAN(i)=fPAN(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 184, <R168>
i=i+1;
Rnames{ 184} = 'RCO3 + NO2 = PPN ';
xko =   9.7000E-29.*M.*exp(  0.0000E+00./T).*(T./300).^ -5.6000E+00;
xkinf =   9.3000E-12.*exp(  0.0000E+00./T).*(T./300).^ -1.5000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='RCO3';Gstr{i,   2}='NO2';
fRCO3(i)=fRCO3(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fPPN(i)=fPPN(i)+  1.0000;

% 185, <R169>
i=i+1;
Rnames{ 185} = 'PPN = RCO3 + NO2 ';
k(:,i) = (  1.1111E+28.*exp( -1.4000E+04./T).*k(:, 184) ); 
Gstr{i,   1}='PPN';
fPPN(i)=fPPN(i)-1.0;
fRCO3(i)=fRCO3(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 186, <R170>
i=i+1;
Rnames{ 186} = 'MACP + NO2 = MPAN ';
k(:,i) = (  2.8000E-12.*exp(  1.8100E+02./T) ); 
Gstr{i,   1}='MACP';Gstr{i,   2}='NO2';
fMACP(i)=fMACP(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fMPAN(i)=fMPAN(i)+  1.0000;

% 187, <R171>
i=i+1;
Rnames{ 187} = 'MPAN = MACP + NO2 ';
k(:,i) = (  1.6000E+16.*exp( -1.3486E+04./T) ); 
Gstr{i,   1}='MPAN';
fMPAN(i)=fMPAN(i)-1.0;
fMACP(i)=fMACP(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 188, <R172>
i=i+1;
Rnames{ 188} = 'MO2 + NO = HO2 + NO2 + HCHO ';
k(:,i) = (  2.8000E-12.*exp(  3.0000E+02./T) ); 
Gstr{i,   1}='MO2';Gstr{i,   2}='NO';
fMO2(i)=fMO2(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 189, <R173>
i=i+1;
Rnames{ 189} = 'ETHP + NO = HO2 + NO2 + ACD ';
k(:,i) = (  2.6000E-12.*exp(  3.6500E+02./T) ); 
Gstr{i,   1}='ETHP';Gstr{i,   2}='NO';
fETHP(i)=fETHP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fACD(i)=fACD(i)+  1.0000;

% 190, <R174>
i=i+1;
Rnames{ 190} = 'HC3P + NO = 0.66000*HO2 +  0.13100*MO2 +  0.04800*ETHP +  0.08900*XO2 +  0.93500*NO2 +  0.50400*ACD +  0.13200*ALD +  0.16500*ACT +  0.04200*MEK +  0.06500*ONIT ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='HC3P';Gstr{i,   2}='NO';
fHC3P(i)=fHC3P(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.6600;fMO2(i)=fMO2(i)+  0.1310;fETHP(i)=fETHP(i)+  0.0480;fXO2(i)=fXO2(i)+  0.0890;fNO2(i)=fNO2(i)+  0.9350;fACD(i)=fACD(i)+  0.5040;fALD(i)=fALD(i)+  0.1320;fACT(i)=fACT(i)+  0.1650;fMEK(i)=fMEK(i)+  0.0420;fONIT(i)=fONIT(i)+  0.0650;

% 191, <R175>
i=i+1;
Rnames{ 191} = 'HC5P + NO = 0.20000*HO2 +  0.05100*MO2 +  0.23100*ETHP +  0.23500*XO2 +  0.86400*NO2 +  0.01800*HCHO +  0.04500*ACD +  0.20300*ALD +  0.03300*MEK +  0.21700*ACT +  0.03300*KET +  0.27200*HKET +  0.13600*ONIT ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='HC5P';Gstr{i,   2}='NO';
fHC5P(i)=fHC5P(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.2000;fMO2(i)=fMO2(i)+  0.0510;fETHP(i)=fETHP(i)+  0.2310;fXO2(i)=fXO2(i)+  0.2350;fNO2(i)=fNO2(i)+  0.8640;fHCHO(i)=fHCHO(i)+  0.0180;fACD(i)=fACD(i)+  0.0450;fALD(i)=fALD(i)+  0.2030;fMEK(i)=fMEK(i)+  0.0330;fACT(i)=fACT(i)+  0.2170;fKET(i)=fKET(i)+  0.0330;fHKET(i)=fHKET(i)+  0.2720;fONIT(i)=fONIT(i)+  0.1360;

% 192, <R177>
i=i+1;
Rnames{ 192} = 'ETEP + NO = HO2 + NO2 +  1.60000*HCHO +  0.20000*ACD ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='ETEP';Gstr{i,   2}='NO';
fETEP(i)=fETEP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.6000;fACD(i)=fACD(i)+  0.2000;

% 193, <R178>
i=i+1;
Rnames{ 193} = 'OLTP + NO = 0.78000*HO2 +  0.97000*NO2 +  0.78000*HCHO +  0.01200*ACD +  0.44000*ALD +  0.06000*ACT +  0.13000*MEK +  0.03000*ONIT ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='OLTP';Gstr{i,   2}='NO';
fOLTP(i)=fOLTP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.7800;fNO2(i)=fNO2(i)+  0.9700;fHCHO(i)=fHCHO(i)+  0.7800;fACD(i)=fACD(i)+  0.0120;fALD(i)=fALD(i)+  0.4400;fACT(i)=fACT(i)+  0.0600;fMEK(i)=fMEK(i)+  0.1300;fONIT(i)=fONIT(i)+  0.0300;

% 194, <R179>
i=i+1;
Rnames{ 194} = 'OLIP + NO = 0.83000*HO2 +  0.95000*NO2 +  0.81000*ACD +  0.68000*ALD +  0.20000*ACT +  0.09000*KET +  0.02000*HKET +  0.05000*ONIT ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='OLIP';Gstr{i,   2}='NO';
fOLIP(i)=fOLIP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.8300;fNO2(i)=fNO2(i)+  0.9500;fACD(i)=fACD(i)+  0.8100;fALD(i)=fALD(i)+  0.6800;fACT(i)=fACT(i)+  0.2000;fKET(i)=fKET(i)+  0.0900;fHKET(i)=fHKET(i)+  0.0200;fONIT(i)=fONIT(i)+  0.0500;

% 195, <ROCARO33>
i=i+1;
Rnames{ 195} = 'BENP + NO = 0.00000*ONIT +  0.00120*VROCP4OXY2 +  0.00080*VROCN1OXY6 +  0.99800*NO2 +  0.99800*HO2 +  0.00000*BALD +  0.99800*GLY +  0.49900*FURANONE +  0.24950*DCB2 +  0.24950*DCB3 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='BENP';Gstr{i,   2}='NO';
fBENP(i)=fBENP(i)-1.0;fNO(i)=fNO(i)-1.0;
fONIT(i)=fONIT(i)-  0.0000;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0012;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0008;fNO2(i)=fNO2(i)+  0.9980;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)-  0.0000;fGLY(i)=fGLY(i)+  0.9980;fFURANONE(i)=fFURANONE(i)+  0.4990;fDCB2(i)=fDCB2(i)+  0.2495;fDCB3(i)=fDCB3(i)+  0.2495;

% 196, <ROCARO43>
i=i+1;
Rnames{ 196} = 'TOLP + NO = 0.00020*ONIT +  0.00130*VROCP4OXY2 +  0.00060*VROCN1OXY6 +  0.99800*NO2 +  0.99800*HO2 +  0.08520*BALD +  0.54770*GLY +  0.36510*MGLY +  0.36510*FURANONE +  0.54770*DCB1 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='TOLP';Gstr{i,   2}='NO';
fTOLP(i)=fTOLP(i)-1.0;fNO(i)=fNO(i)-1.0;
fONIT(i)=fONIT(i)+  0.0002;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0013;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0006;fNO2(i)=fNO2(i)+  0.9980;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0852;fGLY(i)=fGLY(i)+  0.5477;fMGLY(i)=fMGLY(i)+  0.3651;fFURANONE(i)=fFURANONE(i)+  0.3651;fDCB1(i)=fDCB1(i)+  0.5477;

% 197, <ROCARO53>
i=i+1;
Rnames{ 197} = 'XYLP + NO = 0.00010*ONIT +  0.00130*VROCP3OXY2 +  0.00060*VROCP0OXY4 +  0.99800*NO2 +  0.99800*HO2 +  0.04810*BALD +  0.70290*GLY +  0.24700*MGLY +  0.35150*FURANONE +  0.59840*DCB2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='XYLP';Gstr{i,   2}='NO';
fXYLP(i)=fXYLP(i)-1.0;fNO(i)=fNO(i)-1.0;
fONIT(i)=fONIT(i)+  0.0001;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0013;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0006;fNO2(i)=fNO2(i)+  0.9980;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0481;fGLY(i)=fGLY(i)+  0.7029;fMGLY(i)=fMGLY(i)+  0.2470;fFURANONE(i)=fFURANONE(i)+  0.3515;fDCB2(i)=fDCB2(i)+  0.5984;

% 198, <ROCARO63>
i=i+1;
Rnames{ 198} = 'EBZP + NO = 0.00020*ONIT +  0.00130*VROCP3OXY2 +  0.00060*VROCP0OXY4 +  0.99800*NO2 +  0.99800*HO2 +  0.08520*BALD +  0.54770*GLY +  0.36510*MGLY +  0.45640*FURANONE +  0.45640*DCB2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='EBZP';Gstr{i,   2}='NO';
fEBZP(i)=fEBZP(i)-1.0;fNO(i)=fNO(i)-1.0;
fONIT(i)=fONIT(i)+  0.0002;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0013;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0006;fNO2(i)=fNO2(i)+  0.9980;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0852;fGLY(i)=fGLY(i)+  0.5477;fMGLY(i)=fMGLY(i)+  0.3651;fFURANONE(i)=fFURANONE(i)+  0.4564;fDCB2(i)=fDCB2(i)+  0.4564;

% 199, <R189>
i=i+1;
Rnames{ 199} = 'APIP1 + NO = 0.23700*VTRPN +  0.76300*HO2 +  0.76300*NO2 +  0.19500*PINAL +  0.28400*ALD +  0.08650*ACT +  0.12850*LIMAL +  0.30800*HCHO +  0.07150*OPB +  0.08400*KET ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='APIP1';Gstr{i,   2}='NO';
fAPIP1(i)=fAPIP1(i)-1.0;fNO(i)=fNO(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.2370;fHO2(i)=fHO2(i)+  0.7630;fNO2(i)=fNO2(i)+  0.7630;fPINAL(i)=fPINAL(i)+  0.1950;fALD(i)=fALD(i)+  0.2840;fACT(i)=fACT(i)+  0.0865;fLIMAL(i)=fLIMAL(i)+  0.1285;fHCHO(i)=fHCHO(i)+  0.3080;fOPB(i)=fOPB(i)+  0.0715;fKET(i)=fKET(i)+  0.0840;

% 200, <TRP13>
i=i+1;
Rnames{ 200} = 'APIP2 + NO = 0.82000*HO +  0.82000*NO2 + VHOM ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='APIP2';Gstr{i,   2}='NO';
fAPIP2(i)=fAPIP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO(i)=fHO(i)+  0.8200;fNO2(i)=fNO2(i)+  0.8200;fVHOM(i)=fVHOM(i)+  1.0000;

% 201, <TRP14>
i=i+1;
Rnames{ 201} = 'APINP1 + NO = 1.69550*NO2 +  0.23450*VTRPN +  0.07000*ONIT +  0.60450*PINAL +  0.15400*ALD +  0.00700*KET +  0.00700*HCHO +  0.16450*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='APINP1';Gstr{i,   2}='NO';
fAPINP1(i)=fAPINP1(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  1.6955;fVTRPN(i)=fVTRPN(i)+  0.2345;fONIT(i)=fONIT(i)+  0.0700;fPINAL(i)=fPINAL(i)+  0.6045;fALD(i)=fALD(i)+  0.1540;fKET(i)=fKET(i)+  0.0070;fHCHO(i)=fHCHO(i)+  0.0070;fHO2(i)=fHO2(i)+  0.1645;

% 202, <TRP15>
i=i+1;
Rnames{ 202} = 'APINP2 + NO = 0.82000*NO2 +  0.82000*HO + VHOM ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='APINP2';Gstr{i,   2}='NO';
fAPINP2(i)=fAPINP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  0.8200;fHO(i)=fHO(i)+  0.8200;fVHOM(i)=fVHOM(i)+  1.0000;

% 203, <R190>
i=i+1;
Rnames{ 203} = 'LIMP1 + NO = 0.23000*VTRPN +  0.77000*NO2 +  0.77000*LIMAL +  0.77000*HO2 +  0.43000*HCHO ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='LIMP1';Gstr{i,   2}='NO';
fLIMP1(i)=fLIMP1(i)-1.0;fNO(i)=fNO(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.2300;fNO2(i)=fNO2(i)+  0.7700;fLIMAL(i)=fLIMAL(i)+  0.7700;fHO2(i)=fHO2(i)+  0.7700;fHCHO(i)=fHCHO(i)+  0.4300;

% 204, <TRP16>
i=i+1;
Rnames{ 204} = 'LIMP2 + NO = 0.77000*HO +  0.77000*NO2 + VHOM ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='LIMP2';Gstr{i,   2}='NO';
fLIMP2(i)=fLIMP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO(i)=fHO(i)+  0.7700;fNO2(i)=fNO2(i)+  0.7700;fVHOM(i)=fVHOM(i)+  1.0000;

% 205, <TRP17>
i=i+1;
Rnames{ 205} = 'LIMNP1 + NO = 0.57000*VTRPN +  0.07000*ONIT +  1.36000*NO2 +  0.43000*LIMAL +  0.50000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='LIMNP1';Gstr{i,   2}='NO';
fLIMNP1(i)=fLIMNP1(i)-1.0;fNO(i)=fNO(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.5700;fONIT(i)=fONIT(i)+  0.0700;fNO2(i)=fNO2(i)+  1.3600;fLIMAL(i)=fLIMAL(i)+  0.4300;fHO2(i)=fHO2(i)+  0.5000;

% 206, <TRP18>
i=i+1;
Rnames{ 206} = 'LIMNP2 + NO = 0.77000*NO2 +  0.77000*HO + VHOM ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='LIMNP2';Gstr{i,   2}='NO';
fLIMNP2(i)=fLIMNP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  0.7700;fHO(i)=fHO(i)+  0.7700;fVHOM(i)=fVHOM(i)+  1.0000;

% 207, <TRP19>
i=i+1;
Rnames{ 207} = 'PINALP + NO = 0.36000*VTRPN +  0.64000*VHOM +  0.64000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='PINALP';Gstr{i,   2}='NO';
fPINALP(i)=fPINALP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.3600;fVHOM(i)=fVHOM(i)+  0.6400;fNO2(i)=fNO2(i)+  0.6400;

% 208, <TRP20>
i=i+1;
Rnames{ 208} = 'LIMALP + NO = 0.64000*VTRPN +  0.36000*NO2 +  0.36000*HO2 +  0.36000*HCHO +  0.36000*PAA ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='LIMALP';Gstr{i,   2}='NO';
fLIMALP(i)=fLIMALP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.6400;fNO2(i)=fNO2(i)+  0.3600;fHO2(i)=fHO2(i)+  0.3600;fHCHO(i)=fHCHO(i)+  0.3600;fPAA(i)=fPAA(i)+  0.3600;

% 209, <R191>
i=i+1;
Rnames{ 209} = 'ACO3 + NO = MO2 + NO2 + CO2 ';
k(:,i) = (  8.1000E-12.*exp(  2.7000E+02./T) ); 
Gstr{i,   1}='ACO3';Gstr{i,   2}='NO';
fACO3(i)=fACO3(i)-1.0;fNO(i)=fNO(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 210, <R192>
i=i+1;
Rnames{ 210} = 'RCO3 + NO = ETHP + NO2 + CO2 ';
k(:,i) = (  8.1000E-12.*exp(  2.7000E+02./T) ); 
Gstr{i,   1}='RCO3';Gstr{i,   2}='NO';
fRCO3(i)=fRCO3(i)-1.0;fNO(i)=fNO(i)-1.0;
fETHP(i)=fETHP(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 211, <R193>
i=i+1;
Rnames{ 211} = 'ACTP + NO = ACO3 + NO2 + HCHO ';
k(:,i) = (  2.9000E-12.*exp(  3.0000E+02./T) ); 
Gstr{i,   1}='ACTP';Gstr{i,   2}='NO';
fACTP(i)=fACTP(i)-1.0;fNO(i)=fNO(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 212, <R194>
i=i+1;
Rnames{ 212} = 'MEKP + NO = 0.67000*HO2 + NO2 +  0.33000*HCHO +  0.67000*DCB1 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='MEKP';Gstr{i,   2}='NO';
fMEKP(i)=fMEKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.6700;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.3300;fDCB1(i)=fDCB1(i)+  0.6700;

% 213, <R195>
i=i+1;
Rnames{ 213} = 'KETP + NO = 0.77000*HO2 +  0.23000*ACO3 +  0.16000*XO2 + NO2 +  0.46000*ALD +  0.54000*MGLY ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='KETP';Gstr{i,   2}='NO';
fKETP(i)=fKETP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.7700;fACO3(i)=fACO3(i)+  0.2300;fXO2(i)=fXO2(i)+  0.1600;fNO2(i)=fNO2(i)+  1.0000;fALD(i)=fALD(i)+  0.4600;fMGLY(i)=fMGLY(i)+  0.5400;

% 214, <R196>
i=i+1;
Rnames{ 214} = 'MACP + NO = 0.65000*MO2 +  0.35000*ACO3 + NO2 +  0.65000*CO +  0.65000*HCHO ';
k(:,i) = (  2.5400E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='MACP';Gstr{i,   2}='NO';
fMACP(i)=fMACP(i)-1.0;fNO(i)=fNO(i)-1.0;
fMO2(i)=fMO2(i)+  0.6500;fACO3(i)=fACO3(i)+  0.3500;fNO2(i)=fNO2(i)+  1.0000;fCO(i)=fCO(i)+  0.6500;fHCHO(i)=fHCHO(i)+  0.6500;

% 215, <R197>
i=i+1;
Rnames{ 215} = 'MCP + NO = NO2 +  0.50000*HO2 +  0.50000*HCHO + HKET ';
k(:,i) = (  2.5400E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='MCP';Gstr{i,   2}='NO';
fMCP(i)=fMCP(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.5000;fHKET(i)=fHKET(i)+  1.0000;

% 216, <R198>
i=i+1;
Rnames{ 216} = 'MVKP + NO = 0.30000*HO2 +  0.70000*ACO3 +  0.70000*XO2 + NO2 +  0.30000*HCHO +  0.70000*ALD +  0.30000*MGLY ';
k(:,i) = (  2.5400E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='MVKP';Gstr{i,   2}='NO';
fMVKP(i)=fMVKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.3000;fACO3(i)=fACO3(i)+  0.7000;fXO2(i)=fXO2(i)+  0.7000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.3000;fALD(i)=fALD(i)+  0.7000;fMGLY(i)=fMGLY(i)+  0.3000;

% 217, <R199>
i=i+1;
Rnames{ 217} = 'UALP + NO = HO2 + NO2 +  0.61000*CO +  0.03000*HCHO +  0.27000*ALD +  0.18000*GLY +  0.70000*KET +  0.21000*MGLY ';
k(:,i) = (  2.5400E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='UALP';Gstr{i,   2}='NO';
fUALP(i)=fUALP(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fCO(i)=fCO(i)+  0.6100;fHCHO(i)=fHCHO(i)+  0.0300;fALD(i)=fALD(i)+  0.2700;fGLY(i)=fGLY(i)+  0.1800;fKET(i)=fKET(i)+  0.7000;fMGLY(i)=fMGLY(i)+  0.2100;

% 218, <R200>
i=i+1;
Rnames{ 218} = 'BALP + NO = BAL1 + NO2 + CO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='BALP';Gstr{i,   2}='NO';
fBALP(i)=fBALP(i)-1.0;fNO(i)=fNO(i)-1.0;
fBAL1(i)=fBAL1(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 219, <R201>
i=i+1;
Rnames{ 219} = 'BAL1 + NO = BAL2 + NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='BAL1';Gstr{i,   2}='NO';
fBAL1(i)=fBAL1(i)-1.0;fNO(i)=fNO(i)-1.0;
fBAL2(i)=fBAL2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 220, <R202>
i=i+1;
Rnames{ 220} = 'ADDC + NO = HO2 + NO2 +  0.32000*HKET +  0.68000*GLY +  0.68000*OP2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='ADDC';Gstr{i,   2}='NO';
fADDC(i)=fADDC(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHKET(i)=fHKET(i)+  0.3200;fGLY(i)=fGLY(i)+  0.6800;fOP2(i)=fOP2(i)+  0.6800;

% 221, <R203>
i=i+1;
Rnames{ 221} = 'MCTP + NO = MCTO + NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='MCTP';Gstr{i,   2}='NO';
fMCTP(i)=fMCTP(i)-1.0;fNO(i)=fNO(i)-1.0;
fMCTO(i)=fMCTO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 222, <R204>
i=i+1;
Rnames{ 222} = 'ORAP + NO = NO2 + GLY + HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='ORAP';Gstr{i,   2}='NO';
fORAP(i)=fORAP(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fGLY(i)=fGLY(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 223, <R205>
i=i+1;
Rnames{ 223} = 'OLNN + NO = NO2 + HO2 + ONIT ';
k(:,i) = (  4.0000E-12 ); 
Gstr{i,   1}='OLNN';Gstr{i,   2}='NO';
fOLNN(i)=fOLNN(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fONIT(i)=fONIT(i)+  1.0000;

% 224, <R206>
i=i+1;
Rnames{ 224} = 'OLND + NO = 2.00000*NO2 +  0.28700*HCHO +  1.24000*ALD +  0.46400*KET ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='OLND';Gstr{i,   2}='NO';
fOLND(i)=fOLND(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  2.0000;fHCHO(i)=fHCHO(i)+  0.2870;fALD(i)=fALD(i)+  1.2400;fKET(i)=fKET(i)+  0.4640;

% 225, <R207>
i=i+1;
Rnames{ 225} = 'ADCN + NO = 2.00000*NO2 + GLY + OP2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='ADCN';Gstr{i,   2}='NO';
fADCN(i)=fADCN(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  2.0000;fGLY(i)=fGLY(i)+  1.0000;fOP2(i)=fOP2(i)+  1.0000;

% 226, <R208>
i=i+1;
Rnames{ 226} = 'XO2 + NO = NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='XO2';Gstr{i,   2}='NO';
fXO2(i)=fXO2(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;

% 227, <R209>
i=i+1;
Rnames{ 227} = 'BAL2 + NO2 = ONIT ';
k(:,i) = (  2.0000E-11 ); 
Gstr{i,   1}='BAL2';Gstr{i,   2}='NO2';
fBAL2(i)=fBAL2(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fONIT(i)=fONIT(i)+  1.0000;

% 228, <R210>
i=i+1;
Rnames{ 228} = 'CHO + NO2 = ONIT ';
k(:,i) = (  2.0000E-11 ); 
Gstr{i,   1}='CHO';Gstr{i,   2}='NO2';
fCHO(i)=fCHO(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fONIT(i)=fONIT(i)+  1.0000;

% 229, <R211>
i=i+1;
Rnames{ 229} = 'MCTO + NO2 = ONIT ';
k(:,i) = (  2.0800E-12 ); 
Gstr{i,   1}='MCTO';Gstr{i,   2}='NO2';
fMCTO(i)=fMCTO(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fONIT(i)=fONIT(i)+  1.0000;

% 230, <R212>
i=i+1;
Rnames{ 230} = 'MO2 + HO2 = OP1 ';
k(:,i) = (  4.1000E-13.*exp(  7.5000E+02./T) ); 
Gstr{i,   1}='MO2';Gstr{i,   2}='HO2';
fMO2(i)=fMO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP1(i)=fOP1(i)+  1.0000;

% 231, <R213>
i=i+1;
Rnames{ 231} = 'ETHP + HO2 = OP2 ';
k(:,i) = (  7.5000E-13.*exp(  7.0000E+02./T) ); 
Gstr{i,   1}='ETHP';Gstr{i,   2}='HO2';
fETHP(i)=fETHP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 232, <R214>
i=i+1;
Rnames{ 232} = 'HC3P + HO2 = OP2 ';
k(:,i) = (  1.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='HC3P';Gstr{i,   2}='HO2';
fHC3P(i)=fHC3P(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 233, <R215>
i=i+1;
Rnames{ 233} = 'HC5P + HO2 = OP2 ';
k(:,i) = (  1.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='HC5P';Gstr{i,   2}='HO2';
fHC5P(i)=fHC5P(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 234, <R217>
i=i+1;
Rnames{ 234} = 'ETEP + HO2 = OP2 ';
k(:,i) = (  1.9000E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='ETEP';Gstr{i,   2}='HO2';
fETEP(i)=fETEP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 235, <R218>
i=i+1;
Rnames{ 235} = 'OLTP + HO2 = OP2 ';
k(:,i) = (  1.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='OLTP';Gstr{i,   2}='HO2';
fOLTP(i)=fOLTP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 236, <R219>
i=i+1;
Rnames{ 236} = 'OLIP + HO2 = OP2 ';
k(:,i) = (  1.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='OLIP';Gstr{i,   2}='HO2';
fOLIP(i)=fOLIP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 237, <ROCARO32>
i=i+1;
Rnames{ 237} = 'BENP + HO2 = 0.60210*OP2 +  0.39790*VROCN1OXY6 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='BENP';Gstr{i,   2}='HO2';
fBENP(i)=fBENP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  0.6021;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.3979;

% 238, <ROCARO42>
i=i+1;
Rnames{ 238} = 'TOLP + HO2 = 0.71950*OP2 +  0.28050*VROCN1OXY6 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='TOLP';Gstr{i,   2}='HO2';
fTOLP(i)=fTOLP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  0.7195;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.2805;

% 239, <ROCARO52>
i=i+1;
Rnames{ 239} = 'XYLP + HO2 = 0.04820*OP2 +  0.67470*VOP3 +  0.27710*VROCP0OXY4 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='XYLP';Gstr{i,   2}='HO2';
fXYLP(i)=fXYLP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  0.0482;fVOP3(i)=fVOP3(i)+  0.6747;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.2771;

% 240, <ROCARO62>
i=i+1;
Rnames{ 240} = 'EBZP + HO2 = 0.08540*OP2 +  0.63410*VOP3 +  0.28050*VROCP0OXY4 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='EBZP';Gstr{i,   2}='HO2';
fEBZP(i)=fEBZP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  0.0854;fVOP3(i)=fVOP3(i)+  0.6341;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.2805;

% 241, <R229>
i=i+1;
Rnames{ 241} = 'APIP1 + HO2 = 0.03900*ACT +  0.03900*LIMAL +  0.06250*HCHO +  0.76200*OPB +  0.32250*HO2 +  0.18850*PINAL +  0.23800*HO +  0.01050*KET ';
k(:,i) = (  2.6000E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='APIP1';Gstr{i,   2}='HO2';
fAPIP1(i)=fAPIP1(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fACT(i)=fACT(i)+  0.0390;fLIMAL(i)=fLIMAL(i)+  0.0390;fHCHO(i)=fHCHO(i)+  0.0625;fOPB(i)=fOPB(i)+  0.7620;fHO2(i)=fHO2(i)+  0.3225;fPINAL(i)=fPINAL(i)+  0.1885;fHO(i)=fHO(i)+  0.2380;fKET(i)=fKET(i)+  0.0105;

% 242, <TRP21>
i=i+1;
Rnames{ 242} = 'APIP2 + HO2 = VHOM ';
k(:,i) = (  2.7300E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='APIP2';Gstr{i,   2}='HO2';
fAPIP2(i)=fAPIP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVHOM(i)=fVHOM(i)+  1.0000;

% 243, <TRP22>
i=i+1;
Rnames{ 243} = 'APINP1 + HO2 = 0.46100*VTRPN +  0.45500*PINAL +  0.53900*NO2 +  0.61950*HO +  0.07700*ALD +  0.00700*KET +  0.00700*HCHO ';
k(:,i) = (  2.7100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='APINP1';Gstr{i,   2}='HO2';
fAPINP1(i)=fAPINP1(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.4610;fPINAL(i)=fPINAL(i)+  0.4550;fNO2(i)=fNO2(i)+  0.5390;fHO(i)=fHO(i)+  0.6195;fALD(i)=fALD(i)+  0.0770;fKET(i)=fKET(i)+  0.0070;fHCHO(i)=fHCHO(i)+  0.0070;

% 244, <TRP23>
i=i+1;
Rnames{ 244} = 'APINP2 + HO2 = VHOM ';
k(:,i) = (  2.7500E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='APINP2';Gstr{i,   2}='HO2';
fAPINP2(i)=fAPINP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVHOM(i)=fVHOM(i)+  1.0000;

% 245, <R230>
i=i+1;
Rnames{ 245} = 'LIMP1 + HO2 = 0.90000*OPB +  0.10000*LIMAL +  0.10000*HO +  0.10000*HO2 +  0.06000*HCHO ';
k(:,i) = (  2.6000E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='LIMP1';Gstr{i,   2}='HO2';
fLIMP1(i)=fLIMP1(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOPB(i)=fOPB(i)+  0.9000;fLIMAL(i)=fLIMAL(i)+  0.1000;fHO(i)=fHO(i)+  0.1000;fHO2(i)=fHO2(i)+  0.1000;fHCHO(i)=fHCHO(i)+  0.0600;

% 246, <TRP24>
i=i+1;
Rnames{ 246} = 'LIMP2 + HO2 = VHOM ';
k(:,i) = (  2.7300E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='LIMP2';Gstr{i,   2}='HO2';
fLIMP2(i)=fLIMP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVHOM(i)=fVHOM(i)+  1.0000;

% 247, <TRP25>
i=i+1;
Rnames{ 247} = 'LIMNP1 + HO2 = 0.77000*VTRPN +  0.50000*HO +  0.23000*LIMAL +  0.23000*NO2 +  0.27000*HO2 ';
k(:,i) = (  2.7100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='LIMNP1';Gstr{i,   2}='HO2';
fLIMNP1(i)=fLIMNP1(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.7700;fHO(i)=fHO(i)+  0.5000;fLIMAL(i)=fLIMAL(i)+  0.2300;fNO2(i)=fNO2(i)+  0.2300;fHO2(i)=fHO2(i)+  0.2700;

% 248, <TRP26>
i=i+1;
Rnames{ 248} = 'LIMNP2 + HO2 = VHOM ';
k(:,i) = (  2.7500E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='LIMNP2';Gstr{i,   2}='HO2';
fLIMNP2(i)=fLIMNP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVHOM(i)=fVHOM(i)+  1.0000;

% 249, <TRP27>
i=i+1;
Rnames{ 249} = 'PINALP + HO2 = 0.75000*OPB +  0.25000*HO +  0.25000*VHOM ';
k(:,i) = (  2.7100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='PINALP';Gstr{i,   2}='HO2';
fPINALP(i)=fPINALP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOPB(i)=fOPB(i)+  0.7500;fHO(i)=fHO(i)+  0.2500;fVHOM(i)=fVHOM(i)+  0.2500;

% 250, <TRP28>
i=i+1;
Rnames{ 250} = 'LIMALP + HO2 = 0.90000*OPB +  0.10000*HO +  0.10000*HO2 +  0.10000*HCHO +  0.10000*PAA ';
k(:,i) = (  2.7300E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='LIMALP';Gstr{i,   2}='HO2';
fLIMALP(i)=fLIMALP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOPB(i)=fOPB(i)+  0.9000;fHO(i)=fHO(i)+  0.1000;fHO2(i)=fHO2(i)+  0.1000;fHCHO(i)=fHCHO(i)+  0.1000;fPAA(i)=fPAA(i)+  0.1000;

% 251, <R231>
i=i+1;
Rnames{ 251} = 'ACO3 + HO2 = 0.44000*HO +  0.44000*MO2 +  0.44000*CO2 +  0.15000*ORA2 +  0.41000*PAA ';
k(:,i) = (  4.3000E-13.*exp(  1.0400E+03./T) ); 
Gstr{i,   1}='ACO3';Gstr{i,   2}='HO2';
fACO3(i)=fACO3(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHO(i)=fHO(i)+  0.4400;fMO2(i)=fMO2(i)+  0.4400;fCO2(i)=fCO2(i)+  0.4400;fORA2(i)=fORA2(i)+  0.1500;fPAA(i)=fPAA(i)+  0.4100;

% 252, <R232>
i=i+1;
Rnames{ 252} = 'RCO3 + HO2 = 0.44000*HO +  0.44000*ETHP +  0.44000*CO2 +  0.15000*ORA2 +  0.41000*PAA ';
k(:,i) = (  4.3000E-13.*exp(  1.0400E+03./T) ); 
Gstr{i,   1}='RCO3';Gstr{i,   2}='HO2';
fRCO3(i)=fRCO3(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHO(i)=fHO(i)+  0.4400;fETHP(i)=fETHP(i)+  0.4400;fCO2(i)=fCO2(i)+  0.4400;fORA2(i)=fORA2(i)+  0.1500;fPAA(i)=fPAA(i)+  0.4100;

% 253, <R233>
i=i+1;
Rnames{ 253} = 'ACTP + HO2 = 0.15000*HO +  0.15000*ACO3 +  0.15000*HCHO +  0.85000*OP2 ';
k(:,i) = (  1.1500E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='ACTP';Gstr{i,   2}='HO2';
fACTP(i)=fACTP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHO(i)=fHO(i)+  0.1500;fACO3(i)=fACO3(i)+  0.1500;fHCHO(i)=fHCHO(i)+  0.1500;fOP2(i)=fOP2(i)+  0.8500;

% 254, <R234>
i=i+1;
Rnames{ 254} = 'MEKP + HO2 = OP2 ';
k(:,i) = (  1.1500E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='MEKP';Gstr{i,   2}='HO2';
fMEKP(i)=fMEKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 255, <R235>
i=i+1;
Rnames{ 255} = 'KETP + HO2 = OP2 ';
k(:,i) = (  1.1500E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='KETP';Gstr{i,   2}='HO2';
fKETP(i)=fKETP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 256, <R236>
i=i+1;
Rnames{ 256} = 'MACP + HO2 = MAHP ';
k(:,i) = (  1.8200E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='MACP';Gstr{i,   2}='HO2';
fMACP(i)=fMACP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fMAHP(i)=fMAHP(i)+  1.0000;

% 257, <R237>
i=i+1;
Rnames{ 257} = 'MCP + HO2 = MAHP ';
k(:,i) = (  1.8200E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='MCP';Gstr{i,   2}='HO2';
fMCP(i)=fMCP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fMAHP(i)=fMAHP(i)+  1.0000;

% 258, <R238>
i=i+1;
Rnames{ 258} = 'MVKP + HO2 = OP2 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='MVKP';Gstr{i,   2}='HO2';
fMVKP(i)=fMVKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 259, <R239>
i=i+1;
Rnames{ 259} = 'UALP + HO2 = OP2 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='UALP';Gstr{i,   2}='HO2';
fUALP(i)=fUALP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 260, <RBAL3>
i=i+1;
Rnames{ 260} = 'BALP + HO2 = 0.41000*VOP3 +  0.15000*ORA2 +  0.15000*O3 +  0.44000*BAL1 +  0.44000*HO +  0.44000*CO2 ';
k(:,i) = (  2.3800E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='BALP';Gstr{i,   2}='HO2';
fBALP(i)=fBALP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVOP3(i)=fVOP3(i)+  0.4100;fORA2(i)=fORA2(i)+  0.1500;fO3(i)=fO3(i)+  0.1500;fBAL1(i)=fBAL1(i)+  0.4400;fHO(i)=fHO(i)+  0.4400;fCO2(i)=fCO2(i)+  0.4400;

% 261, <RBAL4>
i=i+1;
Rnames{ 261} = 'BAL1 + HO2 = ORA2 ';
k(:,i) = (  2.1100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='BAL1';Gstr{i,   2}='HO2';
fBAL1(i)=fBAL1(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fORA2(i)=fORA2(i)+  1.0000;

% 262, <RBAL5>
i=i+1;
Rnames{ 262} = 'BAL2 + O3 = BAL1 ';
k(:,i) = (  2.8600E-13 ); 
Gstr{i,   1}='BAL2';Gstr{i,   2}='O3';
fBAL2(i)=fBAL2(i)-1.0;fO3(i)=fO3(i)-1.0;
fBAL1(i)=fBAL1(i)+  1.0000;

% 263, <R240>
i=i+1;
Rnames{ 263} = 'ADDC + HO2 = OP2 ';
k(:,i) = (  3.7500E-13.*exp(  9.8000E+02./T) ); 
Gstr{i,   1}='ADDC';Gstr{i,   2}='HO2';
fADDC(i)=fADDC(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 264, <R241>
i=i+1;
Rnames{ 264} = 'CHO + HO2 = CSL ';
k(:,i) = (  1.0000E-11 ); 
Gstr{i,   1}='CHO';Gstr{i,   2}='HO2';
fCHO(i)=fCHO(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fCSL(i)=fCSL(i)+  1.0000;

% 265, <R242>
i=i+1;
Rnames{ 265} = 'MCTP + HO2 = OP2 ';
k(:,i) = (  3.7500E-13.*exp(  9.8000E+02./T) ); 
Gstr{i,   1}='MCTP';Gstr{i,   2}='HO2';
fMCTP(i)=fMCTP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 266, <R243>
i=i+1;
Rnames{ 266} = 'ORAP + HO2 = OP2 ';
k(:,i) = (  1.1500E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='ORAP';Gstr{i,   2}='HO2';
fORAP(i)=fORAP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 267, <R244>
i=i+1;
Rnames{ 267} = 'OLNN + HO2 = ONIT ';
k(:,i) = (  1.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='OLNN';Gstr{i,   2}='HO2';
fOLNN(i)=fOLNN(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fONIT(i)=fONIT(i)+  1.0000;

% 268, <R245>
i=i+1;
Rnames{ 268} = 'OLND + HO2 = ONIT ';
k(:,i) = (  1.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='OLND';Gstr{i,   2}='HO2';
fOLND(i)=fOLND(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fONIT(i)=fONIT(i)+  1.0000;

% 269, <R246>
i=i+1;
Rnames{ 269} = 'ADCN + HO2 = ONIT ';
k(:,i) = (  3.7500E-13.*exp(  9.8000E+02./T) ); 
Gstr{i,   1}='ADCN';Gstr{i,   2}='HO2';
fADCN(i)=fADCN(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fONIT(i)=fONIT(i)+  1.0000;

% 270, <R247>
i=i+1;
Rnames{ 270} = 'XO2 + HO2 = OP2 ';
k(:,i) = (  1.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='XO2';Gstr{i,   2}='HO2';
fXO2(i)=fXO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 271, <R248>
i=i+1;
Rnames{ 271} = 'MO2 + MO2 = 0.74000*HO2 +  1.37000*HCHO +  0.63000*MOH ';
k(:,i) = (  9.5000E-14.*exp(  3.9000E+02./T) ); 
Gstr{i,   1}='MO2';Gstr{i,   2}='MO2';
fMO2(i)=fMO2(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.7400;fHCHO(i)=fHCHO(i)+  1.3700;fMOH(i)=fMOH(i)+  0.6300;

% 272, <R249>
i=i+1;
Rnames{ 272} = 'ETHP + MO2 = HO2 +  0.75000*HCHO +  0.75000*ACD +  0.25000*MOH +  0.25000*EOH ';
k(:,i) = (  1.1800E-13.*exp(  1.5800E+02./T) ); 
Gstr{i,   1}='ETHP';Gstr{i,   2}='MO2';
fETHP(i)=fETHP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.7500;fACD(i)=fACD(i)+  0.7500;fMOH(i)=fMOH(i)+  0.2500;fEOH(i)=fEOH(i)+  0.2500;

% 273, <R250>
i=i+1;
Rnames{ 273} = 'HC3P + MO2 = 0.89400*HO2 +  0.08000*MO2 +  0.02600*ETHP +  0.02600*XO2 +  0.82700*HCHO +  0.19800*ALD +  0.49700*KET +  0.05000*GLY +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  9.4600E-14.*exp(  4.3100E+02./T) ); 
Gstr{i,   1}='HC3P';Gstr{i,   2}='MO2';
fHC3P(i)=fHC3P(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.8940;fMO2(i)=fMO2(i)+  0.0800;fETHP(i)=fETHP(i)+  0.0260;fXO2(i)=fXO2(i)+  0.0260;fHCHO(i)=fHCHO(i)+  0.8270;fALD(i)=fALD(i)+  0.1980;fKET(i)=fKET(i)+  0.4970;fGLY(i)=fGLY(i)+  0.0500;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 274, <R251>
i=i+1;
Rnames{ 274} = 'HC5P + MO2 = 0.84200*HO2 +  0.01800*MO2 +  0.14000*ETHP +  0.19100*XO2 +  0.77700*HCHO +  0.25100*ALD +  0.61800*KET +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  1.0000E-13.*exp(  4.6700E+02./T) ); 
Gstr{i,   1}='HC5P';Gstr{i,   2}='MO2';
fHC5P(i)=fHC5P(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.8420;fMO2(i)=fMO2(i)+  0.0180;fETHP(i)=fETHP(i)+  0.1400;fXO2(i)=fXO2(i)+  0.1910;fHCHO(i)=fHCHO(i)+  0.7770;fALD(i)=fALD(i)+  0.2510;fKET(i)=fKET(i)+  0.6180;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 275, <R253>
i=i+1;
Rnames{ 275} = 'ETEP + MO2 = HO2 +  1.95000*HCHO +  0.15000*ALD +  0.25000*MOH +  0.25000*ETEG ';
k(:,i) = (  1.7100E-13.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='ETEP';Gstr{i,   2}='MO2';
fETEP(i)=fETEP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.9500;fALD(i)=fALD(i)+  0.1500;fMOH(i)=fMOH(i)+  0.2500;fETEG(i)=fETEG(i)+  0.2500;

% 276, <R254>
i=i+1;
Rnames{ 276} = 'OLTP + MO2 = HO2 +  1.50000*HCHO +  0.70500*ALD +  0.04500*KET +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  1.4600E-13.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='OLTP';Gstr{i,   2}='MO2';
fOLTP(i)=fOLTP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.5000;fALD(i)=fALD(i)+  0.7050;fKET(i)=fKET(i)+  0.0450;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 277, <R255>
i=i+1;
Rnames{ 277} = 'OLIP + MO2 = HO2 +  0.75000*HCHO +  1.28000*ALD +  0.21800*KET +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  9.1800E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='OLIP';Gstr{i,   2}='MO2';
fOLIP(i)=fOLIP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.7500;fALD(i)=fALD(i)+  1.2800;fKET(i)=fKET(i)+  0.2180;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 278, <ROCARO35>
i=i+1;
Rnames{ 278} = 'BENP + MO2 = 0.68000*HCHO +  1.37000*HO2 +  0.32000*MOH +  0.00000*BALD + GLY +  0.50000*FURANONE +  0.25000*DCB2 +  0.25000*DCB3 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='BENP';Gstr{i,   2}='MO2';
fBENP(i)=fBENP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fHO2(i)=fHO2(i)+  1.3700;fMOH(i)=fMOH(i)+  0.3200;fBALD(i)=fBALD(i)-  0.0000;fGLY(i)=fGLY(i)+  1.0000;fFURANONE(i)=fFURANONE(i)+  0.5000;fDCB2(i)=fDCB2(i)+  0.2500;fDCB3(i)=fDCB3(i)+  0.2500;

% 279, <ROCARO45>
i=i+1;
Rnames{ 279} = 'TOLP + MO2 = 0.68000*HCHO +  1.28460*HO2 +  0.32000*MOH +  0.08540*BALD +  0.54880*GLY +  0.36590*MGLY +  0.36590*FURANONE +  0.54880*DCB1 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='TOLP';Gstr{i,   2}='MO2';
fTOLP(i)=fTOLP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fHO2(i)=fHO2(i)+  1.2846;fMOH(i)=fMOH(i)+  0.3200;fBALD(i)=fBALD(i)+  0.0854;fGLY(i)=fGLY(i)+  0.5488;fMGLY(i)=fMGLY(i)+  0.3659;fFURANONE(i)=fFURANONE(i)+  0.3659;fDCB1(i)=fDCB1(i)+  0.5488;

% 280, <ROCARO55>
i=i+1;
Rnames{ 280} = 'XYLP + MO2 = 0.68000*HCHO +  1.32180*HO2 +  0.32000*MOH +  0.04820*BALD +  0.70430*GLY +  0.24750*MGLY +  0.35220*FURANONE +  0.59960*DCB2 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='XYLP';Gstr{i,   2}='MO2';
fXYLP(i)=fXYLP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fHO2(i)=fHO2(i)+  1.3218;fMOH(i)=fMOH(i)+  0.3200;fBALD(i)=fBALD(i)+  0.0482;fGLY(i)=fGLY(i)+  0.7043;fMGLY(i)=fMGLY(i)+  0.2475;fFURANONE(i)=fFURANONE(i)+  0.3522;fDCB2(i)=fDCB2(i)+  0.5996;

% 281, <ROCARO65>
i=i+1;
Rnames{ 281} = 'EBZP + MO2 = 0.68000*HCHO +  1.28460*HO2 +  0.32000*MOH +  0.08540*BALD +  0.54880*GLY +  0.36590*MGLY +  0.45730*FURANONE +  0.45730*DCB2 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='EBZP';Gstr{i,   2}='MO2';
fEBZP(i)=fEBZP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fHO2(i)=fHO2(i)+  1.2846;fMOH(i)=fMOH(i)+  0.3200;fBALD(i)=fBALD(i)+  0.0854;fGLY(i)=fGLY(i)+  0.5488;fMGLY(i)=fMGLY(i)+  0.3659;fFURANONE(i)=fFURANONE(i)+  0.4573;fDCB2(i)=fDCB2(i)+  0.4573;

% 282, <R264>
i=i+1;
Rnames{ 282} = 'ISOP + MO2 = HO2 +  1.31000*HCHO +  0.15900*MACR +  0.25000*MVK +  0.25000*MOH +  0.25000*ROH +  0.02300*ALD +  0.01800*GLY +  0.01600*HKET ';
k(:,i) = (  3.4000E-14.*exp(  2.2100E+02./T) ); 
Gstr{i,   1}='ISOP';Gstr{i,   2}='MO2';
fISOP(i)=fISOP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.3100;fMACR(i)=fMACR(i)+  0.1590;fMVK(i)=fMVK(i)+  0.2500;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;fALD(i)=fALD(i)+  0.0230;fGLY(i)=fGLY(i)+  0.0180;fHKET(i)=fHKET(i)+  0.0160;

% 283, <R265>
i=i+1;
Rnames{ 283} = 'APIP1 + MO2 = 1.02950*HCHO +  0.22050*LIMAL +  0.27300*PINAL +  0.23850*ALD +  0.08450*OPB +  0.11050*MOH +  0.18350*KET +  0.06700*ACT +  1.27900*HO2 ';
k(:,i) = (  2.0000E-12 ); 
Gstr{i,   1}='APIP1';Gstr{i,   2}='MO2';
fAPIP1(i)=fAPIP1(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  1.0295;fLIMAL(i)=fLIMAL(i)+  0.2205;fPINAL(i)=fPINAL(i)+  0.2730;fALD(i)=fALD(i)+  0.2385;fOPB(i)=fOPB(i)+  0.0845;fMOH(i)=fMOH(i)+  0.1105;fKET(i)=fKET(i)+  0.1835;fACT(i)=fACT(i)+  0.0670;fHO2(i)=fHO2(i)+  1.2790;

% 284, <TRP29>
i=i+1;
Rnames{ 284} = 'APIP2 + MO2 = HO2 +  0.75000*HCHO +  0.25000*MOH + VHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APIP2';Gstr{i,   2}='MO2';
fAPIP2(i)=fAPIP2(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.7500;fMOH(i)=fMOH(i)+  0.2500;fVHOM(i)=fVHOM(i)+  1.0000;

% 285, <TRP30>
i=i+1;
Rnames{ 285} = 'APINP1 + MO2 = 0.34100*VTRPN +  0.96400*HCHO +  0.04300*MOH +  0.91800*HO2 +  0.65900*NO2 +  0.53300*PINAL +  0.00700*KET +  0.11900*ALD ';
k(:,i) = (  2.0000E-12 ); 
Gstr{i,   1}='APINP1';Gstr{i,   2}='MO2';
fAPINP1(i)=fAPINP1(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.3410;fHCHO(i)=fHCHO(i)+  0.9640;fMOH(i)=fMOH(i)+  0.0430;fHO2(i)=fHO2(i)+  0.9180;fNO2(i)=fNO2(i)+  0.6590;fPINAL(i)=fPINAL(i)+  0.5330;fKET(i)=fKET(i)+  0.0070;fALD(i)=fALD(i)+  0.1190;

% 286, <TRP31>
i=i+1;
Rnames{ 286} = 'APINP2 + MO2 = 0.75000*HO2 +  0.75000*NO2 +  0.25000*MOH +  0.75000*HCHO + VHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APINP2';Gstr{i,   2}='MO2';
fAPINP2(i)=fAPINP2(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.7500;fNO2(i)=fNO2(i)+  0.7500;fMOH(i)=fMOH(i)+  0.2500;fHCHO(i)=fHCHO(i)+  0.7500;fVHOM(i)=fVHOM(i)+  1.0000;

% 287, <R266>
i=i+1;
Rnames{ 287} = 'LIMP1 + MO2 = 0.25000*MOH + LIMAL +  1.03000*HCHO + HO2 ';
k(:,i) = (  2.0000E-12 ); 
Gstr{i,   1}='LIMP1';Gstr{i,   2}='MO2';
fLIMP1(i)=fLIMP1(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fMOH(i)=fMOH(i)+  0.2500;fLIMAL(i)=fLIMAL(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0300;fHO2(i)=fHO2(i)+  1.0000;

% 288, <TRP32>
i=i+1;
Rnames{ 288} = 'LIMP2 + MO2 = HO2 +  0.75000*HCHO +  0.25000*MOH + VHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMP2';Gstr{i,   2}='MO2';
fLIMP2(i)=fLIMP2(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.7500;fMOH(i)=fMOH(i)+  0.2500;fVHOM(i)=fVHOM(i)+  1.0000;

% 289, <TRP33>
i=i+1;
Rnames{ 289} = 'LIMNP1 + MO2 = 0.69000*VTRPN +  0.91000*HCHO +  0.09000*MOH +  1.01000*HO2 +  0.31000*LIMAL +  0.31000*NO2 ';
k(:,i) = (  2.0000E-12 ); 
Gstr{i,   1}='LIMNP1';Gstr{i,   2}='MO2';
fLIMNP1(i)=fLIMNP1(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fVTRPN(i)=fVTRPN(i)+  0.6900;fHCHO(i)=fHCHO(i)+  0.9100;fMOH(i)=fMOH(i)+  0.0900;fHO2(i)=fHO2(i)+  1.0100;fLIMAL(i)=fLIMAL(i)+  0.3100;fNO2(i)=fNO2(i)+  0.3100;

% 290, <TRP34>
i=i+1;
Rnames{ 290} = 'LIMNP2 + MO2 = 0.75000*HO2 +  0.75000*HCHO +  0.75000*NO2 +  0.25000*MOH + VHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMNP2';Gstr{i,   2}='MO2';
fLIMNP2(i)=fLIMNP2(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.7500;fHCHO(i)=fHCHO(i)+  0.7500;fNO2(i)=fNO2(i)+  0.7500;fMOH(i)=fMOH(i)+  0.2500;fVHOM(i)=fVHOM(i)+  1.0000;

% 291, <R267>
i=i+1;
Rnames{ 291} = 'ACO3 + MO2 = 0.90000*HO2 +  0.90000*MO2 +  0.90000*CO2 + HCHO +  0.10000*ORA2 ';
k(:,i) = (  2.0000E-11.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='ACO3';Gstr{i,   2}='MO2';
fACO3(i)=fACO3(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.9000;fMO2(i)=fMO2(i)+  0.9000;fCO2(i)=fCO2(i)+  0.9000;fHCHO(i)=fHCHO(i)+  1.0000;fORA2(i)=fORA2(i)+  0.1000;

% 292, <R268>
i=i+1;
Rnames{ 292} = 'RCO3 + MO2 = 0.90000*HO2 +  0.90000*MO2 +  0.40000*CO2 + HCHO +  0.10000*ORA2 ';
k(:,i) = (  2.0000E-11.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='RCO3';Gstr{i,   2}='MO2';
fRCO3(i)=fRCO3(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.9000;fMO2(i)=fMO2(i)+  0.9000;fCO2(i)=fCO2(i)+  0.4000;fHCHO(i)=fHCHO(i)+  1.0000;fORA2(i)=fORA2(i)+  0.1000;

% 293, <R269>
i=i+1;
Rnames{ 293} = 'ACTP + MO2 = 0.50000*HO2 +  0.50000*ACO3 +  1.50000*HCHO +  0.25000*MOH +  0.25000*ROH +  0.12500*ORA2 ';
k(:,i) = (  7.5000E-13.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='ACTP';Gstr{i,   2}='MO2';
fACTP(i)=fACTP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fACO3(i)=fACO3(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.5000;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;fORA2(i)=fORA2(i)+  0.1250;

% 294, <R270>
i=i+1;
Rnames{ 294} = 'MEKP + MO2 = 0.83400*HO2 + HCHO +  0.33400*DCB1 +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  6.9100E-13.*exp(  5.0800E+02./T) ); 
Gstr{i,   1}='MEKP';Gstr{i,   2}='MO2';
fMEKP(i)=fMEKP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.8340;fHCHO(i)=fHCHO(i)+  1.0000;fDCB1(i)=fDCB1(i)+  0.3340;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 295, <R271>
i=i+1;
Rnames{ 295} = 'KETP + MO2 = HO2 +  0.75000*HCHO +  0.50000*DCB1 +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  6.9100E-13.*exp(  5.0800E+02./T) ); 
Gstr{i,   1}='KETP';Gstr{i,   2}='MO2';
fKETP(i)=fKETP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.7500;fDCB1(i)=fDCB1(i)+  0.5000;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 296, <R272>
i=i+1;
Rnames{ 296} = 'MACP + MO2 = 0.50000*HO2 +  0.26900*ACO3 +  0.50000*CO +  1.66000*HCHO +  0.06700*ORA2 +  0.25000*MO2 +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  3.4000E-14.*exp(  2.2100E+02./T) ); 
Gstr{i,   1}='MACP';Gstr{i,   2}='MO2';
fMACP(i)=fMACP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fACO3(i)=fACO3(i)+  0.2690;fCO(i)=fCO(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.6600;fORA2(i)=fORA2(i)+  0.0670;fMO2(i)=fMO2(i)+  0.2500;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 297, <R273>
i=i+1;
Rnames{ 297} = 'MCP + MO2 = HO2 +  1.50000*HCHO +  0.50000*HKET +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  3.4000E-14.*exp(  2.2100E+02./T) ); 
Gstr{i,   1}='MCP';Gstr{i,   2}='MO2';
fMCP(i)=fMCP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.5000;fHKET(i)=fHKET(i)+  0.5000;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 298, <R274>
i=i+1;
Rnames{ 298} = 'MVKP + MO2 = HO2 +  1.16000*ACO3 +  1.16000*XO2 +  1.50000*HCHO +  1.75000*ALD +  0.50000*MGLY +  0.25000*MOH +  0.25000*ROH +  0.29200*ORA2 ';
k(:,i) = (  8.3700E-14 ); 
Gstr{i,   1}='MVKP';Gstr{i,   2}='MO2';
fMVKP(i)=fMVKP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fACO3(i)=fACO3(i)+  1.1600;fXO2(i)=fXO2(i)+  1.1600;fHCHO(i)=fHCHO(i)+  1.5000;fALD(i)=fALD(i)+  1.7500;fMGLY(i)=fMGLY(i)+  0.5000;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;fORA2(i)=fORA2(i)+  0.2920;

% 299, <R275>
i=i+1;
Rnames{ 299} = 'UALP + MO2 = HO2 +  0.30500*CO +  0.77300*HCHO +  0.20300*ALD +  0.52500*KET +  0.13500*GLY +  0.10500*MGLY +  0.25000*MOH +  0.25000*ROH ';
k(:,i) = (  3.4000E-14.*exp(  2.2100E+02./T) ); 
Gstr{i,   1}='UALP';Gstr{i,   2}='MO2';
fUALP(i)=fUALP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  0.3050;fHCHO(i)=fHCHO(i)+  0.7730;fALD(i)=fALD(i)+  0.2030;fKET(i)=fKET(i)+  0.5250;fGLY(i)=fGLY(i)+  0.1350;fMGLY(i)=fMGLY(i)+  0.1050;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;

% 300, <R276>
i=i+1;
Rnames{ 300} = 'BALP + MO2 = HO2 + BAL1 + HCHO + CO2 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='BALP';Gstr{i,   2}='MO2';
fBALP(i)=fBALP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fBAL1(i)=fBAL1(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 301, <R277>
i=i+1;
Rnames{ 301} = 'BAL1 + MO2 = HO2 + BAL2 + HCHO ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='BAL1';Gstr{i,   2}='MO2';
fBAL1(i)=fBAL1(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fBAL2(i)=fBAL2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 302, <R278>
i=i+1;
Rnames{ 302} = 'ADDC + MO2 = 2.00000*HO2 + HCHO +  0.32000*HKET +  0.68000*GLY +  0.68000*OP2 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='ADDC';Gstr{i,   2}='MO2';
fADDC(i)=fADDC(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  2.0000;fHCHO(i)=fHCHO(i)+  1.0000;fHKET(i)=fHKET(i)+  0.3200;fGLY(i)=fGLY(i)+  0.6800;fOP2(i)=fOP2(i)+  0.6800;

% 303, <R279>
i=i+1;
Rnames{ 303} = 'MCTP + MO2 = HO2 + MCTO + HCHO ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='MCTP';Gstr{i,   2}='MO2';
fMCTP(i)=fMCTP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fMCTO(i)=fMCTO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 304, <R280>
i=i+1;
Rnames{ 304} = 'ORAP + MO2 = HCHO + HO2 + GLY ';
k(:,i) = (  7.5000E-13.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='ORAP';Gstr{i,   2}='MO2';
fORAP(i)=fORAP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fGLY(i)=fGLY(i)+  1.0000;

% 305, <R281>
i=i+1;
Rnames{ 305} = 'OLNN + MO2 = 2.00000*HO2 + HCHO + ONIT ';
k(:,i) = (  1.6000E-13.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='OLNN';Gstr{i,   2}='MO2';
fOLNN(i)=fOLNN(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  2.0000;fHCHO(i)=fHCHO(i)+  1.0000;fONIT(i)=fONIT(i)+  1.0000;

% 306, <R282>
i=i+1;
Rnames{ 306} = 'OLND + MO2 = 0.50000*HO2 +  0.50000*NO2 +  0.96500*HCHO +  0.93000*ALD +  0.34800*KET +  0.25000*MOH +  0.25000*ROH +  0.50000*ONIT ';
k(:,i) = (  9.6800E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='OLND';Gstr{i,   2}='MO2';
fOLND(i)=fOLND(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fNO2(i)=fNO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.9650;fALD(i)=fALD(i)+  0.9300;fKET(i)=fKET(i)+  0.3480;fMOH(i)=fMOH(i)+  0.2500;fROH(i)=fROH(i)+  0.2500;fONIT(i)=fONIT(i)+  0.5000;

% 307, <R283>
i=i+1;
Rnames{ 307} = 'ADCN + MO2 = HO2 +  0.70000*NO2 + HCHO +  0.70000*GLY +  0.70000*OP2 +  0.30000*ONIT ';
k(:,i) = (  3.5600E-14 ); 
Gstr{i,   1}='ADCN';Gstr{i,   2}='MO2';
fADCN(i)=fADCN(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  0.7000;fHCHO(i)=fHCHO(i)+  1.0000;fGLY(i)=fGLY(i)+  0.7000;fOP2(i)=fOP2(i)+  0.7000;fONIT(i)=fONIT(i)+  0.3000;

% 308, <R284>
i=i+1;
Rnames{ 308} = 'XO2 + MO2 = HO2 + HCHO ';
k(:,i) = (  5.9900E-15.*exp(  1.5100E+03./T) ); 
Gstr{i,   1}='XO2';Gstr{i,   2}='MO2';
fXO2(i)=fXO2(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 309, <R285>
i=i+1;
Rnames{ 309} = 'ETHP + ACO3 = 0.50000*HO2 +  0.50000*MO2 + ACD +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  1.0300E-12.*exp(  2.1100E+02./T) ); 
Gstr{i,   1}='ETHP';Gstr{i,   2}='ACO3';
fETHP(i)=fETHP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fACD(i)=fACD(i)+  1.0000;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 310, <R286>
i=i+1;
Rnames{ 310} = 'HC3P + ACO3 = 0.39400*HO2 +  0.58000*MO2 +  0.02600*ETHP +  0.02600*XO2 +  0.13000*HCHO +  0.27300*ALD +  0.66200*KET +  0.06700*GLY +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  6.9000E-13.*exp(  4.6000E+02./T) ); 
Gstr{i,   1}='HC3P';Gstr{i,   2}='ACO3';
fHC3P(i)=fHC3P(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.3940;fMO2(i)=fMO2(i)+  0.5800;fETHP(i)=fETHP(i)+  0.0260;fXO2(i)=fXO2(i)+  0.0260;fHCHO(i)=fHCHO(i)+  0.1300;fALD(i)=fALD(i)+  0.2730;fKET(i)=fKET(i)+  0.6620;fGLY(i)=fGLY(i)+  0.0670;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 311, <R287>
i=i+1;
Rnames{ 311} = 'HC5P + ACO3 = 0.34200*HO2 +  0.51800*MO2 +  0.14000*ETHP +  0.19100*XO2 +  0.04200*HCHO +  0.38100*ALD +  0.82400*KET +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  5.5900E-13.*exp(  5.2200E+02./T) ); 
Gstr{i,   1}='HC5P';Gstr{i,   2}='ACO3';
fHC5P(i)=fHC5P(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.3420;fMO2(i)=fMO2(i)+  0.5180;fETHP(i)=fETHP(i)+  0.1400;fXO2(i)=fXO2(i)+  0.1910;fHCHO(i)=fHCHO(i)+  0.0420;fALD(i)=fALD(i)+  0.3810;fKET(i)=fKET(i)+  0.8240;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 312, <R289>
i=i+1;
Rnames{ 312} = 'ETEP + ACO3 = 0.50000*HO2 +  0.50000*MO2 +  1.60000*HCHO +  0.20000*ACD +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  9.4800E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='ETEP';Gstr{i,   2}='ACO3';
fETEP(i)=fETEP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.6000;fACD(i)=fACD(i)+  0.2000;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 313, <R290>
i=i+1;
Rnames{ 313} = 'OLTP + ACO3 = 0.50000*HO2 +  0.50000*MO2 + HCHO +  0.94000*ALD +  0.06000*KET +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  8.1100E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='OLTP';Gstr{i,   2}='ACO3';
fOLTP(i)=fOLTP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.0000;fALD(i)=fALD(i)+  0.9400;fKET(i)=fKET(i)+  0.0600;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 314, <R291>
i=i+1;
Rnames{ 314} = 'OLIP + ACO3 = 0.50000*HO2 +  0.50000*MO2 +  1.71000*ALD +  0.29000*KET +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  5.0900E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='OLIP';Gstr{i,   2}='ACO3';
fOLIP(i)=fOLIP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fALD(i)=fALD(i)+  1.7100;fKET(i)=fKET(i)+  0.2900;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 315, <ROCARO36>
i=i+1;
Rnames{ 315} = 'BENP + ACO3 = 0.70000*MO2 + HO2 +  0.30000*ORA2 +  0.00000*BALD + GLY +  0.50000*FURANONE +  0.25000*DCB2 +  0.25000*DCB3 +  0.70000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='BENP';Gstr{i,   2}='ACO3';
fBENP(i)=fBENP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fHO2(i)=fHO2(i)+  1.0000;fORA2(i)=fORA2(i)+  0.3000;fBALD(i)=fBALD(i)-  0.0000;fGLY(i)=fGLY(i)+  1.0000;fFURANONE(i)=fFURANONE(i)+  0.5000;fDCB2(i)=fDCB2(i)+  0.2500;fDCB3(i)=fDCB3(i)+  0.2500;fCO2(i)=fCO2(i)+  0.7000;

% 316, <ROCARO46>
i=i+1;
Rnames{ 316} = 'TOLP + ACO3 = 0.70000*MO2 +  0.91460*HO2 +  0.30000*ORA2 +  0.08540*BALD +  0.54880*GLY +  0.36590*MGLY +  0.36590*FURANONE +  0.54880*DCB1 +  0.70000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='TOLP';Gstr{i,   2}='ACO3';
fTOLP(i)=fTOLP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fHO2(i)=fHO2(i)+  0.9146;fORA2(i)=fORA2(i)+  0.3000;fBALD(i)=fBALD(i)+  0.0854;fGLY(i)=fGLY(i)+  0.5488;fMGLY(i)=fMGLY(i)+  0.3659;fFURANONE(i)=fFURANONE(i)+  0.3659;fDCB1(i)=fDCB1(i)+  0.5488;fCO2(i)=fCO2(i)+  0.7000;

% 317, <ROCARO56>
i=i+1;
Rnames{ 317} = 'XYLP + ACO3 = 0.70000*MO2 +  0.95180*HO2 +  0.30000*ORA2 +  0.04820*BALD +  0.70430*GLY +  0.24750*MGLY +  0.35220*FURANONE +  0.59960*DCB2 +  0.70000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='XYLP';Gstr{i,   2}='ACO3';
fXYLP(i)=fXYLP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fHO2(i)=fHO2(i)+  0.9518;fORA2(i)=fORA2(i)+  0.3000;fBALD(i)=fBALD(i)+  0.0482;fGLY(i)=fGLY(i)+  0.7043;fMGLY(i)=fMGLY(i)+  0.2475;fFURANONE(i)=fFURANONE(i)+  0.3522;fDCB2(i)=fDCB2(i)+  0.5996;fCO2(i)=fCO2(i)+  0.7000;

% 318, <ROCARO66>
i=i+1;
Rnames{ 318} = 'EBZP + ACO3 = 0.70000*MO2 +  0.91460*HO2 +  0.30000*ORA2 +  0.08540*BALD +  0.54880*GLY +  0.36590*MGLY +  0.45730*FURANONE +  0.45730*DCB2 +  0.70000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='EBZP';Gstr{i,   2}='ACO3';
fEBZP(i)=fEBZP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fHO2(i)=fHO2(i)+  0.9146;fORA2(i)=fORA2(i)+  0.3000;fBALD(i)=fBALD(i)+  0.0854;fGLY(i)=fGLY(i)+  0.5488;fMGLY(i)=fMGLY(i)+  0.3659;fFURANONE(i)=fFURANONE(i)+  0.4573;fDCB2(i)=fDCB2(i)+  0.4573;fCO2(i)=fCO2(i)+  0.7000;

% 319, <R300>
i=i+1;
Rnames{ 319} = 'ISOP + ACO3 = 0.50000*HO2 +  0.50000*MO2 +  1.04800*HCHO +  0.21900*MACR +  0.30500*MVK +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  8.4000E-14.*exp(  2.2100E+02./T) ); 
Gstr{i,   1}='ISOP';Gstr{i,   2}='ACO3';
fISOP(i)=fISOP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.0480;fMACR(i)=fMACR(i)+  0.2190;fMVK(i)=fMVK(i)+  0.3050;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 320, <R301>
i=i+1;
Rnames{ 320} = 'APIP1 + ACO3 = 0.25350*PINAL +  0.37100*ALD +  0.09100*OPB +  0.11650*ACT +  0.17250*LIMAL +  0.40300*HCHO + HO2 + MO2 +  0.11200*KET +  0.50000*CO2 ';
k(:,i) = (  2.0000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='APIP1';Gstr{i,   2}='ACO3';
fAPIP1(i)=fAPIP1(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fPINAL(i)=fPINAL(i)+  0.2535;fALD(i)=fALD(i)+  0.3710;fOPB(i)=fOPB(i)+  0.0910;fACT(i)=fACT(i)+  0.1165;fLIMAL(i)=fLIMAL(i)+  0.1725;fHCHO(i)=fHCHO(i)+  0.4030;fHO2(i)=fHO2(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;fKET(i)=fKET(i)+  0.1120;fCO2(i)=fCO2(i)+  0.5000;

% 321, <TRP35>
i=i+1;
Rnames{ 321} = 'APIP2 + ACO3 = 0.50000*HO +  0.50000*MO2 +  0.50000*ORA2 + VHOM +  0.50000*CO2 ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APIP2';Gstr{i,   2}='ACO3';
fAPIP2(i)=fAPIP2(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO(i)=fHO(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fORA2(i)=fORA2(i)+  0.5000;fVHOM(i)=fVHOM(i)+  1.0000;fCO2(i)=fCO2(i)+  0.5000;

% 322, <TRP36>
i=i+1;
Rnames{ 322} = 'APINP1 + ACO3 = 0.82500*NO2 +  0.65000*PINAL + MO2 +  0.17500*VTRPN +  0.16800*ALD +  0.00700*KET +  0.00700*HCHO +  0.17500*HO2 +  0.50000*CO2 ';
k(:,i) = (  2.0000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='APINP1';Gstr{i,   2}='ACO3';
fAPINP1(i)=fAPINP1(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fNO2(i)=fNO2(i)+  0.8250;fPINAL(i)=fPINAL(i)+  0.6500;fMO2(i)=fMO2(i)+  1.0000;fVTRPN(i)=fVTRPN(i)+  0.1750;fALD(i)=fALD(i)+  0.1680;fKET(i)=fKET(i)+  0.0070;fHCHO(i)=fHCHO(i)+  0.0070;fHO2(i)=fHO2(i)+  0.1750;fCO2(i)=fCO2(i)+  0.5000;

% 323, <TRP37>
i=i+1;
Rnames{ 323} = 'APINP2 + ACO3 = 0.50000*NO2 +  0.50000*MO2 +  0.50000*ORA2 + VHOM +  0.50000*CO2 ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APINP2';Gstr{i,   2}='ACO3';
fAPINP2(i)=fAPINP2(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fNO2(i)=fNO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fORA2(i)=fORA2(i)+  0.5000;fVHOM(i)=fVHOM(i)+  1.0000;fCO2(i)=fCO2(i)+  0.5000;

% 324, <R302>
i=i+1;
Rnames{ 324} = 'LIMP1 + ACO3 = LIMAL +  0.56000*HCHO + HO2 + MO2 + CO2 ';
k(:,i) = (  2.0000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='LIMP1';Gstr{i,   2}='ACO3';
fLIMP1(i)=fLIMP1(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fLIMAL(i)=fLIMAL(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.5600;fHO2(i)=fHO2(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 325, <TRP38>
i=i+1;
Rnames{ 325} = 'LIMP2 + ACO3 = 0.50000*HO +  0.50000*MO2 +  0.50000*ORA2 + VHOM +  0.50000*CO2 ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMP2';Gstr{i,   2}='ACO3';
fLIMP2(i)=fLIMP2(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO(i)=fHO(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fORA2(i)=fORA2(i)+  0.5000;fVHOM(i)=fVHOM(i)+  1.0000;fCO2(i)=fCO2(i)+  0.5000;

% 326, <TRP39>
i=i+1;
Rnames{ 326} = 'LIMNP1 + ACO3 = MO2 +  0.46000*NO2 +  0.46000*LIMAL +  0.54000*VTRPN +  0.54000*HO2 + CO2 ';
k(:,i) = (  2.0000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='LIMNP1';Gstr{i,   2}='ACO3';
fLIMNP1(i)=fLIMNP1(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fNO2(i)=fNO2(i)+  0.4600;fLIMAL(i)=fLIMAL(i)+  0.4600;fVTRPN(i)=fVTRPN(i)+  0.5400;fHO2(i)=fHO2(i)+  0.5400;fCO2(i)=fCO2(i)+  1.0000;

% 327, <TRP40>
i=i+1;
Rnames{ 327} = 'LIMNP2 + ACO3 = 0.50000*MO2 +  0.50000*NO2 +  0.50000*ORA2 + VHOM +  0.50000*CO2 ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMNP2';Gstr{i,   2}='ACO3';
fLIMNP2(i)=fLIMNP2(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.5000;fNO2(i)=fNO2(i)+  0.5000;fORA2(i)=fORA2(i)+  0.5000;fVHOM(i)=fVHOM(i)+  1.0000;fCO2(i)=fCO2(i)+  0.5000;

% 328, <R303>
i=i+1;
Rnames{ 328} = 'ACO3 + ACO3 = 2.00000*MO2 +  2.00000*CO2 ';
k(:,i) = (  2.5000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='ACO3';Gstr{i,   2}='ACO3';
fACO3(i)=fACO3(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  2.0000;fCO2(i)=fCO2(i)+  2.0000;

% 329, <R304>
i=i+1;
Rnames{ 329} = 'RCO3 + ACO3 = MO2 + ETHP +  2.00000*CO2 ';
k(:,i) = (  2.5000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='RCO3';Gstr{i,   2}='ACO3';
fRCO3(i)=fRCO3(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fETHP(i)=fETHP(i)+  1.0000;fCO2(i)=fCO2(i)+  2.0000;

% 330, <R305>
i=i+1;
Rnames{ 330} = 'ACTP + ACO3 = 0.50000*MO2 +  0.50000*ACO3 + HCHO +  0.75000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  7.5100E-13.*exp(  5.6500E+02./T) ); 
Gstr{i,   1}='ACTP';Gstr{i,   2}='ACO3';
fACTP(i)=fACTP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.5000;fACO3(i)=fACO3(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.0000;fORA2(i)=fORA2(i)+  0.7500;fCO2(i)=fCO2(i)+  0.5000;

% 331, <R306>
i=i+1;
Rnames{ 331} = 'MEKP + ACO3 = 0.33000*HO2 +  0.50000*MO2 +  0.33000*HCHO +  0.33400*DCB1 +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  7.5100E-13.*exp(  5.6500E+02./T) ); 
Gstr{i,   1}='MEKP';Gstr{i,   2}='ACO3';
fMEKP(i)=fMEKP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.3300;fMO2(i)=fMO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.3300;fDCB1(i)=fDCB1(i)+  0.3340;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 332, <R307>
i=i+1;
Rnames{ 332} = 'KETP + ACO3 = 0.50000*HO2 +  0.50000*MO2 +  0.50000*DCB1 +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  7.5100E-13.*exp(  5.6500E+02./T) ); 
Gstr{i,   1}='KETP';Gstr{i,   2}='ACO3';
fKETP(i)=fKETP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fDCB1(i)=fDCB1(i)+  0.5000;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 333, <R308>
i=i+1;
Rnames{ 333} = 'MACP + ACO3 = 0.63500*ORA2 +  0.50000*MO2 +  0.26900*ACO3 +  0.50000*CO + HCHO +  0.50000*CO2 ';
k(:,i) = (  8.4000E-14.*exp(  2.2100E+02./T) ); 
Gstr{i,   1}='MACP';Gstr{i,   2}='ACO3';
fMACP(i)=fMACP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fORA2(i)=fORA2(i)+  0.6350;fMO2(i)=fMO2(i)+  0.5000;fACO3(i)=fACO3(i)+  0.2690;fCO(i)=fCO(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.0000;fCO2(i)=fCO2(i)+  0.5000;

% 334, <R309>
i=i+1;
Rnames{ 334} = 'MCP + ACO3 = 0.50000*HO2 + HCHO +  0.50000*HKET +  0.50000*MO2 +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  8.4000E-14.*exp(  2.2100E+02./T) ); 
Gstr{i,   1}='MCP';Gstr{i,   2}='ACO3';
fMCP(i)=fMCP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  1.0000;fHKET(i)=fHKET(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 335, <R310>
i=i+1;
Rnames{ 335} = 'MVKP + ACO3 = 0.50000*HO2 +  0.50000*MO2 +  1.16000*ACO3 +  1.16000*XO2 + HCHO +  2.30000*ALD +  0.50000*MGLY +  1.08300*ORA2 +  0.50000*CO2 ';
k(:,i) = (  1.6800E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='MVKP';Gstr{i,   2}='ACO3';
fMVKP(i)=fMVKP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fACO3(i)=fACO3(i)+  1.1600;fXO2(i)=fXO2(i)+  1.1600;fHCHO(i)=fHCHO(i)+  1.0000;fALD(i)=fALD(i)+  2.3000;fMGLY(i)=fMGLY(i)+  0.5000;fORA2(i)=fORA2(i)+  1.0830;fCO2(i)=fCO2(i)+  0.5000;

% 336, <R311>
i=i+1;
Rnames{ 336} = 'UALP + ACO3 = 0.50000*HO2 +  0.50000*MO2 +  0.50000*CO +  0.03000*HCHO +  0.27000*ALD +  0.70000*KET +  0.18000*GLY +  0.10500*MGLY +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  1.6800E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='UALP';Gstr{i,   2}='ACO3';
fUALP(i)=fUALP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fMO2(i)=fMO2(i)+  0.5000;fCO(i)=fCO(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.0300;fALD(i)=fALD(i)+  0.2700;fKET(i)=fKET(i)+  0.7000;fGLY(i)=fGLY(i)+  0.1800;fMGLY(i)=fMGLY(i)+  0.1050;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 337, <R312>
i=i+1;
Rnames{ 337} = 'BALP + ACO3 = MO2 + BAL1 +  2.00000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='BALP';Gstr{i,   2}='ACO3';
fBALP(i)=fBALP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fBAL1(i)=fBAL1(i)+  1.0000;fCO2(i)=fCO2(i)+  2.0000;

% 338, <R313>
i=i+1;
Rnames{ 338} = 'BAL1 + ACO3 = MO2 + BAL2 + CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='BAL1';Gstr{i,   2}='ACO3';
fBAL1(i)=fBAL1(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fBAL2(i)=fBAL2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 339, <R314>
i=i+1;
Rnames{ 339} = 'ADDC + ACO3 = 2.00000*HO2 + MO2 +  0.32000*HKET +  0.68000*GLY +  0.68000*OP2 + CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='ADDC';Gstr{i,   2}='ACO3';
fADDC(i)=fADDC(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  2.0000;fMO2(i)=fMO2(i)+  1.0000;fHKET(i)=fHKET(i)+  0.3200;fGLY(i)=fGLY(i)+  0.6800;fOP2(i)=fOP2(i)+  0.6800;fCO2(i)=fCO2(i)+  1.0000;

% 340, <R315>
i=i+1;
Rnames{ 340} = 'MCTP + ACO3 = HO2 + MO2 + MCTO + CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='MCTP';Gstr{i,   2}='ACO3';
fMCTP(i)=fMCTP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;fMCTO(i)=fMCTO(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 341, <R316>
i=i+1;
Rnames{ 341} = 'ORAP + ACO3 = MO2 + GLY + CO2 ';
k(:,i) = (  7.5100E-13.*exp(  5.6500E+02./T) ); 
Gstr{i,   1}='ORAP';Gstr{i,   2}='ACO3';
fORAP(i)=fORAP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fGLY(i)=fGLY(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 342, <R317>
i=i+1;
Rnames{ 342} = 'OLNN + ACO3 = HO2 + MO2 + ONIT ';
k(:,i) = (  8.8500E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='OLNN';Gstr{i,   2}='ACO3';
fOLNN(i)=fOLNN(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;fONIT(i)=fONIT(i)+  1.0000;

% 343, <R318>
i=i+1;
Rnames{ 343} = 'OLND + ACO3 = 0.50000*MO2 + NO2 +  0.28700*HCHO +  1.24000*ALD +  0.46400*KET +  0.50000*ORA2 +  0.50000*CO2 ';
k(:,i) = (  5.3700E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='OLND';Gstr{i,   2}='ACO3';
fOLND(i)=fOLND(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.5000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.2870;fALD(i)=fALD(i)+  1.2400;fKET(i)=fKET(i)+  0.4640;fORA2(i)=fORA2(i)+  0.5000;fCO2(i)=fCO2(i)+  0.5000;

% 344, <R319>
i=i+1;
Rnames{ 344} = 'ADCN + ACO3 = HO2 + MO2 +  0.70000*NO2 +  0.70000*GLY +  0.70000*OP2 +  0.30000*ONIT + CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='ADCN';Gstr{i,   2}='ACO3';
fADCN(i)=fADCN(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;fNO2(i)=fNO2(i)+  0.7000;fGLY(i)=fGLY(i)+  0.7000;fOP2(i)=fOP2(i)+  0.7000;fONIT(i)=fONIT(i)+  0.3000;fCO2(i)=fCO2(i)+  1.0000;

% 345, <R320>
i=i+1;
Rnames{ 345} = 'XO2 + ACO3 = MO2 + CO2 ';
k(:,i) = (  3.4000E-14.*exp(  1.5600E+03./T) ); 
Gstr{i,   1}='XO2';Gstr{i,   2}='ACO3';
fXO2(i)=fXO2(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 346, <R321>
i=i+1;
Rnames{ 346} = 'RCO3 + RCO3 = 2.00000*ETHP +  2.00000*CO2 ';
k(:,i) = (  2.5000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='RCO3';Gstr{i,   2}='RCO3';
fRCO3(i)=fRCO3(i)-1.0;fRCO3(i)=fRCO3(i)-1.0;
fETHP(i)=fETHP(i)+  2.0000;fCO2(i)=fCO2(i)+  2.0000;

% 347, <R322>
i=i+1;
Rnames{ 347} = 'MO2 + NO3 = HO2 + HCHO + NO2 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='MO2';Gstr{i,   2}='NO3';
fMO2(i)=fMO2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 348, <R323>
i=i+1;
Rnames{ 348} = 'ETHP + NO3 = HO2 + NO2 + ACD ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='ETHP';Gstr{i,   2}='NO3';
fETHP(i)=fETHP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fACD(i)=fACD(i)+  1.0000;

% 349, <R324>
i=i+1;
Rnames{ 349} = 'HC3P + NO3 = 0.25400*HO2 +  0.14000*MO2 +  0.09200*XO2 +  0.50300*ETHP + NO2 +  0.51900*ACD +  0.14700*ALD +  0.07500*MEK +  0.09500*ACT ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='HC3P';Gstr{i,   2}='NO3';
fHC3P(i)=fHC3P(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.2540;fMO2(i)=fMO2(i)+  0.1400;fXO2(i)=fXO2(i)+  0.0920;fETHP(i)=fETHP(i)+  0.5030;fNO2(i)=fNO2(i)+  1.0000;fACD(i)=fACD(i)+  0.5190;fALD(i)=fALD(i)+  0.1470;fMEK(i)=fMEK(i)+  0.0750;fACT(i)=fACT(i)+  0.0950;

% 350, <R325>
i=i+1;
Rnames{ 350} = 'HC5P + NO3 = 0.48800*HO2 +  0.05500*MO2 +  0.28000*ETHP +  0.48500*XO2 + NO2 +  0.02400*HCHO +  0.24100*ALD +  0.06000*KET +  0.06300*MEK +  0.24700*ACT +  0.04800*ACD +  0.27500*HKET ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='HC5P';Gstr{i,   2}='NO3';
fHC5P(i)=fHC5P(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.4880;fMO2(i)=fMO2(i)+  0.0550;fETHP(i)=fETHP(i)+  0.2800;fXO2(i)=fXO2(i)+  0.4850;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.0240;fALD(i)=fALD(i)+  0.2410;fKET(i)=fKET(i)+  0.0600;fMEK(i)=fMEK(i)+  0.0630;fACT(i)=fACT(i)+  0.2470;fACD(i)=fACD(i)+  0.0480;fHKET(i)=fHKET(i)+  0.2750;

% 351, <R327>
i=i+1;
Rnames{ 351} = 'ETEP + NO3 = HO2 + NO2 +  1.60000*HCHO +  0.20000*ALD ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='ETEP';Gstr{i,   2}='NO3';
fETEP(i)=fETEP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.6000;fALD(i)=fALD(i)+  0.2000;

% 352, <R328>
i=i+1;
Rnames{ 352} = 'OLTP + NO3 = 0.47000*ALD +  0.79000*HCHO +  0.79000*HO2 + NO2 +  0.18000*MEK +  0.02000*ACD +  0.09000*ACT ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='OLTP';Gstr{i,   2}='NO3';
fOLTP(i)=fOLTP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fALD(i)=fALD(i)+  0.4700;fHCHO(i)=fHCHO(i)+  0.7900;fHO2(i)=fHO2(i)+  0.7900;fNO2(i)=fNO2(i)+  1.0000;fMEK(i)=fMEK(i)+  0.1800;fACD(i)=fACD(i)+  0.0200;fACT(i)=fACT(i)+  0.0900;

% 353, <R329>
i=i+1;
Rnames{ 353} = 'OLIP + NO3 = 0.86000*HO2 +  0.72000*ALD +  0.11000*KET + NO2 +  0.20000*ACT +  0.85000*ACD +  0.04000*HKET ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='OLIP';Gstr{i,   2}='NO3';
fOLIP(i)=fOLIP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.8600;fALD(i)=fALD(i)+  0.7200;fKET(i)=fKET(i)+  0.1100;fNO2(i)=fNO2(i)+  1.0000;fACT(i)=fACT(i)+  0.2000;fACD(i)=fACD(i)+  0.8500;fHKET(i)=fHKET(i)+  0.0400;

% 354, <ROCARO34>
i=i+1;
Rnames{ 354} = 'BENP + NO3 = NO2 + HO2 +  0.00000*BALD + GLY +  0.50000*FURANONE +  0.25000*DCB2 +  0.25000*DCB3 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='BENP';Gstr{i,   2}='NO3';
fBENP(i)=fBENP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fBALD(i)=fBALD(i)-  0.0000;fGLY(i)=fGLY(i)+  1.0000;fFURANONE(i)=fFURANONE(i)+  0.5000;fDCB2(i)=fDCB2(i)+  0.2500;fDCB3(i)=fDCB3(i)+  0.2500;

% 355, <ROCARO44>
i=i+1;
Rnames{ 355} = 'TOLP + NO3 = NO2 +  0.91460*HO2 +  0.08540*BALD +  0.54880*GLY +  0.36590*MGLY +  0.36590*FURANONE +  0.54880*DCB1 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='TOLP';Gstr{i,   2}='NO3';
fTOLP(i)=fTOLP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9146;fBALD(i)=fBALD(i)+  0.0854;fGLY(i)=fGLY(i)+  0.5488;fMGLY(i)=fMGLY(i)+  0.3659;fFURANONE(i)=fFURANONE(i)+  0.3659;fDCB1(i)=fDCB1(i)+  0.5488;

% 356, <ROCARO54>
i=i+1;
Rnames{ 356} = 'XYLP + NO3 = NO2 +  0.95180*HO2 +  0.04820*BALD +  0.70430*GLY +  0.24750*MGLY +  0.35220*FURANONE +  0.59960*DCB2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='XYLP';Gstr{i,   2}='NO3';
fXYLP(i)=fXYLP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9518;fBALD(i)=fBALD(i)+  0.0482;fGLY(i)=fGLY(i)+  0.7043;fMGLY(i)=fMGLY(i)+  0.2475;fFURANONE(i)=fFURANONE(i)+  0.3522;fDCB2(i)=fDCB2(i)+  0.5996;

% 357, <ROCARO64>
i=i+1;
Rnames{ 357} = 'EBZP + NO3 = NO2 +  0.91460*HO2 +  0.08540*BALD +  0.54880*GLY +  0.36590*MGLY +  0.45730*FURANONE +  0.45730*DCB2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='EBZP';Gstr{i,   2}='NO3';
fEBZP(i)=fEBZP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9146;fBALD(i)=fBALD(i)+  0.0854;fGLY(i)=fGLY(i)+  0.5488;fMGLY(i)=fMGLY(i)+  0.3659;fFURANONE(i)=fFURANONE(i)+  0.4573;fDCB2(i)=fDCB2(i)+  0.4573;

% 358, <R338>
i=i+1;
Rnames{ 358} = 'ISOP + NO3 = HO2 + NO2 +  0.75000*HCHO +  0.31800*MACR +  0.50000*MVK +  0.02400*GLY +  0.03300*HKET +  0.03100*ALD ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='ISOP';Gstr{i,   2}='NO3';
fISOP(i)=fISOP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.7500;fMACR(i)=fMACR(i)+  0.3180;fMVK(i)=fMVK(i)+  0.5000;fGLY(i)=fGLY(i)+  0.0240;fHKET(i)=fHKET(i)+  0.0330;fALD(i)=fALD(i)+  0.0310;

% 359, <R339>
i=i+1;
Rnames{ 359} = 'APIP1 + NO3 = NO2 + HO2 +  0.25350*PINAL +  0.37100*ALD +  0.11650*ACT +  0.17250*LIMAL +  0.40300*HCHO +  0.09100*OPB +  0.11200*KET ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='APIP1';Gstr{i,   2}='NO3';
fAPIP1(i)=fAPIP1(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fPINAL(i)=fPINAL(i)+  0.2535;fALD(i)=fALD(i)+  0.3710;fACT(i)=fACT(i)+  0.1165;fLIMAL(i)=fLIMAL(i)+  0.1725;fHCHO(i)=fHCHO(i)+  0.4030;fOPB(i)=fOPB(i)+  0.0910;fKET(i)=fKET(i)+  0.1120;

% 360, <R340>
i=i+1;
Rnames{ 360} = 'LIMP1 + NO3 = HO2 + NO2 + LIMAL +  0.56000*HCHO ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='LIMP1';Gstr{i,   2}='NO3';
fLIMP1(i)=fLIMP1(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fLIMAL(i)=fLIMAL(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.5600;

% 361, <TRP53>
i=i+1;
Rnames{ 361} = 'APINP1 + NO3 = 1.82500*NO2 +  0.65000*PINAL +  0.17500*VTRPN +  0.16800*ALD +  0.00700*KET +  0.00700*HCHO +  0.17500*HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='APINP1';Gstr{i,   2}='NO3';
fAPINP1(i)=fAPINP1(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.8250;fPINAL(i)=fPINAL(i)+  0.6500;fVTRPN(i)=fVTRPN(i)+  0.1750;fALD(i)=fALD(i)+  0.1680;fKET(i)=fKET(i)+  0.0070;fHCHO(i)=fHCHO(i)+  0.0070;fHO2(i)=fHO2(i)+  0.1750;

% 362, <TRP54>
i=i+1;
Rnames{ 362} = 'LIMNP1 + NO3 = 1.46000*NO2 +  0.46000*LIMAL +  0.54000*VTRPN +  0.54000*HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='LIMNP1';Gstr{i,   2}='NO3';
fLIMNP1(i)=fLIMNP1(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.4600;fLIMAL(i)=fLIMAL(i)+  0.4600;fVTRPN(i)=fVTRPN(i)+  0.5400;fHO2(i)=fHO2(i)+  0.5400;

% 363, <R341>
i=i+1;
Rnames{ 363} = 'ACO3 + NO3 = MO2 + NO2 + CO2 ';
k(:,i) = (  4.0000E-12 ); 
Gstr{i,   1}='ACO3';Gstr{i,   2}='NO3';
fACO3(i)=fACO3(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 364, <R342>
i=i+1;
Rnames{ 364} = 'RCO3 + NO3 = ETHP + NO2 ';
k(:,i) = (  4.0000E-12 ); 
Gstr{i,   1}='RCO3';Gstr{i,   2}='NO3';
fRCO3(i)=fRCO3(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fETHP(i)=fETHP(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 365, <R343>
i=i+1;
Rnames{ 365} = 'ACTP + NO3 = ACO3 + NO2 + HCHO ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='ACTP';Gstr{i,   2}='NO3';
fACTP(i)=fACTP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 366, <R344>
i=i+1;
Rnames{ 366} = 'MEKP + NO3 = 0.67000*HO2 + NO2 +  0.33000*HCHO +  0.67000*DCB1 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='MEKP';Gstr{i,   2}='NO3';
fMEKP(i)=fMEKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.6700;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.3300;fDCB1(i)=fDCB1(i)+  0.6700;

% 367, <R345>
i=i+1;
Rnames{ 367} = 'KETP + NO3 = HO2 + NO2 + DCB1 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='KETP';Gstr{i,   2}='NO3';
fKETP(i)=fKETP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fDCB1(i)=fDCB1(i)+  1.0000;

% 368, <R346>
i=i+1;
Rnames{ 368} = 'MACP + NO3 = HCHO +  0.53800*ACO3 + CO + NO2 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='MACP';Gstr{i,   2}='NO3';
fMACP(i)=fMACP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHCHO(i)=fHCHO(i)+  1.0000;fACO3(i)=fACO3(i)+  0.5380;fCO(i)=fCO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 369, <R347>
i=i+1;
Rnames{ 369} = 'MCP + NO3 = NO2 + HO2 + HCHO + HKET ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='MCP';Gstr{i,   2}='NO3';
fMCP(i)=fMCP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fHKET(i)=fHKET(i)+  1.0000;

% 370, <R348>
i=i+1;
Rnames{ 370} = 'MVKP + NO3 = 0.30000*HO2 +  0.70000*ACO3 +  0.70000*XO2 + NO2 +  0.30000*HCHO +  0.70000*ALD +  0.30000*MGLY ';
k(:,i) = (  2.5000E-12 ); 
Gstr{i,   1}='MVKP';Gstr{i,   2}='NO3';
fMVKP(i)=fMVKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  0.3000;fACO3(i)=fACO3(i)+  0.7000;fXO2(i)=fXO2(i)+  0.7000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.3000;fALD(i)=fALD(i)+  0.7000;fMGLY(i)=fMGLY(i)+  0.3000;

% 371, <R349>
i=i+1;
Rnames{ 371} = 'UALP + NO3 = HO2 + NO2 +  0.61000*CO +  0.03000*HCHO +  0.27000*ALD +  0.70000*KET +  0.18000*GLY +  0.21000*MGLY ';
k(:,i) = (  2.5000E-12 ); 
Gstr{i,   1}='UALP';Gstr{i,   2}='NO3';
fUALP(i)=fUALP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fCO(i)=fCO(i)+  0.6100;fHCHO(i)=fHCHO(i)+  0.0300;fALD(i)=fALD(i)+  0.2700;fKET(i)=fKET(i)+  0.7000;fGLY(i)=fGLY(i)+  0.1800;fMGLY(i)=fMGLY(i)+  0.2100;

% 372, <R350>
i=i+1;
Rnames{ 372} = 'BALP + NO3 = BAL1 + NO2 + CO2 ';
k(:,i) = (  2.5000E-12 ); 
Gstr{i,   1}='BALP';Gstr{i,   2}='NO3';
fBALP(i)=fBALP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fBAL1(i)=fBAL1(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 373, <R351>
i=i+1;
Rnames{ 373} = 'BAL1 + NO3 = BAL2 + NO2 ';
k(:,i) = (  2.5000E-12 ); 
Gstr{i,   1}='BAL1';Gstr{i,   2}='NO3';
fBAL1(i)=fBAL1(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fBAL2(i)=fBAL2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 374, <R352>
i=i+1;
Rnames{ 374} = 'ADDC + NO3 = HO2 + NO2 +  0.32000*HKET +  0.68000*GLY +  0.68000*OP2 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='ADDC';Gstr{i,   2}='NO3';
fADDC(i)=fADDC(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHKET(i)=fHKET(i)+  0.3200;fGLY(i)=fGLY(i)+  0.6800;fOP2(i)=fOP2(i)+  0.6800;

% 375, <R353>
i=i+1;
Rnames{ 375} = 'MCTP + NO3 = NO2 + MCTO ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='MCTP';Gstr{i,   2}='NO3';
fMCTP(i)=fMCTP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fMCTO(i)=fMCTO(i)+  1.0000;

% 376, <R354>
i=i+1;
Rnames{ 376} = 'ORAP + NO3 = NO2 + GLY + HO2 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='ORAP';Gstr{i,   2}='NO3';
fORAP(i)=fORAP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fGLY(i)=fGLY(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 377, <R355>
i=i+1;
Rnames{ 377} = 'OLNN + NO3 = HO2 + NO2 + ONIT ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='OLNN';Gstr{i,   2}='NO3';
fOLNN(i)=fOLNN(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fONIT(i)=fONIT(i)+  1.0000;

% 378, <R356>
i=i+1;
Rnames{ 378} = 'OLND + NO3 = 2.00000*NO2 +  0.28700*HCHO +  1.24000*ALD +  0.46400*KET ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='OLND';Gstr{i,   2}='NO3';
fOLND(i)=fOLND(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  2.0000;fHCHO(i)=fHCHO(i)+  0.2870;fALD(i)=fALD(i)+  1.2400;fKET(i)=fKET(i)+  0.4640;

% 379, <R357>
i=i+1;
Rnames{ 379} = 'ADCN + NO3 = 2.00000*NO2 + GLY + OP2 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='ADCN';Gstr{i,   2}='NO3';
fADCN(i)=fADCN(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  2.0000;fGLY(i)=fGLY(i)+  1.0000;fOP2(i)=fOP2(i)+  1.0000;

% 380, <R358>
i=i+1;
Rnames{ 380} = 'OLNN + OLNN = HO2 +  2.00000*ONIT ';
k(:,i) = (  7.0000E-14.*exp(  1.0000E+03./T) ); 
Gstr{i,   1}='OLNN';Gstr{i,   2}='OLNN';
fOLNN(i)=fOLNN(i)-1.0;fOLNN(i)=fOLNN(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fONIT(i)=fONIT(i)+  2.0000;

% 381, <R359>
i=i+1;
Rnames{ 381} = 'OLNN + OLND = 0.50000*HO2 +  0.50000*NO2 +  0.20200*HCHO +  0.64000*ALD +  0.14900*KET +  1.50000*ONIT ';
k(:,i) = (  4.2500E-14.*exp(  1.0000E+03./T) ); 
Gstr{i,   1}='OLNN';Gstr{i,   2}='OLND';
fOLNN(i)=fOLNN(i)-1.0;fOLND(i)=fOLND(i)-1.0;
fHO2(i)=fHO2(i)+  0.5000;fNO2(i)=fNO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.2020;fALD(i)=fALD(i)+  0.6400;fKET(i)=fKET(i)+  0.1490;fONIT(i)=fONIT(i)+  1.5000;

% 382, <R360>
i=i+1;
Rnames{ 382} = 'OLND + OLND = NO2 +  0.50400*HCHO +  1.21000*ALD +  0.28500*KET + ONIT ';
k(:,i) = (  2.9600E-14.*exp(  1.0000E+03./T) ); 
Gstr{i,   1}='OLND';Gstr{i,   2}='OLND';
fOLND(i)=fOLND(i)-1.0;fOLND(i)=fOLND(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.5040;fALD(i)=fALD(i)+  1.2100;fKET(i)=fKET(i)+  0.2850;fONIT(i)=fONIT(i)+  1.0000;

% 383, <R361>
i=i+1;
Rnames{ 383} = 'XO2 + NO3 = NO2 ';
k(:,i) = (  1.2000E-12 ); 
Gstr{i,   1}='XO2';Gstr{i,   2}='NO3';
fXO2(i)=fXO2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;

% 384, <R362>
i=i+1;
Rnames{ 384} = 'XO2 + RCO3 = ETHP + CO2 ';
k(:,i) = (  2.5000E-12.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='XO2';Gstr{i,   2}='RCO3';
fXO2(i)=fXO2(i)-1.0;fRCO3(i)=fRCO3(i)-1.0;
fETHP(i)=fETHP(i)+  1.0000;fCO2(i)=fCO2(i)+  1.0000;

% 385, <R363>
i=i+1;
Rnames{ 385} = 'XO2 + XO2 =';
k(:,i) = (  7.1300E-17.*exp(  2.9500E+03./T) ); 
Gstr{i,   1}='XO2';Gstr{i,   2}='XO2';
fXO2(i)=fXO2(i)-1.0;fXO2(i)=fXO2(i)-1.0;


% 386, <TRP41>
i=i+1;
Rnames{ 386} = 'APIP2 + APIP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*PINAL +  0.48000*HO +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APIP2';Gstr{i,   2}='APIP1';
fAPIP2(i)=fAPIP2(i)-1.0;fAPIP1(i)=fAPIP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fPINAL(i)=fPINAL(i)+  0.4800;fHO(i)=fHO(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 387, <TRP42>
i=i+1;
Rnames{ 387} = 'APIP2 + LIMP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*LIMAL +  0.48000*HO +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APIP2';Gstr{i,   2}='LIMP1';
fAPIP2(i)=fAPIP2(i)-1.0;fLIMP1(i)=fLIMP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fLIMAL(i)=fLIMAL(i)+  0.4800;fHO(i)=fHO(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 388, <TRP43>
i=i+1;
Rnames{ 388} = 'APIP2 + ISOP = 0.96000*VHOM +  0.48000*ROH +  0.48000*HCHO +  0.48000*MVK +  0.48000*HO +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APIP2';Gstr{i,   2}='ISOP';
fAPIP2(i)=fAPIP2(i)-1.0;fISOP(i)=fISOP(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fHCHO(i)=fHCHO(i)+  0.4800;fMVK(i)=fMVK(i)+  0.4800;fHO(i)=fHO(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 389, <TRP44>
i=i+1;
Rnames{ 389} = 'LIMP2 + APIP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*PINAL +  0.48000*HO +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMP2';Gstr{i,   2}='APIP1';
fLIMP2(i)=fLIMP2(i)-1.0;fAPIP1(i)=fAPIP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fPINAL(i)=fPINAL(i)+  0.4800;fHO(i)=fHO(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 390, <TRP45>
i=i+1;
Rnames{ 390} = 'LIMP2 + LIMP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*LIMAL +  0.48000*HO +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMP2';Gstr{i,   2}='LIMP1';
fLIMP2(i)=fLIMP2(i)-1.0;fLIMP1(i)=fLIMP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fLIMAL(i)=fLIMAL(i)+  0.4800;fHO(i)=fHO(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 391, <TRP46>
i=i+1;
Rnames{ 391} = 'LIMP2 + ISOP = 0.96000*VHOM +  0.48000*ROH +  0.48000*HCHO +  0.48000*MVK +  0.48000*HO +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMP2';Gstr{i,   2}='ISOP';
fLIMP2(i)=fLIMP2(i)-1.0;fISOP(i)=fISOP(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fHCHO(i)=fHCHO(i)+  0.4800;fMVK(i)=fMVK(i)+  0.4800;fHO(i)=fHO(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 392, <TRP47>
i=i+1;
Rnames{ 392} = 'APINP2 + APIP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*PINAL +  0.48000*NO2 +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APINP2';Gstr{i,   2}='APIP1';
fAPINP2(i)=fAPINP2(i)-1.0;fAPIP1(i)=fAPIP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fPINAL(i)=fPINAL(i)+  0.4800;fNO2(i)=fNO2(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 393, <TRP48>
i=i+1;
Rnames{ 393} = 'APINP2 + LIMP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*LIMAL +  0.48000*NO2 +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APINP2';Gstr{i,   2}='LIMP1';
fAPINP2(i)=fAPINP2(i)-1.0;fLIMP1(i)=fLIMP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fLIMAL(i)=fLIMAL(i)+  0.4800;fNO2(i)=fNO2(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 394, <TRP49>
i=i+1;
Rnames{ 394} = 'APINP2 + ISOP = 0.96000*VHOM +  0.48000*ROH +  0.48000*HCHO +  0.48000*MVK +  0.48000*NO2 +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='APINP2';Gstr{i,   2}='ISOP';
fAPINP2(i)=fAPINP2(i)-1.0;fISOP(i)=fISOP(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fHCHO(i)=fHCHO(i)+  0.4800;fMVK(i)=fMVK(i)+  0.4800;fNO2(i)=fNO2(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 395, <TRP50>
i=i+1;
Rnames{ 395} = 'LIMNP2 + APIP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*PINAL +  0.48000*NO2 +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMNP2';Gstr{i,   2}='APIP1';
fLIMNP2(i)=fLIMNP2(i)-1.0;fAPIP1(i)=fAPIP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fPINAL(i)=fPINAL(i)+  0.4800;fNO2(i)=fNO2(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 396, <TRP51>
i=i+1;
Rnames{ 396} = 'LIMNP2 + LIMP1 = 0.96000*VHOM +  0.48000*ROH +  0.48000*LIMAL +  0.48000*NO2 +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMNP2';Gstr{i,   2}='LIMP1';
fLIMNP2(i)=fLIMNP2(i)-1.0;fLIMP1(i)=fLIMP1(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fLIMAL(i)=fLIMAL(i)+  0.4800;fNO2(i)=fNO2(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 397, <TRP52>
i=i+1;
Rnames{ 397} = 'LIMNP2 + ISOP = 0.96000*VHOM +  0.48000*ROH +  0.48000*HCHO +  0.48000*MVK +  0.48000*NO2 +  0.48000*HO2 +  0.04000*VELHOM ';
k(:,i) = (  1.0000E-10 ); 
Gstr{i,   1}='LIMNP2';Gstr{i,   2}='ISOP';
fLIMNP2(i)=fLIMNP2(i)-1.0;fISOP(i)=fISOP(i)-1.0;
fVHOM(i)=fVHOM(i)+  0.9600;fROH(i)=fROH(i)+  0.4800;fHCHO(i)=fHCHO(i)+  0.4800;fMVK(i)=fMVK(i)+  0.4800;fNO2(i)=fNO2(i)+  0.4800;fHO2(i)=fHO2(i)+  0.4800;fVELHOM(i)=fVELHOM(i)+  0.0400;

% 398, <RAM17>
i=i+1;
Rnames{ 398} = 'IEPOX + HO = HO ';
k(:,i) = (  5.7800E-11.*exp( -4.0000E+02./T) ); 
Gstr{i,   1}='IEPOX';Gstr{i,   2}='HO';
fIEPOX(i)=fIEPOX(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO(i)=fHO(i)+  1.0000;

% 399, <R001c>
i=i+1;
Rnames{ 399} = 'VROCIOXY + HO = 0.85200*ETHP +  0.14900*ASOATJ ';
k(:,i) = (  6.8900E-12 ); 
Gstr{i,   1}='VROCIOXY';Gstr{i,   2}='HO';
fVROCIOXY(i)=fVROCIOXY(i)-1.0;fHO(i)=fHO(i)-1.0;
fETHP(i)=fETHP(i)+  0.8520;fASOATJ(i)=fASOATJ(i)+  0.1490;

% 400, <R002c>
i=i+1;
Rnames{ 400} = 'SLOWROC + HO = ETHP +  0.00101*ASOATJ ';
k(:,i) = (  6.5500E-14 ); 
Gstr{i,   1}='SLOWROC';Gstr{i,   2}='HO';
fSLOWROC(i)=fSLOWROC(i)-1.0;fHO(i)=fHO(i)-1.0;
fETHP(i)=fETHP(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.0010;

% 401, <T17>
i=i+1;
Rnames{ 401} = 'ACRO + HO = 0.57000*MACP +  0.43000*MCP ';
k(:,i) = (  8.0000E-12.*exp(  3.8000E+02./T) ); 
Gstr{i,   1}='ACRO';Gstr{i,   2}='HO';
fACRO(i)=fACRO(i)-1.0;fHO(i)=fHO(i)-1.0;
fMACP(i)=fMACP(i)+  0.5700;fMCP(i)=fMCP(i)+  0.4300;

% 402, <T18>
i=i+1;
Rnames{ 402} = 'ACRO + O3 = 0.84000*CO +  0.56000*HO2 +  0.28000*HO +  0.72000*HCHO +  0.62000*GLY +  0.20000*CO2 ';
k(:,i) = (  2.9000E-19 ); 
Gstr{i,   1}='ACRO';Gstr{i,   2}='O3';
fACRO(i)=fACRO(i)-1.0;fO3(i)=fO3(i)-1.0;
fCO(i)=fCO(i)+  0.8400;fHO2(i)=fHO2(i)+  0.5600;fHO(i)=fHO(i)+  0.2800;fHCHO(i)=fHCHO(i)+  0.7200;fGLY(i)=fGLY(i)+  0.6200;fCO2(i)=fCO2(i)+  0.2000;

% 403, <T19>
i=i+1;
Rnames{ 403} = 'ACRO + NO3 = 0.68000*HCHO +  0.32000*MACP +  0.68000*XO2 +  0.68000*MGLY +  0.32000*HNO3 +  0.68000*NO2 ';
k(:,i) = (  3.4000E-15 ); 
Gstr{i,   1}='ACRO';Gstr{i,   2}='NO3';
fACRO(i)=fACRO(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fMACP(i)=fMACP(i)+  0.3200;fXO2(i)=fXO2(i)+  0.6800;fMGLY(i)=fMGLY(i)+  0.6800;fHNO3(i)=fHNO3(i)+  0.3200;fNO2(i)=fNO2(i)+  0.6800;

% 404, <T20>
i=i+1;
Rnames{ 404} = 'ACRO = CO +  0.47700*HO2 +  0.25000*ETE +  0.35400*ACO3 +  0.20400*HO +  0.15000*HCHO +  0.02700*MO2 ';
k(:,i) = (JACRO_09 ); 
Gstr{i,   1}='ACRO';
fACRO(i)=fACRO(i)-1.0;
fCO(i)=fCO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.4770;fETE(i)=fETE(i)+  0.2500;fACO3(i)=fACO3(i)+  0.3540;fHO(i)=fHO(i)+  0.2040;fHCHO(i)=fHCHO(i)+  0.1500;fMO2(i)=fMO2(i)+  0.0270;

% 405, <T10>
i=i+1;
Rnames{ 405} = 'BDE13 + HO = 0.66700*BDE13P +  0.33300*UALD +  0.33300*HO2 ';
k(:,i) = (  1.4800E-11.*exp(  4.4800E+02./T) ); 
Gstr{i,   1}='BDE13';Gstr{i,   2}='HO';
fBDE13(i)=fBDE13(i)-1.0;fHO(i)=fHO(i)-1.0;
fBDE13P(i)=fBDE13P(i)+  0.6670;fUALD(i)=fUALD(i)+  0.3330;fHO2(i)=fHO2(i)+  0.3330;

% 406, <T10a>
i=i+1;
Rnames{ 406} = 'BDE13P + NO = 0.96800*HO2 +  0.96800*NO2 +  0.89500*ACRO +  0.89500*HCHO +  0.07200*FURAN +  0.03200*ONIT ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='BDE13P';Gstr{i,   2}='NO';
fBDE13P(i)=fBDE13P(i)-1.0;fNO(i)=fNO(i)-1.0;
fHO2(i)=fHO2(i)+  0.9680;fNO2(i)=fNO2(i)+  0.9680;fACRO(i)=fACRO(i)+  0.8950;fHCHO(i)=fHCHO(i)+  0.8950;fFURAN(i)=fFURAN(i)+  0.0720;fONIT(i)=fONIT(i)+  0.0320;

% 407, <T10b>
i=i+1;
Rnames{ 407} = 'BDE13P + NO3 = HO2 + NO2 +  0.92500*ACRO +  0.92500*HCHO +  0.07500*FURAN ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='BDE13P';Gstr{i,   2}='NO3';
fBDE13P(i)=fBDE13P(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fACRO(i)=fACRO(i)+  0.9250;fHCHO(i)=fHCHO(i)+  0.9250;fFURAN(i)=fFURAN(i)+  0.0750;

% 408, <T10c>
i=i+1;
Rnames{ 408} = 'BDE13P + HO2 = OP2 ';
k(:,i) = (  1.9300E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='BDE13P';Gstr{i,   2}='HO2';
fBDE13P(i)=fBDE13P(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 409, <T10d>
i=i+1;
Rnames{ 409} = 'BDE13P + MO2 = 0.32000*MOH +  1.14300*HCHO +  0.87000*HO2 +  0.46300*ACRO +  0.25000*OLT +  0.23100*MVK +  0.03700*FURAN +  0.01900*UALD ';
k(:,i) = (  2.3900E-12 ); 
Gstr{i,   1}='BDE13P';Gstr{i,   2}='MO2';
fBDE13P(i)=fBDE13P(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fMOH(i)=fMOH(i)+  0.3200;fHCHO(i)=fHCHO(i)+  1.1430;fHO2(i)=fHO2(i)+  0.8700;fACRO(i)=fACRO(i)+  0.4630;fOLT(i)=fOLT(i)+  0.2500;fMVK(i)=fMVK(i)+  0.2310;fFURAN(i)=fFURAN(i)+  0.0370;fUALD(i)=fUALD(i)+  0.0190;

% 410, <T10e>
i=i+1;
Rnames{ 410} = 'BDE13P + ACO3 = 0.70000*MO2 +  0.30000*ORA2 +  0.80000*HO2 +  0.74000*ACRO +  0.74000*HCHO +  0.18500*MVK +  0.06000*FURAN +  0.01500*UALD +  0.70000*CO2 ';
k(:,i) = (  1.3700E-11 ); 
Gstr{i,   1}='BDE13P';Gstr{i,   2}='ACO3';
fBDE13P(i)=fBDE13P(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fORA2(i)=fORA2(i)+  0.3000;fHO2(i)=fHO2(i)+  0.8000;fACRO(i)=fACRO(i)+  0.7400;fHCHO(i)=fHCHO(i)+  0.7400;fMVK(i)=fMVK(i)+  0.1850;fFURAN(i)=fFURAN(i)+  0.0600;fUALD(i)=fUALD(i)+  0.0150;fCO2(i)=fCO2(i)+  0.7000;

% 411, <T11>
i=i+1;
Rnames{ 411} = 'BDE13 + O3 = 0.62000*ACRO +  0.63000*CO +  0.42000*HO2 +  0.08000*HO +  0.83000*HCHO +  0.17000*ETE ';
k(:,i) = (  1.3400E-14.*exp( -2.2830E+03./T) ); 
Gstr{i,   1}='BDE13';Gstr{i,   2}='O3';
fBDE13(i)=fBDE13(i)-1.0;fO3(i)=fO3(i)-1.0;
fACRO(i)=fACRO(i)+  0.6200;fCO(i)=fCO(i)+  0.6300;fHO2(i)=fHO2(i)+  0.4200;fHO(i)=fHO(i)+  0.0800;fHCHO(i)=fHCHO(i)+  0.8300;fETE(i)=fETE(i)+  0.1700;

% 412, <T12>
i=i+1;
Rnames{ 412} = 'BDE13 + NO3 = 0.90000*OLNN +  0.10000*OLND +  0.90000*ACRO ';
k(:,i) = (  1.0000E-13 ); 
Gstr{i,   1}='BDE13';Gstr{i,   2}='NO3';
fBDE13(i)=fBDE13(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fOLNN(i)=fOLNN(i)+  0.9000;fOLND(i)=fOLND(i)+  0.1000;fACRO(i)=fACRO(i)+  0.9000;

% 413, <R003c>
i=i+1;
Rnames{ 413} = 'FURAN + HO = 0.49000*DCB1 +  0.49000*HO2 +  0.51000*FURANO2 ';
k(:,i) = (  5.0100E-11 ); 
Gstr{i,   1}='FURAN';Gstr{i,   2}='HO';
fFURAN(i)=fFURAN(i)-1.0;fHO(i)=fHO(i)-1.0;
fDCB1(i)=fDCB1(i)+  0.4900;fHO2(i)=fHO2(i)+  0.4900;fFURANO2(i)=fFURANO2(i)+  0.5100;

% 414, <R004c>
i=i+1;
Rnames{ 414} = 'FURANO2 + NO = 0.08000*ONIT +  0.92000*NO2 +  0.92000*FURANONE +  0.75000*HO2 +  0.17000*MO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='FURANO2';Gstr{i,   2}='NO';
fFURANO2(i)=fFURANO2(i)-1.0;fNO(i)=fNO(i)-1.0;
fONIT(i)=fONIT(i)+  0.0800;fNO2(i)=fNO2(i)+  0.9200;fFURANONE(i)=fFURANONE(i)+  0.9200;fHO2(i)=fHO2(i)+  0.7500;fMO2(i)=fMO2(i)+  0.1700;

% 415, <R005c>
i=i+1;
Rnames{ 415} = 'FURANO2 + HO2 = 0.60000*OP2 +  0.40000*FURANONE +  0.40000*HO +  0.32000*HO2 +  0.08000*MO2 ';
k(:,i) = (  3.7500E-13.*exp(  9.8000E+02./T) ); 
Gstr{i,   1}='FURANO2';Gstr{i,   2}='HO2';
fFURANO2(i)=fFURANO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  0.6000;fFURANONE(i)=fFURANONE(i)+  0.4000;fHO(i)=fHO(i)+  0.4000;fHO2(i)=fHO2(i)+  0.3200;fMO2(i)=fMO2(i)+  0.0800;

% 416, <R006c>
i=i+1;
Rnames{ 416} = 'FURANONE + HO = 0.65000*KET +  0.31000*GLY +  0.66000*HO2 +  0.34000*MO2 +  0.43000*CO +  0.04000*ASOATJ ';
k(:,i) = (  4.4000E-11 ); 
Gstr{i,   1}='FURANONE';Gstr{i,   2}='HO';
fFURANONE(i)=fFURANONE(i)-1.0;fHO(i)=fHO(i)-1.0;
fKET(i)=fKET(i)+  0.6500;fGLY(i)=fGLY(i)+  0.3100;fHO2(i)=fHO2(i)+  0.6600;fMO2(i)=fMO2(i)+  0.3400;fCO(i)=fCO(i)+  0.4300;fASOATJ(i)=fASOATJ(i)+  0.0400;

% 417, <R007c>
i=i+1;
Rnames{ 417} = 'FURAN + O3 = 0.02000*HO + ALD ';
k(:,i) = (  3.4300E-17 ); 
Gstr{i,   1}='FURAN';Gstr{i,   2}='O3';
fFURAN(i)=fFURAN(i)-1.0;fO3(i)=fO3(i)-1.0;
fHO(i)=fHO(i)+  0.0200;fALD(i)=fALD(i)+  1.0000;

% 418, <R008c>
i=i+1;
Rnames{ 418} = 'FURAN + NO3 = NO2 +  0.80000*DCB1 +  0.20000*DCB3 ';
k(:,i) = (  8.9900E-12 ); 
Gstr{i,   1}='FURAN';Gstr{i,   2}='NO3';
fFURAN(i)=fFURAN(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fDCB1(i)=fDCB1(i)+  0.8000;fDCB3(i)=fDCB3(i)+  0.2000;

% 419, <R010c>
i=i+1;
Rnames{ 419} = 'PROG + HO = 0.61300*HKET +  0.38700*ALD + HO2 ';
k(:,i) = (  1.2000E-11 ); 
Gstr{i,   1}='PROG';Gstr{i,   2}='HO';
fPROG(i)=fPROG(i)-1.0;fHO(i)=fHO(i)-1.0;
fHKET(i)=fHKET(i)+  0.6130;fALD(i)=fALD(i)+  0.3870;fHO2(i)=fHO2(i)+  1.0000;

% 420, <R011c>
i=i+1;
Rnames{ 420} = 'SESQ + NO3 = SESQNRO2 ';
k(:,i) = (  1.9000E-11 ); 
Gstr{i,   1}='SESQ';Gstr{i,   2}='NO3';
fSESQ(i)=fSESQ(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fSESQNRO2(i)=fSESQNRO2(i)+  1.0000;

% 421, <R012c>
i=i+1;
Rnames{ 421} = 'SESQNRO2 + HO2 = VROCP0OXY4 ';
k(:,i) = (  2.8400E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='SESQNRO2';Gstr{i,   2}='HO2';
fSESQNRO2(i)=fSESQNRO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP0OXY4(i)=fVROCP0OXY4(i)+  1.0000;

% 422, <R013c>
i=i+1;
Rnames{ 422} = 'SESQNRO2 + NO = VROCP3OXY2 +  2.00000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='SESQNRO2';Gstr{i,   2}='NO';
fSESQNRO2(i)=fSESQNRO2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;fNO2(i)=fNO2(i)+  2.0000;

% 423, <R014c>
i=i+1;
Rnames{ 423} = 'SESQNRO2 + NO3 = VROCP3OXY2 +  2.00000*NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='SESQNRO2';Gstr{i,   2}='NO3';
fSESQNRO2(i)=fSESQNRO2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;fNO2(i)=fNO2(i)+  2.0000;

% 424, <R015c>
i=i+1;
Rnames{ 424} = 'SESQ + O3 = 0.98200*VROCP3OXY2 +  0.01800*VROCN2OXY2 ';
k(:,i) = (  1.2000E-14 ); 
Gstr{i,   1}='SESQ';Gstr{i,   2}='O3';
fSESQ(i)=fSESQ(i)-1.0;fO3(i)=fO3(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.9820;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0180;

% 425, <R016c>
i=i+1;
Rnames{ 425} = 'SESQ + HO = SESQRO2 ';
k(:,i) = (  1.9700E-10 ); 
Gstr{i,   1}='SESQ';Gstr{i,   2}='HO';
fSESQ(i)=fSESQ(i)-1.0;fHO(i)=fHO(i)-1.0;
fSESQRO2(i)=fSESQRO2(i)+  1.0000;

% 426, <R017c>
i=i+1;
Rnames{ 426} = 'SESQRO2 + HO2 = VROCP0OXY2 ';
k(:,i) = (  2.8400E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='SESQRO2';Gstr{i,   2}='HO2';
fSESQRO2(i)=fSESQRO2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP0OXY2(i)=fVROCP0OXY2(i)+  1.0000;

% 427, <R019c>
i=i+1;
Rnames{ 427} = 'SESQRO2 + NO3 = VROCP3OXY2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='SESQRO2';Gstr{i,   2}='NO3';
fSESQRO2(i)=fSESQRO2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;

% 428, <R020c>
i=i+1;
Rnames{ 428} = 'SESQRO2 + NO = 0.24700*VROCP1OXY3 +  0.75300*VROCP3OXY2 +  0.75300*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='SESQRO2';Gstr{i,   2}='NO';
fSESQRO2(i)=fSESQRO2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.2470;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.7530;fNO2(i)=fNO2(i)+  0.7530;

% 429, <HET_GLY>
i=i+1;
Rnames{ 429} = 'GLY = AGLYOLIGJ ';
k(:,i) = (K_HETERO_GLY ); 
Gstr{i,   1}='GLY';
fGLY(i)=fGLY(i)-1.0;
fAGLYOLIGJ(i)=fAGLYOLIGJ(i)+  1.0000;

% 430, <HET_MGLY>
i=i+1;
Rnames{ 430} = 'MGLY = AGLYOLIGJ ';
k(:,i) = (K_HETERO_MGLY ); 
Gstr{i,   1}='MGLY';
fMGLY(i)=fMGLY(i)-1.0;
fAGLYOLIGJ(i)=fAGLYOLIGJ(i)+  1.0000;

% 431, <HET_NO2>
i=i+1;
Rnames{ 431} = 'NO2 = 0.50000*HONO +  0.50000*HNO3 ';
k(:,i) = (K_HETERO_NO2 ); 
Gstr{i,   1}='NO2';
fNO2(i)=fNO2(i)-1.0;
fHONO(i)=fHONO(i)+  0.5000;fHNO3(i)=fHNO3(i)+  0.5000;

% 432, <HET_HO2>
i=i+1;
Rnames{ 432} = 'HO2 =';
k(:,i) = (K_HETERO_HO2 ); 
Gstr{i,   1}='HO2';
fHO2(i)=fHO2(i)-1.0;


% 433, <HET_NO3>
i=i+1;
Rnames{ 433} = 'NO3 = HNO3 ';
k(:,i) = (K_HETERO_NO3 ); 
Gstr{i,   1}='NO3';
fNO3(i)=fNO3(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;

% 434, <HET_IEPOX>
i=i+1;
Rnames{ 434} = 'IEPOX = IEPOXP ';
k(:,i) = (K_HETERO_IEPOX ); 
Gstr{i,   1}='IEPOX';
fIEPOX(i)=fIEPOX(i)-1.0;
fIEPOXP(i)=fIEPOXP(i)+  1.0000;

% 435, <HET_ISO3TET>
i=i+1;
Rnames{ 435} = 'IEPOXP = AISO3NOSJ ';
k(:,i) = (K_HETERO_ISO3NOSJ ); 
Gstr{i,   1}='IEPOXP';
fIEPOXP(i)=fIEPOXP(i)-1.0;
fAISO3NOSJ(i)=fAISO3NOSJ(i)+  1.0000;

% 436, <HET_IEPOXOS>
i=i+1;
Rnames{ 436} = 'IEPOXP + ASO4J = AISO3OSJ ';
k(:,i) = (K_HETERO_ISO3OSJ ); 
Gstr{i,   1}='IEPOXP';Gstr{i,   2}='ASO4J';
fIEPOXP(i)=fIEPOXP(i)-1.0;fASO4J(i)=fASO4J(i)-1.0;
fAISO3OSJ(i)=fAISO3OSJ(i)+  1.0000;

% 437, <HET_IPX>
i=i+1;
Rnames{ 437} = 'IPX = AISO4J ';
k(:,i) = (  2.0000E+00.*K_HETERO_IEPOX ); 
Gstr{i,   1}='IPX';
fIPX(i)=fIPX(i)-1.0;
fAISO4J(i)=fAISO4J(i)+  1.0000;

% 438, <HET_INALD>
i=i+1;
Rnames{ 438} = 'INALD = AISO5J + HNO3 ';
k(:,i) = (  5.0000E-01.*K_HETERO_IEPOX ); 
Gstr{i,   1}='INALD';
fINALD(i)=fINALD(i)-1.0;
fAISO5J(i)=fAISO5J(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 439, <ROCALK1c>
i=i+1;
Rnames{ 439} = 'VROCP6ALK + HO = VROCP6ALKP ';
k(:,i) = (  1.5300E-11 ); 
Gstr{i,   1}='VROCP6ALK';Gstr{i,   2}='HO';
fVROCP6ALK(i)=fVROCP6ALK(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP6ALKP(i)=fVROCP6ALKP(i)+  1.0000;

% 440, <ROCALK2c>
i=i+1;
Rnames{ 440} = 'VROCP5ALK + HO = VROCP5ALKP ';
k(:,i) = (  1.6800E-11 ); 
Gstr{i,   1}='VROCP5ALK';Gstr{i,   2}='HO';
fVROCP5ALK(i)=fVROCP5ALK(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP5ALKP(i)=fVROCP5ALKP(i)+  1.0000;

% 441, <ROCALK3c>
i=i+1;
Rnames{ 441} = 'VROCP4ALK + HO = VROCP4ALKP ';
k(:,i) = (  2.2400E-11 ); 
Gstr{i,   1}='VROCP4ALK';Gstr{i,   2}='HO';
fVROCP4ALK(i)=fVROCP4ALK(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP4ALKP(i)=fVROCP4ALKP(i)+  1.0000;

% 442, <ROCALK4c>
i=i+1;
Rnames{ 442} = 'VROCP3ALK + HO = VROCP3ALKP ';
k(:,i) = (  2.6700E-11 ); 
Gstr{i,   1}='VROCP3ALK';Gstr{i,   2}='HO';
fVROCP3ALK(i)=fVROCP3ALK(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP3ALKP(i)=fVROCP3ALKP(i)+  1.0000;

% 443, <ROCALK5c>
i=i+1;
Rnames{ 443} = 'VROCP2ALK + HO = VROCP2ALKP ';
k(:,i) = (  3.0900E-11 ); 
Gstr{i,   1}='VROCP2ALK';Gstr{i,   2}='HO';
fVROCP2ALK(i)=fVROCP2ALK(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP2ALKP(i)=fVROCP2ALKP(i)+  1.0000;

% 444, <ROCALK6c>
i=i+1;
Rnames{ 444} = 'VROCP1ALK + HO = VROCP1ALKP ';
k(:,i) = (  3.3800E-11 ); 
Gstr{i,   1}='VROCP1ALK';Gstr{i,   2}='HO';
fVROCP1ALK(i)=fVROCP1ALK(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP1ALKP(i)=fVROCP1ALKP(i)+  1.0000;

% 445, <HC1001>
i=i+1;
Rnames{ 445} = 'HC10 + HO = HC10P ';
k(:,i) = (  1.1000E-11 ); 
Gstr{i,   1}='HC10';Gstr{i,   2}='HO';
fHC10(i)=fHC10(i)-1.0;fHO(i)=fHO(i)-1.0;
fHC10P(i)=fHC10P(i)+  1.0000;

% 446, <ROCALK7c>
i=i+1;
Rnames{ 446} = 'VROCP6ALKP + NO = 0.72000*VROCP6ALKP2 +  0.28000*VROCP4OXY2 +  0.72000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP6ALKP';Gstr{i,   2}='NO';
fVROCP6ALKP(i)=fVROCP6ALKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP6ALKP2(i)=fVROCP6ALKP2(i)+  0.7200;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.2800;fNO2(i)=fNO2(i)+  0.7200;

% 447, <ROCALK8c>
i=i+1;
Rnames{ 447} = 'VROCP5ALKP + NO = 0.72000*VROCP5ALKP2 +  0.28000*VROCP3OXY2 +  0.72000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP5ALKP';Gstr{i,   2}='NO';
fVROCP5ALKP(i)=fVROCP5ALKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP5ALKP2(i)=fVROCP5ALKP2(i)+  0.7200;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.2800;fNO2(i)=fNO2(i)+  0.7200;

% 448, <ROCALK9c>
i=i+1;
Rnames{ 448} = 'VROCP4ALKP + NO = 0.72000*VROCP4ALKP2 +  0.28000*VROCP2OXY2 +  0.72000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP4ALKP';Gstr{i,   2}='NO';
fVROCP4ALKP(i)=fVROCP4ALKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP4ALKP2(i)=fVROCP4ALKP2(i)+  0.7200;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.2800;fNO2(i)=fNO2(i)+  0.7200;

% 449, <ROCALK10c>
i=i+1;
Rnames{ 449} = 'VROCP3ALKP + NO = 0.72000*VROCP3ALKP2 +  0.28000*VROCP1OXY1 +  0.72000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP3ALKP';Gstr{i,   2}='NO';
fVROCP3ALKP(i)=fVROCP3ALKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP3ALKP2(i)=fVROCP3ALKP2(i)+  0.7200;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.2800;fNO2(i)=fNO2(i)+  0.7200;

% 450, <ROCALK11c>
i=i+1;
Rnames{ 450} = 'VROCP2ALKP + NO = 0.72000*VROCP2ALKP2 +  0.28000*VROCP0OXY2 +  0.72000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP2ALKP';Gstr{i,   2}='NO';
fVROCP2ALKP(i)=fVROCP2ALKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP2ALKP2(i)=fVROCP2ALKP2(i)+  0.7200;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.2800;fNO2(i)=fNO2(i)+  0.7200;

% 451, <ROCALK12c>
i=i+1;
Rnames{ 451} = 'VROCP1ALKP + NO = 0.72000*VROCP1ALKP2 +  0.28000*VROCN1OXY1 +  0.72000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP1ALKP';Gstr{i,   2}='NO';
fVROCP1ALKP(i)=fVROCP1ALKP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP1ALKP2(i)=fVROCP1ALKP2(i)+  0.7200;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.2800;fNO2(i)=fNO2(i)+  0.7200;

% 452, <HC1002>
i=i+1;
Rnames{ 452} = 'HC10P + NO = 0.74000*HC10P2 +  0.26000*ONIT +  0.74000*NO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='HC10P';Gstr{i,   2}='NO';
fHC10P(i)=fHC10P(i)-1.0;fNO(i)=fNO(i)-1.0;
fHC10P2(i)=fHC10P2(i)+  0.7400;fONIT(i)=fONIT(i)+  0.2600;fNO2(i)=fNO2(i)+  0.7400;

% 453, <ROCALK13c>
i=i+1;
Rnames{ 453} = 'VROCP6ALKP + NO3 = VROCP6ALKP2 + NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP6ALKP';Gstr{i,   2}='NO3';
fVROCP6ALKP(i)=fVROCP6ALKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP6ALKP2(i)=fVROCP6ALKP2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 454, <ROCALK14c>
i=i+1;
Rnames{ 454} = 'VROCP5ALKP + NO3 = VROCP5ALKP2 + NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP5ALKP';Gstr{i,   2}='NO3';
fVROCP5ALKP(i)=fVROCP5ALKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP5ALKP2(i)=fVROCP5ALKP2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 455, <ROCALK15c>
i=i+1;
Rnames{ 455} = 'VROCP4ALKP + NO3 = VROCP4ALKP2 + NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP4ALKP';Gstr{i,   2}='NO3';
fVROCP4ALKP(i)=fVROCP4ALKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP4ALKP2(i)=fVROCP4ALKP2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 456, <ROCALK16c>
i=i+1;
Rnames{ 456} = 'VROCP3ALKP + NO3 = VROCP3ALKP2 + NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP3ALKP';Gstr{i,   2}='NO3';
fVROCP3ALKP(i)=fVROCP3ALKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP3ALKP2(i)=fVROCP3ALKP2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 457, <ROCALK17c>
i=i+1;
Rnames{ 457} = 'VROCP2ALKP + NO3 = VROCP2ALKP2 + NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP2ALKP';Gstr{i,   2}='NO3';
fVROCP2ALKP(i)=fVROCP2ALKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP2ALKP2(i)=fVROCP2ALKP2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 458, <ROCALK18c>
i=i+1;
Rnames{ 458} = 'VROCP1ALKP + NO3 = VROCP1ALKP2 + NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP1ALKP';Gstr{i,   2}='NO3';
fVROCP1ALKP(i)=fVROCP1ALKP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fVROCP1ALKP2(i)=fVROCP1ALKP2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 459, <HC1003>
i=i+1;
Rnames{ 459} = 'HC10P + NO3 = HC10P2 + NO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='HC10P';Gstr{i,   2}='NO3';
fHC10P(i)=fHC10P(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fHC10P2(i)=fHC10P2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 460, <ROCALK19c>
i=i+1;
Rnames{ 460} = 'VROCP6ALKP + HO2 = VROCP3OXY2 ';
k(:,i) = (  2.6800E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP6ALKP';Gstr{i,   2}='HO2';
fVROCP6ALKP(i)=fVROCP6ALKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;

% 461, <ROCALK20c>
i=i+1;
Rnames{ 461} = 'VROCP5ALKP + HO2 = VROCP2OXY2 ';
k(:,i) = (  2.7100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP5ALKP';Gstr{i,   2}='HO2';
fVROCP5ALKP(i)=fVROCP5ALKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP2OXY2(i)=fVROCP2OXY2(i)+  1.0000;

% 462, <ROCALK21c>
i=i+1;
Rnames{ 462} = 'VROCP4ALKP + HO2 = VROCP1OXY1 ';
k(:,i) = (  2.7800E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP4ALKP';Gstr{i,   2}='HO2';
fVROCP4ALKP(i)=fVROCP4ALKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP1OXY1(i)=fVROCP1OXY1(i)+  1.0000;

% 463, <ROCALK22c>
i=i+1;
Rnames{ 463} = 'VROCP3ALKP + HO2 = VROCP0OXY2 ';
k(:,i) = (  2.8000E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP3ALKP';Gstr{i,   2}='HO2';
fVROCP3ALKP(i)=fVROCP3ALKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP0OXY2(i)=fVROCP0OXY2(i)+  1.0000;

% 464, <ROCALK23c>
i=i+1;
Rnames{ 464} = 'VROCP2ALKP + HO2 = VROCN1OXY1 ';
k(:,i) = (  2.8100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP2ALKP';Gstr{i,   2}='HO2';
fVROCP2ALKP(i)=fVROCP2ALKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCN1OXY1(i)=fVROCN1OXY1(i)+  1.0000;

% 465, <ROCALK24c>
i=i+1;
Rnames{ 465} = 'VROCP1ALKP + HO2 = VROCN2OXY2 ';
k(:,i) = (  2.8100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP1ALKP';Gstr{i,   2}='HO2';
fVROCP1ALKP(i)=fVROCP1ALKP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;

% 466, <HC1004>
i=i+1;
Rnames{ 466} = 'HC10P + HO2 = OP2 ';
k(:,i) = (  2.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='HC10P';Gstr{i,   2}='HO2';
fHC10P(i)=fHC10P(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fOP2(i)=fOP2(i)+  1.0000;

% 467, <ROCALK25c>
i=i+1;
Rnames{ 467} = 'VROCP6ALKP2 = HO2 + VROCP3OXY2 ';
k(:,i) = (  1.8800E-01 ); 
Gstr{i,   1}='VROCP6ALKP2';
fVROCP6ALKP2(i)=fVROCP6ALKP2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;

% 468, <ROCALK26c>
i=i+1;
Rnames{ 468} = 'VROCP5ALKP2 = HO2 + VROCP2OXY2 ';
k(:,i) = (  1.8800E-01 ); 
Gstr{i,   1}='VROCP5ALKP2';
fVROCP5ALKP2(i)=fVROCP5ALKP2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  1.0000;

% 469, <ROCALK27c>
i=i+1;
Rnames{ 469} = 'VROCP4ALKP2 = HO2 + VROCP1OXY1 ';
k(:,i) = (  1.8800E-01 ); 
Gstr{i,   1}='VROCP4ALKP2';
fVROCP4ALKP2(i)=fVROCP4ALKP2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  1.0000;

% 470, <ROCALK28c>
i=i+1;
Rnames{ 470} = 'VROCP3ALKP2 = HO2 + VROCP0OXY2 ';
k(:,i) = (  1.8800E-01 ); 
Gstr{i,   1}='VROCP3ALKP2';
fVROCP3ALKP2(i)=fVROCP3ALKP2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  1.0000;

% 471, <ROCALK29c>
i=i+1;
Rnames{ 471} = 'VROCP2ALKP2 = HO2 + VROCN1OXY1 ';
k(:,i) = (  1.8800E-01 ); 
Gstr{i,   1}='VROCP2ALKP2';
fVROCP2ALKP2(i)=fVROCP2ALKP2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  1.0000;

% 472, <ROCALK30c>
i=i+1;
Rnames{ 472} = 'VROCP1ALKP2 = HO2 + VROCN2OXY2 ';
k(:,i) = (  1.8800E-01 ); 
Gstr{i,   1}='VROCP1ALKP2';
fVROCP1ALKP2(i)=fVROCP1ALKP2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;

% 473, <HC1005>
i=i+1;
Rnames{ 473} = 'HC10P2 = HO2 + VROCP4OXY2 ';
k(:,i) = (  1.8800E-01 ); 
Gstr{i,   1}='HC10P2';
fHC10P2(i)=fHC10P2(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  1.0000;

% 474, <ROCALK31c>
i=i+1;
Rnames{ 474} = 'VROCP6ALKP2 + NO = 0.14000*VROCP2OXY2 +  0.86000*NO2 +  0.86000*VROCP3OXY2 +  0.86000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP6ALKP2';Gstr{i,   2}='NO';
fVROCP6ALKP2(i)=fVROCP6ALKP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1400;fNO2(i)=fNO2(i)+  0.8600;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;

% 475, <ROCALK32c>
i=i+1;
Rnames{ 475} = 'VROCP5ALKP2 + NO = 0.14000*VROCP1OXY3 +  0.86000*NO2 +  0.86000*VROCP2OXY2 +  0.86000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP5ALKP2';Gstr{i,   2}='NO';
fVROCP5ALKP2(i)=fVROCP5ALKP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1400;fNO2(i)=fNO2(i)+  0.8600;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;

% 476, <ROCALK33c>
i=i+1;
Rnames{ 476} = 'VROCP4ALKP2 + NO = 0.14000*VROCP0OXY2 +  0.86000*NO2 +  0.86000*VROCP1OXY1 +  0.86000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP4ALKP2';Gstr{i,   2}='NO';
fVROCP4ALKP2(i)=fVROCP4ALKP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.1400;fNO2(i)=fNO2(i)+  0.8600;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;

% 477, <ROCALK34c>
i=i+1;
Rnames{ 477} = 'VROCP3ALKP2 + NO = 0.14000*VROCN1OXY1 +  0.86000*NO2 +  0.86000*VROCP0OXY2 +  0.86000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP3ALKP2';Gstr{i,   2}='NO';
fVROCP3ALKP2(i)=fVROCP3ALKP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.1400;fNO2(i)=fNO2(i)+  0.8600;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;

% 478, <ROCALK35c>
i=i+1;
Rnames{ 478} = 'VROCP2ALKP2 + NO = 0.14000*VROCN2OXY2 +  0.86000*NO2 +  0.86000*VROCN1OXY1 +  0.86000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP2ALKP2';Gstr{i,   2}='NO';
fVROCP2ALKP2(i)=fVROCP2ALKP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.1400;fNO2(i)=fNO2(i)+  0.8600;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;

% 479, <ROCALK36c>
i=i+1;
Rnames{ 479} = 'VROCP1ALKP2 + NO = VROCN2OXY2 +  0.86000*NO2 +  0.86000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP1ALKP2';Gstr{i,   2}='NO';
fVROCP1ALKP2(i)=fVROCP1ALKP2(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;fNO2(i)=fNO2(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;

% 480, <HC1006>
i=i+1;
Rnames{ 480} = 'HC10P2 + NO = 0.12000*ONIT +  0.88000*NO2 +  0.88000*KET +  0.88000*HO2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='HC10P2';Gstr{i,   2}='NO';
fHC10P2(i)=fHC10P2(i)-1.0;fNO(i)=fNO(i)-1.0;
fONIT(i)=fONIT(i)+  0.1200;fNO2(i)=fNO2(i)+  0.8800;fKET(i)=fKET(i)+  0.8800;fHO2(i)=fHO2(i)+  0.8800;

% 481, <ROCALK37c>
i=i+1;
Rnames{ 481} = 'VROCP6ALKP2 + NO3 = NO2 + VROCP3OXY2 + HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP6ALKP2';Gstr{i,   2}='NO3';
fVROCP6ALKP2(i)=fVROCP6ALKP2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 482, <ROCALK38c>
i=i+1;
Rnames{ 482} = 'VROCP5ALKP2 + NO3 = NO2 + VROCP2OXY2 + HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP5ALKP2';Gstr{i,   2}='NO3';
fVROCP5ALKP2(i)=fVROCP5ALKP2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 483, <ROCALK39c>
i=i+1;
Rnames{ 483} = 'VROCP4ALKP2 + NO3 = NO2 + VROCP1OXY1 + HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP4ALKP2';Gstr{i,   2}='NO3';
fVROCP4ALKP2(i)=fVROCP4ALKP2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 484, <ROCALK40c>
i=i+1;
Rnames{ 484} = 'VROCP3ALKP2 + NO3 = NO2 + VROCP0OXY2 + HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP3ALKP2';Gstr{i,   2}='NO3';
fVROCP3ALKP2(i)=fVROCP3ALKP2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 485, <ROCALK41c>
i=i+1;
Rnames{ 485} = 'VROCP2ALKP2 + NO3 = NO2 + VROCN1OXY1 + HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP2ALKP2';Gstr{i,   2}='NO3';
fVROCP2ALKP2(i)=fVROCP2ALKP2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 486, <ROCALK42c>
i=i+1;
Rnames{ 486} = 'VROCP1ALKP2 + NO3 = NO2 + VROCN2OXY2 + HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP1ALKP2';Gstr{i,   2}='NO3';
fVROCP1ALKP2(i)=fVROCP1ALKP2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 487, <HC1007>
i=i+1;
Rnames{ 487} = 'HC10P2 + NO3 = NO2 + KET + HO2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='HC10P2';Gstr{i,   2}='NO3';
fHC10P2(i)=fHC10P2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fKET(i)=fKET(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 488, <ROCALK43c>
i=i+1;
Rnames{ 488} = 'VROCP6ALKP2 + HO2 = VROCP1OXY3 ';
k(:,i) = (  2.7100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP6ALKP2';Gstr{i,   2}='HO2';
fVROCP6ALKP2(i)=fVROCP6ALKP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP1OXY3(i)=fVROCP1OXY3(i)+  1.0000;

% 489, <ROCALK44c>
i=i+1;
Rnames{ 489} = 'VROCP5ALKP2 + HO2 = VROCP0OXY2 ';
k(:,i) = (  2.7300E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP5ALKP2';Gstr{i,   2}='HO2';
fVROCP5ALKP2(i)=fVROCP5ALKP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP0OXY2(i)=fVROCP0OXY2(i)+  1.0000;

% 490, <ROCALK45c>
i=i+1;
Rnames{ 490} = 'VROCP4ALKP2 + HO2 = VROCN1OXY1 ';
k(:,i) = (  2.7800E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP4ALKP2';Gstr{i,   2}='HO2';
fVROCP4ALKP2(i)=fVROCP4ALKP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCN1OXY1(i)=fVROCN1OXY1(i)+  1.0000;

% 491, <ROCALK46c>
i=i+1;
Rnames{ 491} = 'VROCP3ALKP2 + HO2 = VROCN2OXY2 ';
k(:,i) = (  2.8000E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP3ALKP2';Gstr{i,   2}='HO2';
fVROCP3ALKP2(i)=fVROCP3ALKP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;

% 492, <ROCALK47c>
i=i+1;
Rnames{ 492} = 'VROCP2ALKP2 + HO2 = VROCN2OXY2 ';
k(:,i) = (  2.8100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP2ALKP2';Gstr{i,   2}='HO2';
fVROCP2ALKP2(i)=fVROCP2ALKP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;

% 493, <ROCALK48c>
i=i+1;
Rnames{ 493} = 'VROCP1ALKP2 + HO2 = VROCN2OXY2 ';
k(:,i) = (  2.8200E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP1ALKP2';Gstr{i,   2}='HO2';
fVROCP1ALKP2(i)=fVROCP1ALKP2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;

% 494, <HC1008>
i=i+1;
Rnames{ 494} = 'HC10P2 + HO2 = VROCP2OXY2 ';
k(:,i) = (  2.6600E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='HC10P2';Gstr{i,   2}='HO2';
fHC10P2(i)=fHC10P2(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP2OXY2(i)=fVROCP2OXY2(i)+  1.0000;

% 495, <ROCARO01>
i=i+1;
Rnames{ 495} = 'VROCP6ARO + HO = 0.84000*VROCP6AROP +  0.16000*HO2 +  0.16000*VROCP4OXY2 ';
k(:,i) = (  1.8100E-11 ); 
Gstr{i,   1}='VROCP6ARO';Gstr{i,   2}='HO';
fVROCP6ARO(i)=fVROCP6ARO(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP6AROP(i)=fVROCP6AROP(i)+  0.8400;fHO2(i)=fHO2(i)+  0.1600;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.1600;

% 496, <ROCARO02>
i=i+1;
Rnames{ 496} = 'VROCP6AROP + HO2 = 0.05950*VROCP4OXY2 +  0.90480*VROCP1OXY3 +  0.03570*VROCN2OXY4 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP6AROP';Gstr{i,   2}='HO2';
fVROCP6AROP(i)=fVROCP6AROP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.9048;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0357;

% 497, <ROCARO03>
i=i+1;
Rnames{ 497} = 'VROCP6AROP + NO = 0.00010*VROCP4OXY2 +  0.00180*VROCP2OXY2 +  0.00010*VROCN1OXY3 +  0.99800*NO2 +  0.99800*HO2 +  0.05940*BALD +  0.46930*GLY +  0.46930*MGLY +  0.46930*FURANONE +  0.46930*DCB2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP6AROP';Gstr{i,   2}='NO';
fVROCP6AROP(i)=fVROCP6AROP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0001;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0018;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0001;fNO2(i)=fNO2(i)+  0.9980;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0594;fGLY(i)=fGLY(i)+  0.4693;fMGLY(i)=fMGLY(i)+  0.4693;fFURANONE(i)=fFURANONE(i)+  0.4693;fDCB2(i)=fDCB2(i)+  0.4693;

% 498, <ROCARO04>
i=i+1;
Rnames{ 498} = 'VROCP6AROP + NO3 = NO2 +  0.94050*HO2 +  0.05950*BALD +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP6AROP';Gstr{i,   2}='NO3';
fVROCP6AROP(i)=fVROCP6AROP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9405;fBALD(i)=fBALD(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;

% 499, <ROCARO05>
i=i+1;
Rnames{ 499} = 'VROCP6AROP + MO2 = 0.68000*HCHO +  1.31050*HO2 +  0.32000*MOH +  0.05950*BALD +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='VROCP6AROP';Gstr{i,   2}='MO2';
fVROCP6AROP(i)=fVROCP6AROP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fHO2(i)=fHO2(i)+  1.3105;fMOH(i)=fMOH(i)+  0.3200;fBALD(i)=fBALD(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;

% 500, <ROCARO06>
i=i+1;
Rnames{ 500} = 'VROCP6AROP + ACO3 = 0.70000*MO2 +  0.94050*HO2 +  0.30000*ORA2 +  0.05950*BALD +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 +  0.70000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='VROCP6AROP';Gstr{i,   2}='ACO3';
fVROCP6AROP(i)=fVROCP6AROP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fHO2(i)=fHO2(i)+  0.9405;fORA2(i)=fORA2(i)+  0.3000;fBALD(i)=fBALD(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;fCO2(i)=fCO2(i)+  0.7000;

% 501, <ROCARO11>
i=i+1;
Rnames{ 501} = 'VROCP5ARO + HO = 0.84000*VROCP5AROP +  0.16000*HO2 +  0.16000*VROCP3OXY2 ';
k(:,i) = (  1.8100E-11 ); 
Gstr{i,   1}='VROCP5ARO';Gstr{i,   2}='HO';
fVROCP5ARO(i)=fVROCP5ARO(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCP5AROP(i)=fVROCP5AROP(i)+  0.8400;fHO2(i)=fHO2(i)+  0.1600;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1600;

% 502, <ROCARO12>
i=i+1;
Rnames{ 502} = 'VROCP5AROP + HO2 = 0.05950*VROCP3OXY2 +  0.90480*VROCP0OXY2 +  0.03570*VROCN2OXY4 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='VROCP5AROP';Gstr{i,   2}='HO2';
fVROCP5AROP(i)=fVROCP5AROP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0595;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.9048;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0357;

% 503, <ROCARO13>
i=i+1;
Rnames{ 503} = 'VROCP5AROP + NO = 0.00010*VROCP3OXY2 +  0.00180*VROCP1OXY3 +  0.00010*VROCN2OXY4 +  0.99800*NO2 +  0.99800*HO2 +  0.05940*VROCP4OXY2 +  0.46930*GLY +  0.46930*MGLY +  0.46930*FURANONE +  0.46930*DCB2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='VROCP5AROP';Gstr{i,   2}='NO';
fVROCP5AROP(i)=fVROCP5AROP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0001;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0018;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0001;fNO2(i)=fNO2(i)+  0.9980;fHO2(i)=fHO2(i)+  0.9980;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0594;fGLY(i)=fGLY(i)+  0.4693;fMGLY(i)=fMGLY(i)+  0.4693;fFURANONE(i)=fFURANONE(i)+  0.4693;fDCB2(i)=fDCB2(i)+  0.4693;

% 504, <ROCARO14>
i=i+1;
Rnames{ 504} = 'VROCP5AROP + NO3 = NO2 +  0.94050*HO2 +  0.05950*VROCP4OXY2 +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='VROCP5AROP';Gstr{i,   2}='NO3';
fVROCP5AROP(i)=fVROCP5AROP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9405;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;

% 505, <ROCARO15>
i=i+1;
Rnames{ 505} = 'VROCP5AROP + MO2 = 0.68000*HCHO +  1.31050*HO2 +  0.32000*MOH +  0.05950*VROCP4OXY2 +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='VROCP5AROP';Gstr{i,   2}='MO2';
fVROCP5AROP(i)=fVROCP5AROP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fHO2(i)=fHO2(i)+  1.3105;fMOH(i)=fMOH(i)+  0.3200;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;

% 506, <ROCARO16>
i=i+1;
Rnames{ 506} = 'VROCP5AROP + ACO3 = 0.70000*MO2 +  0.94050*HO2 +  0.30000*ORA2 +  0.05950*VROCP4OXY2 +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 +  0.70000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='VROCP5AROP';Gstr{i,   2}='ACO3';
fVROCP5AROP(i)=fVROCP5AROP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fHO2(i)=fHO2(i)+  0.9405;fORA2(i)=fORA2(i)+  0.3000;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;fCO2(i)=fCO2(i)+  0.7000;

% 507, <ROCARO21>
i=i+1;
Rnames{ 507} = 'NAPH + HO = 0.84000*NAPHP +  0.16000*HO2 +  0.16000*VROCP3OXY2 ';
k(:,i) = (  2.3100E-11 ); 
Gstr{i,   1}='NAPH';Gstr{i,   2}='HO';
fNAPH(i)=fNAPH(i)-1.0;fHO(i)=fHO(i)-1.0;
fNAPHP(i)=fNAPHP(i)+  0.8400;fHO2(i)=fHO2(i)+  0.1600;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1600;

% 508, <ROCARO22>
i=i+1;
Rnames{ 508} = 'NAPHP + HO2 = 0.05950*VROCP3OXY2 +  0.90480*VROCP1OXY3 +  0.03570*VROCN2OXY8 ';
k(:,i) = (  2.9100E-13.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='NAPHP';Gstr{i,   2}='HO2';
fNAPHP(i)=fNAPHP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0595;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.9048;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0357;

% 509, <ROCARO23>
i=i+1;
Rnames{ 509} = 'NAPHP + NO = 0.05950*VROCP4OXY2 +  0.00180*VROCP2OXY2 +  0.00010*VROCN2OXY8 +  0.99800*NO2 +  0.99800*HO2 +  0.46930*GLY +  0.46930*MGLY +  0.46930*FURANONE +  0.46930*DCB2 ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='NAPHP';Gstr{i,   2}='NO';
fNAPHP(i)=fNAPHP(i)-1.0;fNO(i)=fNO(i)-1.0;
fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0018;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0001;fNO2(i)=fNO2(i)+  0.9980;fHO2(i)=fHO2(i)+  0.9980;fGLY(i)=fGLY(i)+  0.4693;fMGLY(i)=fMGLY(i)+  0.4693;fFURANONE(i)=fFURANONE(i)+  0.4693;fDCB2(i)=fDCB2(i)+  0.4693;

% 510, <ROCARO24>
i=i+1;
Rnames{ 510} = 'NAPHP + NO3 = NO2 +  0.94050*HO2 +  0.05950*VROCP4OXY2 +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='NAPHP';Gstr{i,   2}='NO3';
fNAPHP(i)=fNAPHP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9405;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;

% 511, <ROCARO25>
i=i+1;
Rnames{ 511} = 'NAPHP + MO2 = 0.68000*HCHO +  1.31050*HO2 +  0.32000*MOH +  0.05950*VROCP4OXY2 +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 ';
k(:,i) = (  3.5600E-14.*exp(  7.0800E+02./T) ); 
Gstr{i,   1}='NAPHP';Gstr{i,   2}='MO2';
fNAPHP(i)=fNAPHP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.6800;fHO2(i)=fHO2(i)+  1.3105;fMOH(i)=fMOH(i)+  0.3200;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;

% 512, <ROCARO26>
i=i+1;
Rnames{ 512} = 'NAPHP + ACO3 = 0.70000*MO2 +  0.94050*HO2 +  0.30000*ORA2 +  0.05950*VROCP4OXY2 +  0.47020*GLY +  0.47020*MGLY +  0.47020*FURANONE +  0.47020*DCB2 +  0.70000*CO2 ';
k(:,i) = (  7.4000E-13.*exp(  7.6500E+02./T) ); 
Gstr{i,   1}='NAPHP';Gstr{i,   2}='ACO3';
fNAPHP(i)=fNAPHP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  0.7000;fHO2(i)=fHO2(i)+  0.9405;fORA2(i)=fORA2(i)+  0.3000;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fGLY(i)=fGLY(i)+  0.4702;fMGLY(i)=fMGLY(i)+  0.4702;fFURANONE(i)=fFURANONE(i)+  0.4702;fDCB2(i)=fDCB2(i)+  0.4702;fCO2(i)=fCO2(i)+  0.7000;

% 513, <ROCOXY1c>
i=i+1;
Rnames{ 513} = 'VROCN2OXY8 + HO = 0.08540*VROCN2OXY8 +  0.25810*MEK +  0.25810*KET +  0.25810*HCHO +  0.12910*ACD +  0.25810*ALD +  0.25810*MO2 +  0.25810*ETHP +  0.25810*HC3P +  0.25810*MEKP ';
k(:,i) = (  5.9000E-11 ); 
Gstr{i,   1}='VROCN2OXY8';Gstr{i,   2}='HO';
fVROCN2OXY8(i)=fVROCN2OXY8(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0854;fMEK(i)=fMEK(i)+  0.2581;fKET(i)=fKET(i)+  0.2581;fHCHO(i)=fHCHO(i)+  0.2581;fACD(i)=fACD(i)+  0.1291;fALD(i)=fALD(i)+  0.2581;fMO2(i)=fMO2(i)+  0.2581;fETHP(i)=fETHP(i)+  0.2581;fHC3P(i)=fHC3P(i)+  0.2581;fMEKP(i)=fMEKP(i)+  0.2581;

% 514, <ROCOXY2c>
i=i+1;
Rnames{ 514} = 'VROCN2OXY4 + HO = 0.80830*VROCN2OXY8 +  0.31300*VROCN2OXY4 +  0.00160*VROCN1OXY6 +  0.07940*MEK +  0.07940*KET +  0.07940*HCHO +  0.03970*ACD +  0.07940*ALD +  0.07940*MO2 +  0.07940*ETHP +  0.07940*HC3P +  0.07940*MEKP +  0.07940*KETP ';
k(:,i) = (  6.0700E-11 ); 
Gstr{i,   1}='VROCN2OXY4';Gstr{i,   2}='HO';
fVROCN2OXY4(i)=fVROCN2OXY4(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.8083;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.3130;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0016;fMEK(i)=fMEK(i)+  0.0794;fKET(i)=fKET(i)+  0.0794;fHCHO(i)=fHCHO(i)+  0.0794;fACD(i)=fACD(i)+  0.0397;fALD(i)=fALD(i)+  0.0794;fMO2(i)=fMO2(i)+  0.0794;fETHP(i)=fETHP(i)+  0.0794;fHC3P(i)=fHC3P(i)+  0.0794;fMEKP(i)=fMEKP(i)+  0.0794;fKETP(i)=fKETP(i)+  0.0794;

% 515, <ROCOXY3c>
i=i+1;
Rnames{ 515} = 'VROCN2OXY2 + HO = 0.11560*VROCN2OXY8 +  0.68950*VROCN2OXY4 +  0.26420*VROCN2OXY2 +  0.06630*VROCN1OXY6 +  0.06350*VROCN1OXY3 +  0.09500*VROCP0OXY4 +  0.03320*VOP3 +  0.03900*MEK +  0.03900*KET +  0.03900*HCHO +  0.01950*ACD +  0.03900*ALD +  0.03900*MO2 +  0.03900*ETHP +  0.03900*HC3P +  0.03900*MEKP +  0.03900*KETP ';
k(:,i) = (  5.5400E-11 ); 
Gstr{i,   1}='VROCN2OXY2';Gstr{i,   2}='HO';
fVROCN2OXY2(i)=fVROCN2OXY2(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.1156;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.6895;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.2642;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0663;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0635;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0950;fVOP3(i)=fVOP3(i)+  0.0332;fMEK(i)=fMEK(i)+  0.0390;fKET(i)=fKET(i)+  0.0390;fHCHO(i)=fHCHO(i)+  0.0390;fACD(i)=fACD(i)+  0.0195;fALD(i)=fALD(i)+  0.0390;fMO2(i)=fMO2(i)+  0.0390;fETHP(i)=fETHP(i)+  0.0390;fHC3P(i)=fHC3P(i)+  0.0390;fMEKP(i)=fMEKP(i)+  0.0390;fKETP(i)=fKETP(i)+  0.0390;

% 516, <ROCOXY4c>
i=i+1;
Rnames{ 516} = 'VROCN1OXY6 + HO = 0.20360*VROCN2OXY8 +  0.00710*VROCN2OXY4 +  0.14460*VOP3 +  0.18400*MEK +  0.18400*KET +  0.18400*HCHO +  0.09200*ACD +  0.18400*ALD +  0.18400*MO2 +  0.18400*ETHP +  0.18400*HC3P +  0.18400*MEKP +  0.18400*KETP ';
k(:,i) = (  5.6300E-11 ); 
Gstr{i,   1}='VROCN1OXY6';Gstr{i,   2}='HO';
fVROCN1OXY6(i)=fVROCN1OXY6(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.2036;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0071;fVOP3(i)=fVOP3(i)+  0.1446;fMEK(i)=fMEK(i)+  0.1840;fKET(i)=fKET(i)+  0.1840;fHCHO(i)=fHCHO(i)+  0.1840;fACD(i)=fACD(i)+  0.0920;fALD(i)=fALD(i)+  0.1840;fMO2(i)=fMO2(i)+  0.1840;fETHP(i)=fETHP(i)+  0.1840;fHC3P(i)=fHC3P(i)+  0.1840;fMEKP(i)=fMEKP(i)+  0.1840;fKETP(i)=fKETP(i)+  0.1840;

% 517, <ROCOXY5c>
i=i+1;
Rnames{ 517} = 'VROCN1OXY3 + HO = 0.36090*VROCN2OXY8 +  0.52000*VROCN2OXY4 +  0.00880*VROCN2OXY2 +  0.14520*VROCN1OXY6 +  0.04200*VROCN1OXY3 +  0.05240*VROCP0OXY4 +  0.06460*MEK +  0.06460*KET +  0.06460*HCHO +  0.03230*ACD +  0.06460*ALD +  0.06460*MO2 +  0.06460*ETHP +  0.06460*HC3P +  0.06460*MEKP +  0.06460*KETP ';
k(:,i) = (  5.4600E-11 ); 
Gstr{i,   1}='VROCN1OXY3';Gstr{i,   2}='HO';
fVROCN1OXY3(i)=fVROCN1OXY3(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.3609;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.5200;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0088;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.1452;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0420;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0524;fMEK(i)=fMEK(i)+  0.0646;fKET(i)=fKET(i)+  0.0646;fHCHO(i)=fHCHO(i)+  0.0646;fACD(i)=fACD(i)+  0.0323;fALD(i)=fALD(i)+  0.0646;fMO2(i)=fMO2(i)+  0.0646;fETHP(i)=fETHP(i)+  0.0646;fHC3P(i)=fHC3P(i)+  0.0646;fMEKP(i)=fMEKP(i)+  0.0646;fKETP(i)=fKETP(i)+  0.0646;

% 518, <ROCOXY6c>
i=i+1;
Rnames{ 518} = 'VROCN1OXY1 + HO = 0.00740*VROCN2OXY8 +  0.11900*VROCN2OXY4 +  0.76730*VROCN2OXY2 +  0.01320*VROCN1OXY6 +  0.06140*VROCN1OXY3 +  0.03050*VROCN1OXY1 +  0.03670*VROCP0OXY4 +  0.06050*VROCP0OXY2 +  0.04880*VROCP1OXY3 +  0.02020*VROCP1OXY1 +  0.05840*VROCP2OXY2 +  0.03750*VROCP3OXY2 +  0.00740*VROCP4OXY2 +  0.01790*VOP3 +  0.02580*OP2 +  0.02440*MEK +  0.02440*KET +  0.02440*HCHO +  0.01220*ACD +  0.02440*ALD +  0.02440*MO2 +  0.02440*ETHP +  0.02440*HC3P +  0.02440*MEKP +  0.02440*KETP ';
k(:,i) = (  4.5000E-11 ); 
Gstr{i,   1}='VROCN1OXY1';Gstr{i,   2}='HO';
fVROCN1OXY1(i)=fVROCN1OXY1(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0074;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1190;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.7673;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0132;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0614;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0305;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0367;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0605;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0488;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0202;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0584;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0375;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0074;fVOP3(i)=fVOP3(i)+  0.0179;fOP2(i)=fOP2(i)+  0.0258;fMEK(i)=fMEK(i)+  0.0244;fKET(i)=fKET(i)+  0.0244;fHCHO(i)=fHCHO(i)+  0.0244;fACD(i)=fACD(i)+  0.0122;fALD(i)=fALD(i)+  0.0244;fMO2(i)=fMO2(i)+  0.0244;fETHP(i)=fETHP(i)+  0.0244;fHC3P(i)=fHC3P(i)+  0.0244;fMEKP(i)=fMEKP(i)+  0.0244;fKETP(i)=fKETP(i)+  0.0244;

% 519, <ROCOXY7c>
i=i+1;
Rnames{ 519} = 'VROCP0OXY4 + HO = 0.36950*VROCN2OXY8 +  0.12910*VROCN2OXY4 +  0.15470*VROCN1OXY6 +  0.08220*VROCN1OXY3 +  0.04000*VROCP0OXY4 +  0.10680*MEK +  0.10680*KET +  0.10680*HCHO +  0.05340*ACD +  0.10680*ALD +  0.10680*MO2 +  0.10680*ETHP +  0.10680*HC3P +  0.10680*MEKP +  0.10680*KETP ';
k(:,i) = (  5.1700E-11 ); 
Gstr{i,   1}='VROCP0OXY4';Gstr{i,   2}='HO';
fVROCP0OXY4(i)=fVROCP0OXY4(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.3695;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1291;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.1547;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0822;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0400;fMEK(i)=fMEK(i)+  0.1068;fKET(i)=fKET(i)+  0.1068;fHCHO(i)=fHCHO(i)+  0.1068;fACD(i)=fACD(i)+  0.0534;fALD(i)=fALD(i)+  0.1068;fMO2(i)=fMO2(i)+  0.1068;fETHP(i)=fETHP(i)+  0.1068;fHC3P(i)=fHC3P(i)+  0.1068;fMEKP(i)=fMEKP(i)+  0.1068;fKETP(i)=fKETP(i)+  0.1068;

% 520, <ROCOXY8c>
i=i+1;
Rnames{ 520} = 'VROCP0OXY2 + HO = 0.07380*VROCN2OXY8 +  0.46670*VROCN2OXY4 +  0.12220*VROCN2OXY2 +  0.04530*VROCN1OXY6 +  0.15160*VROCN1OXY3 +  0.00500*VROCN1OXY1 +  0.13320*VROCP0OXY4 +  0.01040*VROCP0OXY2 +  0.03210*VROCP1OXY3 +  0.01400*VROCP1OXY1 +  0.02400*VROCP2OXY2 +  0.05950*VOP3 +  0.04450*MEK +  0.04450*KET +  0.04450*HCHO +  0.02220*ACD +  0.04450*ALD +  0.04450*MO2 +  0.04450*ETHP +  0.04450*HC3P +  0.04450*MEKP +  0.04450*KETP ';
k(:,i) = (  4.7300E-11 ); 
Gstr{i,   1}='VROCP0OXY2';Gstr{i,   2}='HO';
fVROCP0OXY2(i)=fVROCP0OXY2(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0738;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.4667;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.1222;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0453;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.1516;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0050;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.1332;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0104;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0321;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0140;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0240;fVOP3(i)=fVOP3(i)+  0.0595;fMEK(i)=fMEK(i)+  0.0445;fKET(i)=fKET(i)+  0.0445;fHCHO(i)=fHCHO(i)+  0.0445;fACD(i)=fACD(i)+  0.0222;fALD(i)=fALD(i)+  0.0445;fMO2(i)=fMO2(i)+  0.0445;fETHP(i)=fETHP(i)+  0.0445;fHC3P(i)=fHC3P(i)+  0.0445;fMEKP(i)=fMEKP(i)+  0.0445;fKETP(i)=fKETP(i)+  0.0445;

% 521, <ROCOXY9c>
i=i+1;
Rnames{ 521} = 'VROCP1OXY3 + HO = 0.19620*VROCN2OXY8 +  0.19470*VROCN2OXY4 +  0.00040*VROCN2OXY2 +  0.10760*VROCN1OXY6 +  0.05680*VROCN1OXY3 +  0.21220*VROCP0OXY4 +  0.00070*VROCP0OXY2 +  0.13690*VOP3 +  0.08180*MEK +  0.08180*KET +  0.08180*HCHO +  0.04090*ACD +  0.08180*ALD +  0.08180*MO2 +  0.08180*ETHP +  0.08180*HC3P +  0.08180*MEKP +  0.08180*KETP ';
k(:,i) = (  4.6000E-11 ); 
Gstr{i,   1}='VROCP1OXY3';Gstr{i,   2}='HO';
fVROCP1OXY3(i)=fVROCP1OXY3(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.1962;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1947;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0004;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.1076;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0568;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.2122;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0007;fVOP3(i)=fVOP3(i)+  0.1369;fMEK(i)=fMEK(i)+  0.0818;fKET(i)=fKET(i)+  0.0818;fHCHO(i)=fHCHO(i)+  0.0818;fACD(i)=fACD(i)+  0.0409;fALD(i)=fALD(i)+  0.0818;fMO2(i)=fMO2(i)+  0.0818;fETHP(i)=fETHP(i)+  0.0818;fHC3P(i)=fHC3P(i)+  0.0818;fMEKP(i)=fMEKP(i)+  0.0818;fKETP(i)=fKETP(i)+  0.0818;

% 522, <ROCOXY10c>
i=i+1;
Rnames{ 522} = 'VROCP1OXY1 + HO = 0.00230*VROCN2OXY8 +  0.13400*VROCN2OXY4 +  0.33490*VROCN2OXY2 +  0.00820*VROCN1OXY6 +  0.12020*VROCN1OXY3 +  0.07610*VROCN1OXY1 +  0.03250*VROCP0OXY4 +  0.12670*VROCP0OXY2 +  0.06470*VROCP1OXY3 +  0.03640*VROCP1OXY1 +  0.08900*VROCP2OXY2 +  0.06460*VROCP3OXY2 +  0.04480*VROCP4OXY2 +  0.00870*VOP3 +  0.01030*OP2 +  0.02970*MEK +  0.02970*KET +  0.02970*HCHO +  0.01490*ACD +  0.02970*ALD +  0.02970*MO2 +  0.02970*ETHP +  0.02970*HC3P +  0.02970*MEKP +  0.02970*KETP ';
k(:,i) = (  3.8000E-11 ); 
Gstr{i,   1}='VROCP1OXY1';Gstr{i,   2}='HO';
fVROCP1OXY1(i)=fVROCP1OXY1(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0023;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1340;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.3349;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0082;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.1202;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0761;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0325;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.1267;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0647;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0364;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0890;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0646;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0448;fVOP3(i)=fVOP3(i)+  0.0087;fOP2(i)=fOP2(i)+  0.0103;fMEK(i)=fMEK(i)+  0.0297;fKET(i)=fKET(i)+  0.0297;fHCHO(i)=fHCHO(i)+  0.0297;fACD(i)=fACD(i)+  0.0149;fALD(i)=fALD(i)+  0.0297;fMO2(i)=fMO2(i)+  0.0297;fETHP(i)=fETHP(i)+  0.0297;fHC3P(i)=fHC3P(i)+  0.0297;fMEKP(i)=fMEKP(i)+  0.0297;fKETP(i)=fKETP(i)+  0.0297;

% 523, <ROCOXY11c>
i=i+1;
Rnames{ 523} = 'VROCP2OXY2 + HO = 0.04790*VROCN2OXY8 +  0.17460*VROCN2OXY4 +  0.01040*VROCN2OXY2 +  0.05500*VROCN1OXY6 +  0.11180*VROCN1OXY3 +  0.00130*VROCN1OXY1 +  0.14800*VROCP0OXY4 +  0.04170*VROCP0OXY2 +  0.11810*VROCP1OXY3 +  0.02180*VROCP1OXY1 +  0.11950*VROCP2OXY2 +  0.02070*VROCP3OXY2 +  0.02940*VOP3 +  0.04530*OP2 +  0.06280*MEK +  0.06280*KET +  0.06280*HCHO +  0.03140*ACD +  0.06280*ALD +  0.06280*MO2 +  0.06280*ETHP +  0.06280*HC3P +  0.06280*MEKP +  0.06280*KETP ';
k(:,i) = (  3.9300E-11 ); 
Gstr{i,   1}='VROCP2OXY2';Gstr{i,   2}='HO';
fVROCP2OXY2(i)=fVROCP2OXY2(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0479;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1746;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0104;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0550;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.1118;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0013;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.1480;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0417;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1181;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0218;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1195;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0207;fVOP3(i)=fVOP3(i)+  0.0294;fOP2(i)=fOP2(i)+  0.0453;fMEK(i)=fMEK(i)+  0.0628;fKET(i)=fKET(i)+  0.0628;fHCHO(i)=fHCHO(i)+  0.0628;fACD(i)=fACD(i)+  0.0314;fALD(i)=fALD(i)+  0.0628;fMO2(i)=fMO2(i)+  0.0628;fETHP(i)=fETHP(i)+  0.0628;fHC3P(i)=fHC3P(i)+  0.0628;fMEKP(i)=fMEKP(i)+  0.0628;fKETP(i)=fKETP(i)+  0.0628;

% 524, <ROCOXY12c>
i=i+1;
Rnames{ 524} = 'VROCP3OXY2 + HO = 0.03240*VROCN2OXY8 +  0.07690*VROCN2OXY4 +  0.00090*VROCN2OXY2 +  0.06210*VROCN1OXY6 +  0.04890*VROCN1OXY3 +  0.15500*VROCP0OXY4 +  0.01550*VROCP0OXY2 +  0.11170*VROCP1OXY3 +  0.01130*VROCP1OXY1 +  0.14650*VROCP2OXY2 +  0.08710*VROCP3OXY2 +  0.00400*VROCP4OXY2 +  0.05690*VOP3 +  0.04720*OP2 +  0.06980*MEK +  0.06980*KET +  0.06980*HCHO +  0.03490*ACD +  0.06980*ALD +  0.06980*MO2 +  0.06980*ETHP +  0.06980*HC3P +  0.06980*MEKP +  0.06980*KETP ';
k(:,i) = (  3.5200E-11 ); 
Gstr{i,   1}='VROCP3OXY2';Gstr{i,   2}='HO';
fVROCP3OXY2(i)=fVROCP3OXY2(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0324;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0769;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0009;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0621;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0489;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.1550;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0155;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1117;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0113;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1465;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0871;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0040;fVOP3(i)=fVOP3(i)+  0.0569;fOP2(i)=fOP2(i)+  0.0472;fMEK(i)=fMEK(i)+  0.0698;fKET(i)=fKET(i)+  0.0698;fHCHO(i)=fHCHO(i)+  0.0698;fACD(i)=fACD(i)+  0.0349;fALD(i)=fALD(i)+  0.0698;fMO2(i)=fMO2(i)+  0.0698;fETHP(i)=fETHP(i)+  0.0698;fHC3P(i)=fHC3P(i)+  0.0698;fMEKP(i)=fMEKP(i)+  0.0698;fKETP(i)=fKETP(i)+  0.0698;

% 525, <ROCOXY13c>
i=i+1;
Rnames{ 525} = 'VROCP4OXY2 + HO = 0.01170*VROCN2OXY8 +  0.01670*VROCN2OXY4 +  0.05040*VROCN1OXY6 +  0.02760*VROCN1OXY3 +  0.09200*VROCP0OXY4 +  0.07880*VROCP1OXY3 +  0.01080*VROCP1OXY1 +  0.12270*VROCP2OXY2 +  0.15010*VROCP3OXY2 +  0.04660*VROCP4OXY2 +  0.07850*VOP3 +  0.03990*OP2 +  0.07860*MEK +  0.07860*KET +  0.07860*HCHO +  0.03930*ACD +  0.07860*ALD +  0.07860*MO2 +  0.07860*ETHP +  0.07860*HC3P +  0.07860*MEKP +  0.07860*KETP ';
k(:,i) = (  3.1200E-11 ); 
Gstr{i,   1}='VROCP4OXY2';Gstr{i,   2}='HO';
fVROCP4OXY2(i)=fVROCP4OXY2(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0117;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0167;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0504;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0276;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0920;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0788;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0108;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1227;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1501;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0466;fVOP3(i)=fVOP3(i)+  0.0785;fOP2(i)=fOP2(i)+  0.0399;fMEK(i)=fMEK(i)+  0.0786;fKET(i)=fKET(i)+  0.0786;fHCHO(i)=fHCHO(i)+  0.0786;fACD(i)=fACD(i)+  0.0393;fALD(i)=fALD(i)+  0.0786;fMO2(i)=fMO2(i)+  0.0786;fETHP(i)=fETHP(i)+  0.0786;fHC3P(i)=fHC3P(i)+  0.0786;fMEKP(i)=fMEKP(i)+  0.0786;fKETP(i)=fKETP(i)+  0.0786;

% 526, <ROCOXY14c>
i=i+1;
Rnames{ 526} = 'VROCP5OXY1 + HO = 0.01030*VROCN2OXY4 +  0.00060*VROCN2OXY2 +  0.00900*VROCN1OXY6 +  0.01460*VROCN1OXY3 +  0.07020*VROCP0OXY4 +  0.01530*VROCP0OXY2 +  0.10170*VROCP1OXY3 +  0.00470*VROCP1OXY1 +  0.16580*VROCP2OXY2 +  0.17570*VROCP3OXY2 +  0.15870*VROCP4OXY2 +  0.05730*VROCP5OXY1 +  0.00970*VROCP6OXY1 +  0.02530*VOP3 +  0.03680*OP2 +  0.05260*MEK +  0.05260*KET +  0.05260*HCHO +  0.02630*ACD +  0.05260*ALD +  0.05260*MO2 +  0.05260*ETHP +  0.05260*HC3P +  0.05260*MEKP +  0.05310*HC5P +  0.05260*KETP ';
k(:,i) = (  2.4000E-11 ); 
Gstr{i,   1}='VROCP5OXY1';Gstr{i,   2}='HO';
fVROCP5OXY1(i)=fVROCP5OXY1(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0103;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0006;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0090;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0146;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0702;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0153;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1017;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0047;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1658;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1757;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.1587;fVROCP5OXY1(i)=fVROCP5OXY1(i)+  0.0573;fVROCP6OXY1(i)=fVROCP6OXY1(i)+  0.0097;fVOP3(i)=fVOP3(i)+  0.0253;fOP2(i)=fOP2(i)+  0.0368;fMEK(i)=fMEK(i)+  0.0526;fKET(i)=fKET(i)+  0.0526;fHCHO(i)=fHCHO(i)+  0.0526;fACD(i)=fACD(i)+  0.0263;fALD(i)=fALD(i)+  0.0526;fMO2(i)=fMO2(i)+  0.0526;fETHP(i)=fETHP(i)+  0.0526;fHC3P(i)=fHC3P(i)+  0.0526;fMEKP(i)=fMEKP(i)+  0.0526;fHC5P(i)=fHC5P(i)+  0.0531;fKETP(i)=fKETP(i)+  0.0526;

% 527, <ROCOXY15c>
i=i+1;
Rnames{ 527} = 'VROCP6OXY1 + HO = 0.00610*VROCN1OXY6 +  0.00490*VROCN1OXY3 +  0.02240*VROCP0OXY4 +  0.04200*VROCP1OXY3 +  0.00330*VROCP1OXY1 +  0.09060*VROCP2OXY2 +  0.14890*VROCP3OXY2 +  0.17420*VROCP4OXY2 +  0.11570*VROCP5OXY1 +  0.02940*VROCP6OXY1 +  0.04150*VOP3 +  0.05600*OP2 +  0.05710*MEK +  0.05710*KET +  0.05710*HCHO +  0.02850*ACD +  0.05710*ALD +  0.05710*MO2 +  0.05710*ETHP +  0.05710*HC3P +  0.05710*MEKP +  0.04970*HC5P +  0.05710*KETP ';
k(:,i) = (  2.0500E-11 ); 
Gstr{i,   1}='VROCP6OXY1';Gstr{i,   2}='HO';
fVROCP6OXY1(i)=fVROCP6OXY1(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0061;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0049;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0224;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0420;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0033;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0906;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1489;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.1742;fVROCP5OXY1(i)=fVROCP5OXY1(i)+  0.1157;fVROCP6OXY1(i)=fVROCP6OXY1(i)+  0.0294;fVOP3(i)=fVOP3(i)+  0.0415;fOP2(i)=fOP2(i)+  0.0560;fMEK(i)=fMEK(i)+  0.0571;fKET(i)=fKET(i)+  0.0571;fHCHO(i)=fHCHO(i)+  0.0571;fACD(i)=fACD(i)+  0.0285;fALD(i)=fALD(i)+  0.0571;fMO2(i)=fMO2(i)+  0.0571;fETHP(i)=fETHP(i)+  0.0571;fHC3P(i)=fHC3P(i)+  0.0571;fMEKP(i)=fMEKP(i)+  0.0571;fHC5P(i)=fHC5P(i)+  0.0497;fKETP(i)=fKETP(i)+  0.0571;

% 528, <ROCOXY16c>
i=i+1;
Rnames{ 528} = 'VOP3 + HO = 0.16280*VROCN2OXY8 +  0.01030*VROCN2OXY4 +  0.05850*VROCN1OXY6 +  0.01710*VROCP0OXY4 +  0.12990*VOP3 +  0.16520*MEK +  0.16520*KET +  0.16520*HCHO +  0.08260*ACD +  0.16520*ALD +  0.16520*MO2 +  0.16520*ETHP +  0.16520*HC3P +  0.16520*MEKP +  0.16520*KETP ';
k(:,i) = (  4.7400E-11 ); 
Gstr{i,   1}='VOP3';Gstr{i,   2}='HO';
fVOP3(i)=fVOP3(i)-1.0;fHO(i)=fHO(i)-1.0;
fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.1628;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0103;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0585;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0171;fVOP3(i)=fVOP3(i)+  0.1299;fMEK(i)=fMEK(i)+  0.1652;fKET(i)=fKET(i)+  0.1652;fHCHO(i)=fHCHO(i)+  0.1652;fACD(i)=fACD(i)+  0.0826;fALD(i)=fALD(i)+  0.1652;fMO2(i)=fMO2(i)+  0.1652;fETHP(i)=fETHP(i)+  0.1652;fHC3P(i)=fHC3P(i)+  0.1652;fMEKP(i)=fMEKP(i)+  0.1652;fKETP(i)=fKETP(i)+  0.1652;

% 529, <R364>
i=i+1;
Rnames{ 529} = 'ECH4 + HO = MO2 ';
k(:,i) = (  2.4500E-12.*exp( -1.7750E+03./T) ); 
Gstr{i,   1}='ECH4';Gstr{i,   2}='HO';
fECH4(i)=fECH4(i)-1.0;fHO(i)=fHO(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;

% 530, <TRP58>
i=i+1;
Rnames{ 530} = 'ATRPNJ = AHOMJ + HNO3 ';
k(:,i) = (  9.2600E-05 ); 
Gstr{i,   1}='ATRPNJ';
fATRPNJ(i)=fATRPNJ(i)-1.0;
fAHOMJ(i)=fAHOMJ(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 531, <TRP59>
i=i+1;
Rnames{ 531} = 'AHONITJ = AHOMJ + HNO3 ';
k(:,i) = (  9.2600E-05 ); 
Gstr{i,   1}='AHONITJ';
fAHONITJ(i)=fAHONITJ(i)-1.0;
fAHOMJ(i)=fAHOMJ(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 532, <ROCARO71>
i=i+1;
Rnames{ 532} = 'STY + HO = STYP ';
k(:,i) = (  1.0200E-11.*exp(  5.3200E+02./T) ); 
Gstr{i,   1}='STY';Gstr{i,   2}='HO';
fSTY(i)=fSTY(i)-1.0;fHO(i)=fHO(i)-1.0;
fSTYP(i)=fSTYP(i)+  1.0000;

% 533, <ROCARO71a>
i=i+1;
Rnames{ 533} = 'STY + O3 = 0.62000*BALD +  0.62000*HCHO +  0.56000*CO +  0.28000*HO2 +  0.36000*HO +  0.28000*BAL2 +  0.10000*BEN +  0.20000*CO2 ';
k(:,i) = (  1.4000E-17 ); 
Gstr{i,   1}='STY';Gstr{i,   2}='O3';
fSTY(i)=fSTY(i)-1.0;fO3(i)=fO3(i)-1.0;
fBALD(i)=fBALD(i)+  0.6200;fHCHO(i)=fHCHO(i)+  0.6200;fCO(i)=fCO(i)+  0.5600;fHO2(i)=fHO2(i)+  0.2800;fHO(i)=fHO(i)+  0.3600;fBAL2(i)=fBAL2(i)+  0.2800;fBEN(i)=fBEN(i)+  0.1000;fCO2(i)=fCO2(i)+  0.2000;

% 534, <ROCARO71b>
i=i+1;
Rnames{ 534} = 'STY + NO3 = NO2 + STYP ';
k(:,i) = (  1.5100E-13 ); 
Gstr{i,   1}='STY';Gstr{i,   2}='NO3';
fSTY(i)=fSTY(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fSTYP(i)=fSTYP(i)+  1.0000;

% 535, <ROCARO72>
i=i+1;
Rnames{ 535} = 'STYP + HO2 = VROCP3OXY2 ';
k(:,i) = (  2.9100E-12.*exp(  1.3000E+03./T) ); 
Gstr{i,   1}='STYP';Gstr{i,   2}='HO2';
fSTYP(i)=fSTYP(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;

% 536, <ROCARO73>
i=i+1;
Rnames{ 536} = 'STYP + NO = NO2 + HO2 + HCHO + BALD ';
k(:,i) = (  2.7000E-12.*exp(  3.6000E+02./T) ); 
Gstr{i,   1}='STYP';Gstr{i,   2}='NO';
fSTYP(i)=fSTYP(i)-1.0;fNO(i)=fNO(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fBALD(i)=fBALD(i)+  1.0000;

% 537, <ROCARO74>
i=i+1;
Rnames{ 537} = 'STYP + NO3 = NO2 + HO2 + HCHO + BALD ';
k(:,i) = (  2.3000E-12 ); 
Gstr{i,   1}='STYP';Gstr{i,   2}='NO3';
fSTYP(i)=fSTYP(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fBALD(i)=fBALD(i)+  1.0000;

% 538, <ROCARO75>
i=i+1;
Rnames{ 538} = 'STYP + MO2 = 1.37000*HO2 +  1.68000*HCHO + BALD +  0.32000*MOH ';
k(:,i) = (  2.5000E-13 ); 
Gstr{i,   1}='STYP';Gstr{i,   2}='MO2';
fSTYP(i)=fSTYP(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fHO2(i)=fHO2(i)+  1.3700;fHCHO(i)=fHCHO(i)+  1.6800;fBALD(i)=fBALD(i)+  1.0000;fMOH(i)=fMOH(i)+  0.3200;

% 539, <ROCARO76>
i=i+1;
Rnames{ 539} = 'STYP + ACO3 = HO2 + HCHO + BALD +  0.70000*MO2 +  0.30000*ORA2 +  0.70000*CO2 ';
k(:,i) = (  2.5000E-13 ); 
Gstr{i,   1}='STYP';Gstr{i,   2}='ACO3';
fSTYP(i)=fSTYP(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fBALD(i)=fBALD(i)+  1.0000;fMO2(i)=fMO2(i)+  0.7000;fORA2(i)=fORA2(i)+  0.3000;fCO2(i)=fCO2(i)+  0.7000;

% 540, <HET_ANO3I>
i=i+1;
Rnames{ 540} = 'ANO3I = 0.67000*HONO +  0.33000*NO2 ';
k(:,i) = (K_HETERO_ANO3 ); 
Gstr{i,   1}='ANO3I';
fANO3I(i)=fANO3I(i)-1.0;
fHONO(i)=fHONO(i)+  0.6700;fNO2(i)=fNO2(i)+  0.3300;

% 541, <HET_ANO3J>
i=i+1;
Rnames{ 541} = 'ANO3J = 0.67000*HONO +  0.33000*NO2 ';
k(:,i) = (K_HETERO_ANO3 ); 
Gstr{i,   1}='ANO3J';
fANO3J(i)=fANO3J(i)-1.0;
fHONO(i)=fHONO(i)+  0.6700;fNO2(i)=fNO2(i)+  0.3300;

% 542, <SOAphot01>
i=i+1;
Rnames{ 542} = 'AHOMJ = 0.80000*AMTN1J +  0.20000*ORA1 ';
k(:,i) = (  1.0000E-02.*JNO2_RACM2 ); 
Gstr{i,   1}='AHOMJ';
fAHOMJ(i)=fAHOMJ(i)-1.0;
fAMTN1J(i)=fAMTN1J(i)+  0.8000;fORA1(i)=fORA1(i)+  0.2000;

% 543, <CLP01>
i=i+1;
Rnames{ 543} = 'CL2 = 2.00000*CL ';
k(:,i) = (JCL2_JPL19 ); 
Gstr{i,   1}='CL2';
fCL2(i)=fCL2(i)-1.0;
fCL(i)=fCL(i)+  2.0000;

% 544, <CLP02>
i=i+1;
Rnames{ 544} = 'CLO = CL + O3P ';
k(:,i) = (JCLO_JPL19 ); 
Gstr{i,   1}='CLO';
fCLO(i)=fCLO(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fO3P(i)=fO3P(i)+  1.0000;

% 545, <CLP03>
i=i+1;
Rnames{ 545} = 'OCLO = CLO + O3P ';
k(:,i) = (JOCLO_JPL19 ); 
Gstr{i,   1}='OCLO';
fOCLO(i)=fOCLO(i)-1.0;
fCLO(i)=fCLO(i)+  1.0000;fO3P(i)=fO3P(i)+  1.0000;

% 546, <CLP07>
i=i+1;
Rnames{ 546} = 'CL2O2 = CL + CLOO ';
k(:,i) = (JCL2O2_JPL19 ); 
Gstr{i,   1}='CL2O2';
fCL2O2(i)=fCL2O2(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 547, <CLP10>
i=i+1;
Rnames{ 547} = 'HOCL = HO + CL ';
k(:,i) = (JHOCL_JPL19 ); 
Gstr{i,   1}='HOCL';
fHOCL(i)=fHOCL(i)-1.0;
fHO(i)=fHO(i)+  1.0000;fCL(i)=fCL(i)+  1.0000;

% 548, <CLP12>
i=i+1;
Rnames{ 548} = 'CLNO = CL + NO ';
k(:,i) = (JCLNO_JPL19 ); 
Gstr{i,   1}='CLNO';
fCLNO(i)=fCLNO(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fNO(i)=fNO(i)+  1.0000;

% 549, <CLP14>
i=i+1;
Rnames{ 549} = 'CLNO2 = CL + NO2 ';
k(:,i) = (JCLNO2_JPL19 ); 
Gstr{i,   1}='CLNO2';
fCLNO2(i)=fCLNO2(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 550, <CLP17>
i=i+1;
Rnames{ 550} = 'CLNO3 = CL + NO3 ';
k(:,i) = (JCLNO3_R_JPL19 ); 
Gstr{i,   1}='CLNO3';
fCLNO3(i)=fCLNO3(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 551, <CLP18>
i=i+1;
Rnames{ 551} = 'CLNO3 = CLO + NO2 ';
k(:,i) = (JCLNO3_M_JPL19 ); 
Gstr{i,   1}='CLNO3';
fCLNO3(i)=fCLNO3(i)-1.0;
fCLO(i)=fCLO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 552, <CLP19>
i=i+1;
Rnames{ 552} = 'HCOCL = CL + CO + HO2 ';
k(:,i) = (JHCOCL_JPL19 ); 
Gstr{i,   1}='HCOCL';
fHCOCL(i)=fHCOCL(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 553, <CLT01>
i=i+1;
Rnames{ 553} = 'CL + O3 = CLO ';
k(:,i) = (  2.3000E-11.*exp( -2.0000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='O3';
fCL(i)=fCL(i)-1.0;fO3(i)=fO3(i)-1.0;
fCLO(i)=fCLO(i)+  1.0000;

% 554, <CLT02>
i=i+1;
Rnames{ 554} = 'CL + H2 = HCL + HO2 ';
k(:,i) = (  3.0500E-11.*exp( -2.2700E+03./T) ).*H2; 
Gstr{i,   1}='CL';
fCL(i)=fCL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 555, <CLT03>
i=i+1;
Rnames{ 555} = 'CL + HO2 = CLO + HO ';
k(:,i) = (  3.6000E-11.*exp( -3.7500E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HO2';
fCL(i)=fCL(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fCLO(i)=fCLO(i)+  1.0000;fHO(i)=fHO(i)+  1.0000;

% 556, <CLT04>
i=i+1;
Rnames{ 556} = 'CL + HO2 = HCL ';
k(:,i) = (  1.4000E-11.*exp(  2.7000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HO2';
fCL(i)=fCL(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;

% 557, <CLT05>
i=i+1;
Rnames{ 557} = 'CL + H2O2 = HCL + HO2 ';
k(:,i) = (  1.1000E-11.*exp( -9.8000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='H2O2';
fCL(i)=fCL(i)-1.0;fH2O2(i)=fH2O2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 558, <CLT06>
i=i+1;
Rnames{ 558} = 'CL + CLOO = 2.00000*CLO ';
k(:,i) = (  1.2000E-11.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CLOO';
fCL(i)=fCL(i)-1.0;fCLOO(i)=fCLOO(i)-1.0;
fCLO(i)=fCLO(i)+  2.0000;

% 559, <CLT07>
i=i+1;
Rnames{ 559} = 'CL + CLOO = CL2 ';
k(:,i) = (  2.3000E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CLOO';
fCL(i)=fCL(i)-1.0;fCLOO(i)=fCLOO(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;

% 560, <CLT08>
i=i+1;
Rnames{ 560} = 'CL + OCLO = 2.00000*CLO ';
k(:,i) = (  3.4000E-11.*exp(  1.6000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='OCLO';
fCL(i)=fCL(i)-1.0;fOCLO(i)=fOCLO(i)-1.0;
fCLO(i)=fCLO(i)+  2.0000;

% 561, <CLT09>
i=i+1;
Rnames{ 561} = 'CL + CL2O2 = CL2 + CLOO ';
k(:,i) = (  7.6000E-11.*exp(  6.5000E+01./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CL2O2';
fCL(i)=fCL(i)-1.0;fCL2O2(i)=fCL2O2(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 562, <CLT10>
i=i+1;
Rnames{ 562} = 'CL + HOCL = CL2 + HO ';
k(:,i) = (  3.4000E-12.*exp( -1.3000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HOCL';
fCL(i)=fCL(i)-1.0;fHOCL(i)=fHOCL(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;fHO(i)=fHO(i)+  1.0000;

% 563, <CLT11>
i=i+1;
Rnames{ 563} = 'CL + NO + M = CLNO ';
k(:,i) = (  7.7000E-32.*(T./300).^( -1.8000E+00) ).*M; 
Gstr{i,   1}='CL';Gstr{i,   2}='NO';
fCL(i)=fCL(i)-1.0;fNO(i)=fNO(i)-1.0;
fCLNO(i)=fCLNO(i)+  1.0000;

% 564, <CLT12>
i=i+1;
Rnames{ 564} = 'CL + NO2 = CLNO2 ';
xko =   1.8000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -2.0000E+00;
xkinf =   1.0000E-10.*exp(  0.0000E+00./T).*(T./300).^ -1.0000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='CL';Gstr{i,   2}='NO2';
fCL(i)=fCL(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fCLNO2(i)=fCLNO2(i)+  1.0000;

% 565, <CLT14>
i=i+1;
Rnames{ 565} = 'CL + NO3 = CLO + NO2 ';
k(:,i) = (  2.4000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='NO3';
fCL(i)=fCL(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fCLO(i)=fCLO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 566, <CLT15>
i=i+1;
Rnames{ 566} = 'CL + CLNO = CL2 + NO ';
k(:,i) = (  5.8000E-11.*exp(  1.0000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CLNO';
fCL(i)=fCL(i)-1.0;fCLNO(i)=fCLNO(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;fNO(i)=fNO(i)+  1.0000;

% 567, <CLT17>
i=i+1;
Rnames{ 567} = 'CL + CLNO3 = CL2 + NO3 ';
k(:,i) = (  6.2000E-12.*exp(  1.4500E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CLNO3';
fCL(i)=fCL(i)-1.0;fCLNO3(i)=fCLNO3(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 568, <CLT22>
i=i+1;
Rnames{ 568} = 'CLO + HO2 = HOCL ';
k(:,i) = (  2.6000E-12.*exp(  2.9000E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='HO2';
fCLO(i)=fCLO(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHOCL(i)=fHOCL(i)+  1.0000;

% 569, <CLT23>
i=i+1;
Rnames{ 569} = 'CLO + NO = CL + NO2 ';
k(:,i) = (  6.4000E-12.*exp(  2.9000E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='NO';
fCLO(i)=fCLO(i)-1.0;fNO(i)=fNO(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 570, <CLT25>
i=i+1;
Rnames{ 570} = 'CLO + NO2 = CLNO3 ';
xko =   1.8000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -3.4000E+00;
xkinf =   1.5000E-11.*exp(  0.0000E+00./T).*(T./300).^ -1.9000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='NO2';
fCLO(i)=fCLO(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fCLNO3(i)=fCLNO3(i)+  1.0000;

% 571, <CLT27>
i=i+1;
Rnames{ 571} = 'CLO + CLO = CL2 ';
k(:,i) = (  1.0000E-12.*exp( -1.5900E+03./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='CLO';
fCLO(i)=fCLO(i)-1.0;fCLO(i)=fCLO(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;

% 572, <CLT28>
i=i+1;
Rnames{ 572} = 'CLO + CLO = OCLO + CL ';
k(:,i) = (  3.5000E-13.*exp( -1.3700E+03./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='CLO';
fCLO(i)=fCLO(i)-1.0;fCLO(i)=fCLO(i)-1.0;
fOCLO(i)=fOCLO(i)+  1.0000;fCL(i)=fCL(i)+  1.0000;

% 573, <CLT31>
i=i+1;
Rnames{ 573} = 'CLO + CLO = CL2O2 ';
xko =   1.9000E-32.*M.*exp(  0.0000E+00./T).*(T./300).^ -3.6000E+00;
xkinf =   3.7000E-12.*exp(  0.0000E+00./T).*(T./300).^ -1.6000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='CLO';
fCLO(i)=fCLO(i)-1.0;fCLO(i)=fCLO(i)-1.0;
fCL2O2(i)=fCL2O2(i)+  1.0000;

% 574, <CLT32>
i=i+1;
Rnames{ 574} = 'CL2O2 = 2.00000*CLO ';
k(:,i) = (  4.6296E+26.*exp( -8.5370E+03./T).*k(:, 573) ); 
Gstr{i,   1}='CL2O2';
fCL2O2(i)=fCL2O2(i)-1.0;
fCLO(i)=fCLO(i)+  2.0000;

% 575, <CLT35>
i=i+1;
Rnames{ 575} = 'OCLO + NO = CLO + NO2 ';
k(:,i) = (  1.1000E-13.*exp(  3.5000E+02./T) ); 
Gstr{i,   1}='OCLO';Gstr{i,   2}='NO';
fOCLO(i)=fOCLO(i)-1.0;fNO(i)=fNO(i)-1.0;
fCLO(i)=fCLO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 576, <CLT36>
i=i+1;
Rnames{ 576} = 'HO + CL2 = CL + HOCL ';
k(:,i) = (  2.6000E-12.*exp( -1.1000E+03./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CL2';
fHO(i)=fHO(i)-1.0;fCL2(i)=fCL2(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fHOCL(i)=fHOCL(i)+  1.0000;

% 577, <CLT37>
i=i+1;
Rnames{ 577} = 'HO + CLO = HCL ';
k(:,i) = (  6.0000E-13.*exp(  2.3000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CLO';
fHO(i)=fHO(i)-1.0;fCLO(i)=fCLO(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;

% 578, <CLT38>
i=i+1;
Rnames{ 578} = 'HO + CLO = CL + HO2 ';
k(:,i) = (  7.4000E-12.*exp(  2.7000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CLO';
fHO(i)=fHO(i)-1.0;fCLO(i)=fCLO(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 579, <CLT39>
i=i+1;
Rnames{ 579} = 'HO + HCL = CL ';
k(:,i) = (  1.8000E-12.*exp( -2.5000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HCL';
fHO(i)=fHO(i)-1.0;fHCL(i)=fHCL(i)-1.0;
fCL(i)=fCL(i)+  1.0000;

% 580, <CLT40>
i=i+1;
Rnames{ 580} = 'HO + HOCL = CLO ';
k(:,i) = (  3.0000E-12.*exp( -5.0000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HOCL';
fHO(i)=fHO(i)-1.0;fHOCL(i)=fHOCL(i)-1.0;
fCLO(i)=fCLO(i)+  1.0000;

% 581, <CLT41>
i=i+1;
Rnames{ 581} = 'HO + CLNO2 = HOCL + NO2 ';
k(:,i) = (  2.4000E-12.*exp( -1.2500E+03./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CLNO2';
fHO(i)=fHO(i)-1.0;fCLNO2(i)=fCLNO2(i)-1.0;
fHOCL(i)=fHOCL(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 582, <CLT43>
i=i+1;
Rnames{ 582} = 'HO + CLNO3 = HOCL + NO3 ';
k(:,i) = (  1.2000E-12.*exp( -3.3000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CLNO3';
fHO(i)=fHO(i)-1.0;fCLNO3(i)=fCLNO3(i)-1.0;
fHOCL(i)=fHOCL(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 583, <CLT44>
i=i+1;
Rnames{ 583} = 'HO + OCLO = HOCL ';
k(:,i) = (  1.4000E-12.*exp(  6.0000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='OCLO';
fHO(i)=fHO(i)-1.0;fOCLO(i)=fOCLO(i)-1.0;
fHOCL(i)=fHOCL(i)+  1.0000;

% 584, <CLT45>
i=i+1;
Rnames{ 584} = 'HO + CL2O2 = HOCL + CLOO ';
k(:,i) = (  6.0000E-13.*exp(  6.7000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CL2O2';
fHO(i)=fHO(i)-1.0;fCL2O2(i)=fCL2O2(i)-1.0;
fHOCL(i)=fHOCL(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 585, <CLTO01>
i=i+1;
Rnames{ 585} = 'CL + CH4 = HCL + MO2 ';
k(:,i) = (  7.1000E-12.*exp( -1.2700E+03./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CH4';
fCL(i)=fCL(i)-1.0;fCH4(i)=fCH4(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;

% 586, <CLTO02>
i=i+1;
Rnames{ 586} = 'CL + ETH = HCL + ETHP ';
k(:,i) = (  7.2000E-11.*exp( -7.0000E+01./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ETH';
fCL(i)=fCL(i)-1.0;fETH(i)=fETH(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fETHP(i)=fETHP(i)+  1.0000;

% 587, <CLTO03>
i=i+1;
Rnames{ 587} = 'CL + HC3 = HCL + HC3P +  0.00003*ASOATJ ';
k(:,i) = (  1.4000E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HC3';
fCL(i)=fCL(i)-1.0;fHC3(i)=fHC3(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHC3P(i)=fHC3P(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.0000;

% 588, <CLTO04>
i=i+1;
Rnames{ 588} = 'CL + HC5 = HCL + HC5P +  0.00134*ASOATJ ';
k(:,i) = (  2.7000E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HC5';
fCL(i)=fCL(i)-1.0;fHC5(i)=fHC5(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHC5P(i)=fHC5P(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.0013;

% 589, <CLTO05>
i=i+1;
Rnames{ 589} = 'CL + HC10 = HCL + HC10P ';
k(:,i) = (  5.2700E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HC10';
fCL(i)=fCL(i)-1.0;fHC10(i)=fHC10(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHC10P(i)=fHC10P(i)+  1.0000;

% 590, <CLTO06>
i=i+1;
Rnames{ 590} = 'CL + HCHO = HCL + HO2 + CO ';
k(:,i) = (  8.1000E-11.*exp( -3.0000E+01./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HCHO';
fCL(i)=fCL(i)-1.0;fHCHO(i)=fHCHO(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 591, <CLTO07>
i=i+1;
Rnames{ 591} = 'CL + ACD = HCL + ACO3 ';
k(:,i) = (  8.0000E-11.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ACD';
fCL(i)=fCL(i)-1.0;fACD(i)=fACD(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fACO3(i)=fACO3(i)+  1.0000;

% 592, <CLTO08>
i=i+1;
Rnames{ 592} = 'CL + ALD = HCL + RCO3 ';
k(:,i) = (  2.8000E-11.*exp(  4.5300E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ALD';
fCL(i)=fCL(i)-1.0;fALD(i)=fALD(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fRCO3(i)=fRCO3(i)+  1.0000;

% 593, <CLTO09>
i=i+1;
Rnames{ 593} = 'CL + ACT = HCL + ACTP ';
k(:,i) = (  2.6000E-11.*exp( -7.4500E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ACT';
fCL(i)=fCL(i)-1.0;fACT(i)=fACT(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fACTP(i)=fACTP(i)+  1.0000;

% 594, <CLTO10>
i=i+1;
Rnames{ 594} = 'CL + MOH = HCL + HO2 + HCHO ';
k(:,i) = (  5.5000E-11.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MOH';
fCL(i)=fCL(i)-1.0;fMOH(i)=fMOH(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 595, <CLTO11>
i=i+1;
Rnames{ 595} = 'CL + EOH = HCL + HO2 + ACD ';
k(:,i) = (  6.0000E-11.*exp(  1.5500E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='EOH';
fCL(i)=fCL(i)-1.0;fEOH(i)=fEOH(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fACD(i)=fACD(i)+  1.0000;

% 596, <CLTO12>
i=i+1;
Rnames{ 596} = 'CL + ROH = HCL + HO2 +  0.71900*ALD +  0.18400*ACD ';
k(:,i) = (  1.7000E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ROH';
fCL(i)=fCL(i)-1.0;fROH(i)=fROH(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fALD(i)=fALD(i)+  0.7190;fACD(i)=fACD(i)+  0.1840;

% 597, <CLTO13>
i=i+1;
Rnames{ 597} = 'CL + ORA1 = HCL + HO2 ';
k(:,i) = (  2.0000E-13 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ORA1';
fCL(i)=fCL(i)-1.0;fORA1(i)=fORA1(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 598, <CLTO14>
i=i+1;
Rnames{ 598} = 'CL + ORA2 = HCL +  0.64000*MO2 +  0.36000*ORAP ';
k(:,i) = (  2.7000E-14 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ORA2';
fCL(i)=fCL(i)-1.0;fORA2(i)=fORA2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMO2(i)=fMO2(i)+  0.6400;fORAP(i)=fORAP(i)+  0.3600;

% 599, <CLTO15>
i=i+1;
Rnames{ 599} = 'CL + PINAL = HCL +  0.23000*PINALP +  0.77000*RCO3 ';
k(:,i) = (  2.3000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='PINAL';
fCL(i)=fCL(i)-1.0;fPINAL(i)=fPINAL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fPINALP(i)=fPINALP(i)+  0.2300;fRCO3(i)=fRCO3(i)+  0.7700;

% 600, <CTLO16>
i=i+1;
Rnames{ 600} = 'CL + LIMAL = HCL +  0.83000*LIMALP +  0.17000*RCO3 ';
k(:,i) = (  2.3000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='LIMAL';
fCL(i)=fCL(i)-1.0;fLIMAL(i)=fLIMAL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fLIMALP(i)=fLIMALP(i)+  0.8300;fRCO3(i)=fRCO3(i)+  0.1700;

% 601, <CLTO17>
i=i+1;
Rnames{ 601} = 'CL + MEK = HCL + MEKP ';
k(:,i) = (  4.1000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MEK';
fCL(i)=fCL(i)-1.0;fMEK(i)=fMEK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMEKP(i)=fMEKP(i)+  1.0000;

% 602, <CLTO18>
i=i+1;
Rnames{ 602} = 'CL + KET = HCL + KETP ';
k(:,i) = (  1.1600E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='KET';
fCL(i)=fCL(i)-1.0;fKET(i)=fKET(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fKETP(i)=fKETP(i)+  1.0000;

% 603, <CLTO19>
i=i+1;
Rnames{ 603} = 'CL + HKET = HCL + HO2 + MGLY ';
k(:,i) = (  5.4000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HKET';
fCL(i)=fCL(i)-1.0;fHKET(i)=fHKET(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fMGLY(i)=fMGLY(i)+  1.0000;

% 604, <CLTO20>
i=i+1;
Rnames{ 604} = 'CL + MACR = HCL +  0.57000*MACP +  0.43000*MCP ';
k(:,i) = (  2.6000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MACR';
fCL(i)=fCL(i)-1.0;fMACR(i)=fMACR(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMACP(i)=fMACP(i)+  0.5700;fMCP(i)=fMCP(i)+  0.4300;

% 605, <CLTO21>
i=i+1;
Rnames{ 605} = 'CL + MVK = HCL + MVKP ';
k(:,i) = (  2.0000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MVK';
fCL(i)=fCL(i)-1.0;fMVK(i)=fMVK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMVKP(i)=fMVKP(i)+  1.0000;

% 606, <CLTO22>
i=i+1;
Rnames{ 606} = 'CL + GLY = HCL + HO2 +  2.00000*CO ';
k(:,i) = (  3.6000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='GLY';
fCL(i)=fCL(i)-1.0;fGLY(i)=fGLY(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  2.0000;

% 607, <CLTO23>
i=i+1;
Rnames{ 607} = 'CL + MGLY = HCL + ACO3 + CO ';
k(:,i) = (  5.0000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MGLY';
fCL(i)=fCL(i)-1.0;fMGLY(i)=fMGLY(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fACO3(i)=fACO3(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 608, <CLTO24>
i=i+1;
Rnames{ 608} = 'CL + ETEG = HCL + HO2 + ALD ';
k(:,i) = (  4.6000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ETEG';
fCL(i)=fCL(i)-1.0;fETEG(i)=fETEG(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fALD(i)=fALD(i)+  1.0000;

% 609, <CLTO25>
i=i+1;
Rnames{ 609} = 'CL + OP1 = HCL +  0.35000*HO +  0.65000*MO2 +  0.35000*HCHO ';
k(:,i) = (  5.9000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='OP1';
fCL(i)=fCL(i)-1.0;fOP1(i)=fOP1(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO(i)=fHO(i)+  0.3500;fMO2(i)=fMO2(i)+  0.6500;fHCHO(i)=fHCHO(i)+  0.3500;

% 610, <CLTO26>
i=i+1;
Rnames{ 610} = 'CL + OP2 = HCL +  0.01000*HO +  0.44000*HC3P +  0.07000*XO2 +  0.08000*ALD +  0.41000*KET ';
k(:,i) = (  1.1000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='OP2';
fCL(i)=fCL(i)-1.0;fOP2(i)=fOP2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO(i)=fHO(i)+  0.0100;fHC3P(i)=fHC3P(i)+  0.4400;fXO2(i)=fXO2(i)+  0.0700;fALD(i)=fALD(i)+  0.0800;fKET(i)=fKET(i)+  0.4100;

% 611, <CLTO27>
i=i+1;
Rnames{ 611} = 'CL + VOP3 = HCL +  0.01000*HO +  0.44000*HC10P +  0.07000*XO2 +  0.08000*ALD +  0.41000*KET ';
k(:,i) = (  1.1000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VOP3';
fCL(i)=fCL(i)-1.0;fVOP3(i)=fVOP3(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO(i)=fHO(i)+  0.0100;fHC10P(i)=fHC10P(i)+  0.4400;fXO2(i)=fXO2(i)+  0.0700;fALD(i)=fALD(i)+  0.0800;fKET(i)=fKET(i)+  0.4100;

% 612, <CLTO28>
i=i+1;
Rnames{ 612} = 'CL + OPB = HCL +  0.01000*HO +  0.44000*HC10P +  0.07000*XO2 +  0.08000*ALD +  0.41000*KET ';
k(:,i) = (  1.1000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='OPB';
fCL(i)=fCL(i)-1.0;fOPB(i)=fOPB(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO(i)=fHO(i)+  0.0100;fHC10P(i)=fHC10P(i)+  0.4400;fXO2(i)=fXO2(i)+  0.0700;fALD(i)=fALD(i)+  0.0800;fKET(i)=fKET(i)+  0.4100;

% 613, <CLTO29>
i=i+1;
Rnames{ 613} = 'CL + ISHP = HCL + ISOP ';
k(:,i) = (  1.3600E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ISHP';
fCL(i)=fCL(i)-1.0;fISHP(i)=fISHP(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fISOP(i)=fISOP(i)+  1.0000;

% 614, <CLTO29a>
i=i+1;
Rnames{ 614} = 'CL + ISHP = HCL +  0.04000*MGLY +  0.02000*GLY +  0.13000*MVK +  0.44000*IEPOX +  0.11000*ACO3 +  0.03000*MACR +  2.00000*HO +  0.34000*HO2 +  0.14000*IPX + CO ';
k(:,i) = (  1.5600E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ISHP';
fCL(i)=fCL(i)-1.0;fISHP(i)=fISHP(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMGLY(i)=fMGLY(i)+  0.0400;fGLY(i)=fGLY(i)+  0.0200;fMVK(i)=fMVK(i)+  0.1300;fIEPOX(i)=fIEPOX(i)+  0.4400;fACO3(i)=fACO3(i)+  0.1100;fMACR(i)=fMACR(i)+  0.0300;fHO(i)=fHO(i)+  2.0000;fHO2(i)=fHO2(i)+  0.3400;fIPX(i)=fIPX(i)+  0.1400;fCO(i)=fCO(i)+  1.0000;

% 615, <CLTO30>
i=i+1;
Rnames{ 615} = 'CL + MAHP = HCL + MACP ';
k(:,i) = (  5.1000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MAHP';
fCL(i)=fCL(i)-1.0;fMAHP(i)=fMAHP(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMACP(i)=fMACP(i)+  1.0000;

% 616, <CLTO31>
i=i+1;
Rnames{ 616} = 'CL + PAA = HCL +  0.35000*HO +  0.65000*ACO3 +  0.35000*XO2 +  0.35000*HCHO ';
k(:,i) = (  2.2000E-13 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='PAA';
fCL(i)=fCL(i)-1.0;fPAA(i)=fPAA(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO(i)=fHO(i)+  0.3500;fACO3(i)=fACO3(i)+  0.6500;fXO2(i)=fXO2(i)+  0.3500;fHCHO(i)=fHCHO(i)+  0.3500;

% 617, <CLTO32>
i=i+1;
Rnames{ 617} = 'CL + PAN = HCL + XO2 + NO3 + HCHO ';
k(:,i) = (  1.0000E-14 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='PAN';
fCL(i)=fCL(i)-1.0;fPAN(i)=fPAN(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fXO2(i)=fXO2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 618, <CLTO33>
i=i+1;
Rnames{ 618} = 'CL + PPN = HCL + XO2 + NO3 + HCHO ';
k(:,i) = (  1.1300E-12 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='PPN';
fCL(i)=fCL(i)-1.0;fPPN(i)=fPPN(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fXO2(i)=fXO2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 619, <CLTO34>
i=i+1;
Rnames{ 619} = 'CL + MPAN = HCL + NO2 + HKET ';
k(:,i) = (  9.1000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MPAN';
fCL(i)=fCL(i)-1.0;fMPAN(i)=fMPAN(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHKET(i)=fHKET(i)+  1.0000;

% 620, <CLTO35>
i=i+1;
Rnames{ 620} = 'CL + ONIT = HCL + HC3P + NO2 ';
k(:,i) = (  2.2000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ONIT';
fCL(i)=fCL(i)-1.0;fONIT(i)=fONIT(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHC3P(i)=fHC3P(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 621, <CLTO36>
i=i+1;
Rnames{ 621} = 'CL + VTRPN = HCL +  0.33000*VHONIT +  0.67000*NO2 +  0.27000*PINAL +  0.38000*KET +  0.21000*HCHO +  0.02000*ALD ';
k(:,i) = (  4.8000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VTRPN';
fCL(i)=fCL(i)-1.0;fVTRPN(i)=fVTRPN(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVHONIT(i)=fVHONIT(i)+  0.3300;fNO2(i)=fNO2(i)+  0.6700;fPINAL(i)=fPINAL(i)+  0.2700;fKET(i)=fKET(i)+  0.3800;fHCHO(i)=fHCHO(i)+  0.2100;fALD(i)=fALD(i)+  0.0200;

% 622, <CLTO37>
i=i+1;
Rnames{ 622} = 'CL + INALD = HCL + CO + NO2 +  0.30000*HO2 + HCHO ';
k(:,i) = (  9.1000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='INALD';
fCL(i)=fCL(i)-1.0;fINALD(i)=fINALD(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHO2(i)=fHO2(i)+  0.3000;fHCHO(i)=fHCHO(i)+  1.0000;

% 623, <CLTO38>
i=i+1;
Rnames{ 623} = 'CL + ISON = HCL + HO +  0.35000*INALD +  0.17000*IEPOX +  0.65000*NO2 ';
k(:,i) = (  1.3000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ISON';
fCL(i)=fCL(i)-1.0;fISON(i)=fISON(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO(i)=fHO(i)+  1.0000;fINALD(i)=fINALD(i)+  0.3500;fIEPOX(i)=fIEPOX(i)+  0.1700;fNO2(i)=fNO2(i)+  0.6500;

% 624, <CLTO39>
i=i+1;
Rnames{ 624} = 'CL + FURANONE = HCL +  0.65000*KET +  0.31000*GLY +  0.66000*HO2 +  0.34000*MO2 +  0.43000*CO +  0.04000*ASOATJ ';
k(:,i) = (  1.8000E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='FURANONE';
fCL(i)=fCL(i)-1.0;fFURANONE(i)=fFURANONE(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fKET(i)=fKET(i)+  0.6500;fGLY(i)=fGLY(i)+  0.3100;fHO2(i)=fHO2(i)+  0.6600;fMO2(i)=fMO2(i)+  0.3400;fCO(i)=fCO(i)+  0.4300;fASOATJ(i)=fASOATJ(i)+  0.0400;

% 625, <CLTO40>
i=i+1;
Rnames{ 625} = 'CL + PROG = HCL +  0.61300*HKET +  0.38700*ALD + HO2 ';
k(:,i) = (  2.1000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='PROG';
fCL(i)=fCL(i)-1.0;fPROG(i)=fPROG(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHKET(i)=fHKET(i)+  0.6130;fALD(i)=fALD(i)+  0.3870;fHO2(i)=fHO2(i)+  1.0000;

% 626, <CLTO41>
i=i+1;
Rnames{ 626} = 'CL + ETE = HCL + ETEP ';
k(:,i) = (  9.5000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ETE';
fCL(i)=fCL(i)-1.0;fETE(i)=fETE(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fETEP(i)=fETEP(i)+  1.0000;

% 627, <CLTO42>
i=i+1;
Rnames{ 627} = 'CL + OLT = HCL + OLTP ';
k(:,i) = (  3.0000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='OLT';
fCL(i)=fCL(i)-1.0;fOLT(i)=fOLT(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fOLTP(i)=fOLTP(i)+  1.0000;

% 628, <CLTO43>
i=i+1;
Rnames{ 628} = 'CL + OLI = HCL + OLIP ';
k(:,i) = (  3.5000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='OLI';
fCL(i)=fCL(i)-1.0;fOLI(i)=fOLI(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fOLIP(i)=fOLIP(i)+  1.0000;

% 629, <CLTO44>
i=i+1;
Rnames{ 629} = 'CL + ISO = HCOCL + ISOP +  0.25000*HCHO +  0.03000*MACR +  0.05000*MGLY ';
k(:,i) = (  4.6000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ISO';
fCL(i)=fCL(i)-1.0;fISO(i)=fISO(i)-1.0;
fHCOCL(i)=fHCOCL(i)+  1.0000;fISOP(i)=fISOP(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.2500;fMACR(i)=fMACR(i)+  0.0300;fMGLY(i)=fMGLY(i)+  0.0500;

% 630, <CLTO45>
i=i+1;
Rnames{ 630} = 'CL + API = HCL +  0.97500*APIP1 +  0.02500*APIP2 ';
k(:,i) = (  2.4000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='API';
fCL(i)=fCL(i)-1.0;fAPI(i)=fAPI(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fAPIP1(i)=fAPIP1(i)+  0.9750;fAPIP2(i)=fAPIP2(i)+  0.0250;

% 631, <CLTO46>
i=i+1;
Rnames{ 631} = 'CL + LIM = HCL +  0.94500*LIMP1 +  0.05500*LIMP2 ';
k(:,i) = (  7.4000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='LIM';
fCL(i)=fCL(i)-1.0;fLIM(i)=fLIM(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fLIMP1(i)=fLIMP1(i)+  0.9450;fLIMP2(i)=fLIMP2(i)+  0.0550;

% 632, <CLTO47>
i=i+1;
Rnames{ 632} = 'CL + ACE = HCL +  0.65000*HO +  0.35000*HO2 +  0.35000*CO +  0.65000*GLY +  0.35000*ORA1 ';
k(:,i) = (  1.0600E-11.*exp(  4.8000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ACE';
fCL(i)=fCL(i)-1.0;fACE(i)=fACE(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO(i)=fHO(i)+  0.6500;fHO2(i)=fHO2(i)+  0.3500;fCO(i)=fCO(i)+  0.3500;fGLY(i)=fGLY(i)+  0.6500;fORA1(i)=fORA1(i)+  0.3500;

% 633, <CLTO48>
i=i+1;
Rnames{ 633} = 'CL + UALD = HCL +  0.31300*ACO3 +  0.68700*UALP ';
k(:,i) = (  2.6000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='UALD';
fCL(i)=fCL(i)-1.0;fUALD(i)=fUALD(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fACO3(i)=fACO3(i)+  0.3130;fUALP(i)=fUALP(i)+  0.6870;

% 634, <CLTO49>
i=i+1;
Rnames{ 634} = 'CL + DCB1 = HCL +  0.52000*HO2 +  0.33000*CO +  0.40000*ALD +  0.78000*KET +  0.10000*GLY +  0.01000*MGLY ';
k(:,i) = (  3.7000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='DCB1';
fCL(i)=fCL(i)-1.0;fDCB1(i)=fDCB1(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5200;fCO(i)=fCO(i)+  0.3300;fALD(i)=fALD(i)+  0.4000;fKET(i)=fKET(i)+  0.7800;fGLY(i)=fGLY(i)+  0.1000;fMGLY(i)=fMGLY(i)+  0.0100;

% 635, <CLTO50>
i=i+1;
Rnames{ 635} = 'CL + DCB2 = HCL +  0.52000*HO2 +  0.33000*CO +  0.13000*MEK +  0.10000*GLY +  0.01000*MGLY +  0.78000*OP2 ';
k(:,i) = (  3.7000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='DCB2';
fCL(i)=fCL(i)-1.0;fDCB2(i)=fDCB2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5200;fCO(i)=fCO(i)+  0.3300;fMEK(i)=fMEK(i)+  0.1300;fGLY(i)=fGLY(i)+  0.1000;fMGLY(i)=fMGLY(i)+  0.0100;fOP2(i)=fOP2(i)+  0.7800;

% 636, <CLTO51>
i=i+1;
Rnames{ 636} = 'CL + DCB3 = HCL +  0.56000*HO2 +  0.21000*MACP +  0.11000*CO +  0.27000*GLY +  0.01000*MGLY +  0.79000*OP2 ';
k(:,i) = (  7.4000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='DCB3';
fCL(i)=fCL(i)-1.0;fDCB3(i)=fDCB3(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5600;fMACP(i)=fMACP(i)+  0.2100;fCO(i)=fCO(i)+  0.1100;fGLY(i)=fGLY(i)+  0.2700;fMGLY(i)=fMGLY(i)+  0.0100;fOP2(i)=fOP2(i)+  0.7900;

% 637, <CLTO52>
i=i+1;
Rnames{ 637} = 'CL + SESQ = HCL + SESQRO2 ';
k(:,i) = (  5.3000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='SESQ';
fCL(i)=fCL(i)-1.0;fSESQ(i)=fSESQ(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fSESQRO2(i)=fSESQRO2(i)+  1.0000;

% 638, <CLTO53>
i=i+1;
Rnames{ 638} = 'CL + ACRO = HCL +  0.57000*MACP +  0.43000*MCP ';
k(:,i) = (  2.2300E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='ACRO';
fCL(i)=fCL(i)-1.0;fACRO(i)=fACRO(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMACP(i)=fMACP(i)+  0.5700;fMCP(i)=fMCP(i)+  0.4300;

% 639, <CLTO54>
i=i+1;
Rnames{ 639} = 'CL + BDE13 = HCL +  0.66700*BDE13P +  0.33300*UALD +  0.33300*HO2 ';
k(:,i) = (  3.3000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='BDE13';
fCL(i)=fCL(i)-1.0;fBDE13(i)=fBDE13(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fBDE13P(i)=fBDE13P(i)+  0.6670;fUALD(i)=fUALD(i)+  0.3330;fHO2(i)=fHO2(i)+  0.3330;

% 640, <CLTO55>
i=i+1;
Rnames{ 640} = 'CL + BEN = HCL +  0.47000*BENP +  0.53000*PHEN +  0.53000*HO2 ';
k(:,i) = (  1.5000E-16 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='BEN';
fCL(i)=fCL(i)-1.0;fBEN(i)=fBEN(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fBENP(i)=fBENP(i)+  0.4700;fPHEN(i)=fPHEN(i)+  0.5300;fHO2(i)=fHO2(i)+  0.5300;

% 641, <CLTO56>
i=i+1;
Rnames{ 641} = 'CL + TOL = HCL +  0.82000*TOLP +  0.18000*CSL +  0.18000*HO2 ';
k(:,i) = (  6.0000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='TOL';
fCL(i)=fCL(i)-1.0;fTOL(i)=fTOL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fTOLP(i)=fTOLP(i)+  0.8200;fCSL(i)=fCSL(i)+  0.1800;fHO2(i)=fHO2(i)+  0.1800;

% 642, <CLTO58>
i=i+1;
Rnames{ 642} = 'CL + XYL = HCL +  0.83000*XYLP +  0.17000*CSL +  0.17000*HO2 ';
k(:,i) = (  1.4500E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='XYL';
fCL(i)=fCL(i)-1.0;fXYL(i)=fXYL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fXYLP(i)=fXYLP(i)+  0.8300;fCSL(i)=fCSL(i)+  0.1700;fHO2(i)=fHO2(i)+  0.1700;

% 643, <CLTO59>
i=i+1;
Rnames{ 643} = 'CL + BALD = HCL + BALP ';
k(:,i) = (  9.9000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='BALD';
fCL(i)=fCL(i)-1.0;fBALD(i)=fBALD(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fBALP(i)=fBALP(i)+  1.0000;

% 644, <CLTO60>
i=i+1;
Rnames{ 644} = 'CL + PHEN = HCL +  0.15200*ASOATJ +  0.61900*HO2 +  0.17000*ADDC +  0.05900*CHO +  0.61900*MCT ';
k(:,i) = (  2.0000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='PHEN';
fCL(i)=fCL(i)-1.0;fPHEN(i)=fPHEN(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.1520;fHO2(i)=fHO2(i)+  0.6190;fADDC(i)=fADDC(i)+  0.1700;fCHO(i)=fCHO(i)+  0.0590;fMCT(i)=fMCT(i)+  0.6190;

% 645, <CLTO61>
i=i+1;
Rnames{ 645} = 'CL + CSL = HCL +  0.20000*ASOATJ +  0.58400*HO2 +  0.16000*ADDC +  0.05600*CHO +  0.58400*MCT ';
k(:,i) = (  3.5000E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CSL';
fCL(i)=fCL(i)-1.0;fCSL(i)=fCSL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.2000;fHO2(i)=fHO2(i)+  0.5840;fADDC(i)=fADDC(i)+  0.1600;fCHO(i)=fCHO(i)+  0.0560;fMCT(i)=fMCT(i)+  0.5840;

% 646, <CLTO62>
i=i+1;
Rnames{ 646} = 'CL + MCT = HCL + MCTO ';
k(:,i) = (  1.6000E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='MCT';
fCL(i)=fCL(i)-1.0;fMCT(i)=fMCT(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fMCTO(i)=fMCTO(i)+  1.0000;

% 647, <CLTO63>
i=i+1;
Rnames{ 647} = 'CL + NAPH = HCL +  0.84000*NAPHP +  0.16000*HO2 +  0.16000*VROCP3OXY2 ';
k(:,i) = (  2.8000E-15 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='NAPH';
fCL(i)=fCL(i)-1.0;fNAPH(i)=fNAPH(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fNAPHP(i)=fNAPHP(i)+  0.8400;fHO2(i)=fHO2(i)+  0.1600;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1600;

% 648, <CLTO64>
i=i+1;
Rnames{ 648} = 'CL + FURAN = HCL +  0.49000*DCB1 +  0.49000*HO2 +  0.51000*FURANO2 ';
k(:,i) = (  2.0000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='FURAN';
fCL(i)=fCL(i)-1.0;fFURAN(i)=fFURAN(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fDCB1(i)=fDCB1(i)+  0.4900;fHO2(i)=fHO2(i)+  0.4900;fFURANO2(i)=fFURANO2(i)+  0.5100;

% 649, <CLTO65>
i=i+1;
Rnames{ 649} = 'CL + VROCP1ALK = HCL + VROCP1ALKP ';
k(:,i) = (  1.8200E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP1ALK';
fCL(i)=fCL(i)-1.0;fVROCP1ALK(i)=fVROCP1ALK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP1ALKP(i)=fVROCP1ALKP(i)+  1.0000;

% 650, <CLTO66>
i=i+1;
Rnames{ 650} = 'CL + VROCP2ALK = HCL + VROCP2ALKP ';
k(:,i) = (  1.6700E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP2ALK';
fCL(i)=fCL(i)-1.0;fVROCP2ALK(i)=fVROCP2ALK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP2ALKP(i)=fVROCP2ALKP(i)+  1.0000;

% 651, <CLTO67>
i=i+1;
Rnames{ 651} = 'CL + VROCP3ALK = HCL + VROCP3ALKP ';
k(:,i) = (  1.4500E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP3ALK';
fCL(i)=fCL(i)-1.0;fVROCP3ALK(i)=fVROCP3ALK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP3ALKP(i)=fVROCP3ALKP(i)+  1.0000;

% 652, <CLTO68>
i=i+1;
Rnames{ 652} = 'CL + VROCP4ALK = HCL + VROCP4ALKP ';
k(:,i) = (  1.2240E-09 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP4ALK';
fCL(i)=fCL(i)-1.0;fVROCP4ALK(i)=fVROCP4ALK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP4ALKP(i)=fVROCP4ALKP(i)+  1.0000;

% 653, <CLTO69>
i=i+1;
Rnames{ 653} = 'CL + VROCP5ALK = HCL + VROCP5ALKP ';
k(:,i) = (  9.3000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP5ALK';
fCL(i)=fCL(i)-1.0;fVROCP5ALK(i)=fVROCP5ALK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP5ALKP(i)=fVROCP5ALKP(i)+  1.0000;

% 654, <CLTO70>
i=i+1;
Rnames{ 654} = 'CL + VROCP6ALK = HCL + VROCP6ALKP ';
k(:,i) = (  8.5100E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP6ALK';
fCL(i)=fCL(i)-1.0;fVROCP6ALK(i)=fVROCP6ALK(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP6ALKP(i)=fVROCP6ALKP(i)+  1.0000;

% 655, <CLTO71>
i=i+1;
Rnames{ 655} = 'CL + SLOWROC = HCL + ETHP +  0.00101*ASOATJ ';
k(:,i) = (  3.4300E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='SLOWROC';
fCL(i)=fCL(i)-1.0;fSLOWROC(i)=fSLOWROC(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fETHP(i)=fETHP(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.0010;

% 656, <CLTO72>
i=i+1;
Rnames{ 656} = 'CL + VROCP5ARO = HCL +  0.84000*VROCP5AROP +  0.16000*HO2 +  0.16000*VROCP3OXY2 ';
k(:,i) = (  1.3700E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP5ARO';
fCL(i)=fCL(i)-1.0;fVROCP5ARO(i)=fVROCP5ARO(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP5AROP(i)=fVROCP5AROP(i)+  0.8400;fHO2(i)=fHO2(i)+  0.1600;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1600;

% 657, <CLTO73>
i=i+1;
Rnames{ 657} = 'CL + VROCP6ARO = HCL +  0.84000*VROCP6AROP +  0.16000*HO2 +  0.16000*VROCP4OXY2 ';
k(:,i) = (  1.3700E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP6ARO';
fCL(i)=fCL(i)-1.0;fVROCP6ARO(i)=fVROCP6ARO(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCP6AROP(i)=fVROCP6AROP(i)+  0.8400;fHO2(i)=fHO2(i)+  0.1600;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.1600;

% 658, <CLTO74>
i=i+1;
Rnames{ 658} = 'CL + VROCN1OXY1 = HCL +  0.00740*VROCN2OXY8 +  0.11900*VROCN2OXY4 +  0.76730*VROCN2OXY2 +  0.01320*VROCN1OXY6 +  0.06140*VROCN1OXY3 +  0.03050*VROCN1OXY1 +  0.03670*VROCP0OXY4 +  0.06050*VROCP0OXY2 +  0.04880*VROCP1OXY3 +  0.02020*VROCP1OXY1 +  0.05840*VROCP2OXY2 +  0.03750*VROCP3OXY2 +  0.00740*VROCP4OXY2 +  0.01790*VOP3 +  0.02580*OP2 +  0.02440*MEK +  0.02440*KET +  0.02440*HCHO +  0.01220*ACD +  0.02440*ALD +  0.02440*MO2 +  0.02440*ETHP +  0.02440*HC3P +  0.02440*MEKP +  0.02440*KETP ';
k(:,i) = (  3.0900E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCN1OXY1';
fCL(i)=fCL(i)-1.0;fVROCN1OXY1(i)=fVROCN1OXY1(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0074;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1190;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.7673;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0132;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0614;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0305;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0367;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0605;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0488;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0202;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0584;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0375;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0074;fVOP3(i)=fVOP3(i)+  0.0179;fOP2(i)=fOP2(i)+  0.0258;fMEK(i)=fMEK(i)+  0.0244;fKET(i)=fKET(i)+  0.0244;fHCHO(i)=fHCHO(i)+  0.0244;fACD(i)=fACD(i)+  0.0122;fALD(i)=fALD(i)+  0.0244;fMO2(i)=fMO2(i)+  0.0244;fETHP(i)=fETHP(i)+  0.0244;fHC3P(i)=fHC3P(i)+  0.0244;fMEKP(i)=fMEKP(i)+  0.0244;fKETP(i)=fKETP(i)+  0.0244;

% 659, <CLTO75>
i=i+1;
Rnames{ 659} = 'CL + VROCN1OXY3 = HCL +  0.36090*VROCN2OXY8 +  0.52000*VROCN2OXY4 +  0.00880*VROCN2OXY2 +  0.14520*VROCN1OXY6 +  0.04200*VROCN1OXY3 +  0.05240*VROCP0OXY4 +  0.06460*MEK +  0.06460*KET +  0.06460*HCHO +  0.03230*ACD +  0.06460*ALD +  0.06460*MO2 +  0.06460*ETHP +  0.06460*HC3P +  0.06460*MEKP +  0.06460*KETP ';
k(:,i) = (  3.7700E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCN1OXY3';
fCL(i)=fCL(i)-1.0;fVROCN1OXY3(i)=fVROCN1OXY3(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.3609;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.5200;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0088;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.1452;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0420;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0524;fMEK(i)=fMEK(i)+  0.0646;fKET(i)=fKET(i)+  0.0646;fHCHO(i)=fHCHO(i)+  0.0646;fACD(i)=fACD(i)+  0.0323;fALD(i)=fALD(i)+  0.0646;fMO2(i)=fMO2(i)+  0.0646;fETHP(i)=fETHP(i)+  0.0646;fHC3P(i)=fHC3P(i)+  0.0646;fMEKP(i)=fMEKP(i)+  0.0646;fKETP(i)=fKETP(i)+  0.0646;

% 660, <CLTO76>
i=i+1;
Rnames{ 660} = 'CL + VROCN2OXY2 = HCL +  0.11560*VROCN2OXY8 +  0.68950*VROCN2OXY4 +  0.26420*VROCN2OXY2 +  0.06630*VROCN1OXY6 +  0.06350*VROCN1OXY3 +  0.09500*VROCP0OXY4 +  0.03320*VOP3 +  0.03900*MEK +  0.03900*KET +  0.03900*HCHO +  0.01950*ACD +  0.03900*ALD +  0.03900*MO2 +  0.03900*ETHP +  0.03900*HC3P +  0.03900*MEKP +  0.03900*KETP ';
k(:,i) = (  3.8300E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCN2OXY2';
fCL(i)=fCL(i)-1.0;fVROCN2OXY2(i)=fVROCN2OXY2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.1156;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.6895;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.2642;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0663;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0635;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0950;fVOP3(i)=fVOP3(i)+  0.0332;fMEK(i)=fMEK(i)+  0.0390;fKET(i)=fKET(i)+  0.0390;fHCHO(i)=fHCHO(i)+  0.0390;fACD(i)=fACD(i)+  0.0195;fALD(i)=fALD(i)+  0.0390;fMO2(i)=fMO2(i)+  0.0390;fETHP(i)=fETHP(i)+  0.0390;fHC3P(i)=fHC3P(i)+  0.0390;fMEKP(i)=fMEKP(i)+  0.0390;fKETP(i)=fKETP(i)+  0.0390;

% 661, <CLTO77>
i=i+1;
Rnames{ 661} = 'CL + VROCN2OXY4 = HCL +  0.80830*VROCN2OXY8 +  0.31300*VROCN2OXY4 +  0.00160*VROCN1OXY6 +  0.07940*MEK +  0.07940*KET +  0.07940*HCHO +  0.03970*ACD +  0.07940*ALD +  0.07940*MO2 +  0.07940*ETHP +  0.07940*HC3P +  0.07940*MEKP +  0.07940*KETP ';
k(:,i) = (  4.2000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCN2OXY4';
fCL(i)=fCL(i)-1.0;fVROCN2OXY4(i)=fVROCN2OXY4(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.8083;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.3130;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0016;fMEK(i)=fMEK(i)+  0.0794;fKET(i)=fKET(i)+  0.0794;fHCHO(i)=fHCHO(i)+  0.0794;fACD(i)=fACD(i)+  0.0397;fALD(i)=fALD(i)+  0.0794;fMO2(i)=fMO2(i)+  0.0794;fETHP(i)=fETHP(i)+  0.0794;fHC3P(i)=fHC3P(i)+  0.0794;fMEKP(i)=fMEKP(i)+  0.0794;fKETP(i)=fKETP(i)+  0.0794;

% 662, <CLTO78>
i=i+1;
Rnames{ 662} = 'CL + VROCN1OXY6 = HCL +  0.20360*VROCN2OXY8 +  0.00710*VROCN2OXY4 +  0.14460*VOP3 +  0.18400*MEK +  0.18400*KET +  0.18400*HCHO +  0.09200*ACD +  0.18400*ALD +  0.18400*MO2 +  0.18400*ETHP +  0.18400*HC3P +  0.18400*MEKP +  0.18400*KETP ';
k(:,i) = (  3.8900E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCN1OXY6';
fCL(i)=fCL(i)-1.0;fVROCN1OXY6(i)=fVROCN1OXY6(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.2036;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0071;fVOP3(i)=fVOP3(i)+  0.1446;fMEK(i)=fMEK(i)+  0.1840;fKET(i)=fKET(i)+  0.1840;fHCHO(i)=fHCHO(i)+  0.1840;fACD(i)=fACD(i)+  0.0920;fALD(i)=fALD(i)+  0.1840;fMO2(i)=fMO2(i)+  0.1840;fETHP(i)=fETHP(i)+  0.1840;fHC3P(i)=fHC3P(i)+  0.1840;fMEKP(i)=fMEKP(i)+  0.1840;fKETP(i)=fKETP(i)+  0.1840;

% 663, <CLTO79>
i=i+1;
Rnames{ 663} = 'CL + VROCN2OXY8 = HCL +  0.08540*VROCN2OXY8 +  0.25810*MEK +  0.25810*KET +  0.25810*HCHO +  0.12910*ACD +  0.25810*ALD +  0.25810*MO2 +  0.25810*ETHP +  0.25810*HC3P +  0.25810*MEKP ';
k(:,i) = (  4.0800E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCN2OXY8';
fCL(i)=fCL(i)-1.0;fVROCN2OXY8(i)=fVROCN2OXY8(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0854;fMEK(i)=fMEK(i)+  0.2581;fKET(i)=fKET(i)+  0.2581;fHCHO(i)=fHCHO(i)+  0.2581;fACD(i)=fACD(i)+  0.1291;fALD(i)=fALD(i)+  0.2581;fMO2(i)=fMO2(i)+  0.2581;fETHP(i)=fETHP(i)+  0.2581;fHC3P(i)=fHC3P(i)+  0.2581;fMEKP(i)=fMEKP(i)+  0.2581;

% 664, <CLTO80>
i=i+1;
Rnames{ 664} = 'CL + VROCP0OXY2 = HCL +  0.07380*VROCN2OXY8 +  0.46670*VROCN2OXY4 +  0.12220*VROCN2OXY2 +  0.04530*VROCN1OXY6 +  0.15160*VROCN1OXY3 +  0.00500*VROCN1OXY1 +  0.13320*VROCP0OXY4 +  0.01040*VROCP0OXY2 +  0.03210*VROCP1OXY3 +  0.01400*VROCP1OXY1 +  0.02400*VROCP2OXY2 +  0.05950*VOP3 +  0.04450*MEK +  0.04450*KET +  0.04450*HCHO +  0.02220*ACD +  0.04450*ALD +  0.04450*MO2 +  0.04450*ETHP +  0.04450*HC3P +  0.04450*MEKP +  0.04450*KETP ';
k(:,i) = (  3.2500E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP0OXY2';
fCL(i)=fCL(i)-1.0;fVROCP0OXY2(i)=fVROCP0OXY2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0738;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.4667;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.1222;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0453;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.1516;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0050;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.1332;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0104;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0321;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0140;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0240;fVOP3(i)=fVOP3(i)+  0.0595;fMEK(i)=fMEK(i)+  0.0445;fKET(i)=fKET(i)+  0.0445;fHCHO(i)=fHCHO(i)+  0.0445;fACD(i)=fACD(i)+  0.0222;fALD(i)=fALD(i)+  0.0445;fMO2(i)=fMO2(i)+  0.0445;fETHP(i)=fETHP(i)+  0.0445;fHC3P(i)=fHC3P(i)+  0.0445;fMEKP(i)=fMEKP(i)+  0.0445;fKETP(i)=fKETP(i)+  0.0445;

% 665, <CLTO81>
i=i+1;
Rnames{ 665} = 'CL + VROCP0OXY4 = HCL +  0.36950*VROCN2OXY8 +  0.12910*VROCN2OXY4 +  0.15470*VROCN1OXY6 +  0.08220*VROCN1OXY3 +  0.04000*VROCP0OXY4 +  0.10680*MEK +  0.10680*KET +  0.10680*HCHO +  0.05340*ACD +  0.10680*ALD +  0.10680*MO2 +  0.10680*ETHP +  0.10680*HC3P +  0.10680*MEKP +  0.10680*KETP ';
k(:,i) = (  3.5600E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP0OXY4';
fCL(i)=fCL(i)-1.0;fVROCP0OXY4(i)=fVROCP0OXY4(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.3695;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1291;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.1547;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0822;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0400;fMEK(i)=fMEK(i)+  0.1068;fKET(i)=fKET(i)+  0.1068;fHCHO(i)=fHCHO(i)+  0.1068;fACD(i)=fACD(i)+  0.0534;fALD(i)=fALD(i)+  0.1068;fMO2(i)=fMO2(i)+  0.1068;fETHP(i)=fETHP(i)+  0.1068;fHC3P(i)=fHC3P(i)+  0.1068;fMEKP(i)=fMEKP(i)+  0.1068;fKETP(i)=fKETP(i)+  0.1068;

% 666, <CLTO82>
i=i+1;
Rnames{ 666} = 'CL + VROCP1OXY1 = HCL +  0.00230*VROCN2OXY8 +  0.13400*VROCN2OXY4 +  0.33490*VROCN2OXY2 +  0.00820*VROCN1OXY6 +  0.12020*VROCN1OXY3 +  0.07610*VROCN1OXY1 +  0.03250*VROCP0OXY4 +  0.12670*VROCP0OXY2 +  0.06470*VROCP1OXY3 +  0.03640*VROCP1OXY1 +  0.08900*VROCP2OXY2 +  0.06460*VROCP3OXY2 +  0.04480*VROCP4OXY2 +  0.00870*VOP3 +  0.01030*OP2 +  0.02970*MEK +  0.02970*KET +  0.02970*HCHO +  0.01490*ACD +  0.02970*ALD +  0.02970*MO2 +  0.02970*ETHP +  0.02970*HC3P +  0.02970*MEKP +  0.02970*KETP ';
k(:,i) = (  2.5900E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP1OXY1';
fCL(i)=fCL(i)-1.0;fVROCP1OXY1(i)=fVROCP1OXY1(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0023;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1340;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.3349;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0082;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.1202;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0761;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0325;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.1267;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0647;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0364;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0890;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0646;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0448;fVOP3(i)=fVOP3(i)+  0.0087;fOP2(i)=fOP2(i)+  0.0103;fMEK(i)=fMEK(i)+  0.0297;fKET(i)=fKET(i)+  0.0297;fHCHO(i)=fHCHO(i)+  0.0297;fACD(i)=fACD(i)+  0.0149;fALD(i)=fALD(i)+  0.0297;fMO2(i)=fMO2(i)+  0.0297;fETHP(i)=fETHP(i)+  0.0297;fHC3P(i)=fHC3P(i)+  0.0297;fMEKP(i)=fMEKP(i)+  0.0297;fKETP(i)=fKETP(i)+  0.0297;

% 667, <CLTO83>
i=i+1;
Rnames{ 667} = 'CL + VROCP1OXY3 = HCL +  0.19620*VROCN2OXY8 +  0.19470*VROCN2OXY4 +  0.00040*VROCN2OXY2 +  0.10760*VROCN1OXY6 +  0.05680*VROCN1OXY3 +  0.21220*VROCP0OXY4 +  0.00070*VROCP0OXY2 +  0.13690*VOP3 +  0.08180*MEK +  0.08180*KET +  0.08180*HCHO +  0.04090*ACD +  0.08180*ALD +  0.08180*MO2 +  0.08180*ETHP +  0.08180*HC3P +  0.08180*MEKP +  0.08180*KETP ';
k(:,i) = (  3.1600E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP1OXY3';
fCL(i)=fCL(i)-1.0;fVROCP1OXY3(i)=fVROCP1OXY3(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.1962;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1947;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0004;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.1076;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0568;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.2122;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0007;fVOP3(i)=fVOP3(i)+  0.1369;fMEK(i)=fMEK(i)+  0.0818;fKET(i)=fKET(i)+  0.0818;fHCHO(i)=fHCHO(i)+  0.0818;fACD(i)=fACD(i)+  0.0409;fALD(i)=fALD(i)+  0.0818;fMO2(i)=fMO2(i)+  0.0818;fETHP(i)=fETHP(i)+  0.0818;fHC3P(i)=fHC3P(i)+  0.0818;fMEKP(i)=fMEKP(i)+  0.0818;fKETP(i)=fKETP(i)+  0.0818;

% 668, <CLTO84>
i=i+1;
Rnames{ 668} = 'CL + VROCP2OXY2 = HCL +  0.04790*VROCN2OXY8 +  0.17460*VROCN2OXY4 +  0.01040*VROCN2OXY2 +  0.05500*VROCN1OXY6 +  0.11180*VROCN1OXY3 +  0.00130*VROCN1OXY1 +  0.14800*VROCP0OXY4 +  0.04170*VROCP0OXY2 +  0.11810*VROCP1OXY3 +  0.02180*VROCP1OXY1 +  0.11950*VROCP2OXY2 +  0.02070*VROCP3OXY2 +  0.02940*VOP3 +  0.04530*OP2 +  0.06280*MEK +  0.06280*KET +  0.06280*HCHO +  0.03140*ACD +  0.06280*ALD +  0.06280*MO2 +  0.06280*ETHP +  0.06280*HC3P +  0.06280*MEKP +  0.06280*KETP ';
k(:,i) = (  2.6800E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP2OXY2';
fCL(i)=fCL(i)-1.0;fVROCP2OXY2(i)=fVROCP2OXY2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0479;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.1746;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0104;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0550;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.1118;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.0013;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.1480;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0417;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1181;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0218;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1195;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0207;fVOP3(i)=fVOP3(i)+  0.0294;fOP2(i)=fOP2(i)+  0.0453;fMEK(i)=fMEK(i)+  0.0628;fKET(i)=fKET(i)+  0.0628;fHCHO(i)=fHCHO(i)+  0.0628;fACD(i)=fACD(i)+  0.0314;fALD(i)=fALD(i)+  0.0628;fMO2(i)=fMO2(i)+  0.0628;fETHP(i)=fETHP(i)+  0.0628;fHC3P(i)=fHC3P(i)+  0.0628;fMEKP(i)=fMEKP(i)+  0.0628;fKETP(i)=fKETP(i)+  0.0628;

% 669, <CLTO85>
i=i+1;
Rnames{ 669} = 'CL + VROCP3OXY2 = HCL +  0.03240*VROCN2OXY8 +  0.07690*VROCN2OXY4 +  0.00090*VROCN2OXY2 +  0.06210*VROCN1OXY6 +  0.04890*VROCN1OXY3 +  0.15500*VROCP0OXY4 +  0.01550*VROCP0OXY2 +  0.11170*VROCP1OXY3 +  0.01130*VROCP1OXY1 +  0.14650*VROCP2OXY2 +  0.08710*VROCP3OXY2 +  0.00400*VROCP4OXY2 +  0.05690*VOP3 +  0.04720*OP2 +  0.06980*MEK +  0.06980*KET +  0.06980*HCHO +  0.03490*ACD +  0.06980*ALD +  0.06980*MO2 +  0.06980*ETHP +  0.06980*HC3P +  0.06980*MEKP +  0.06980*KETP ';
k(:,i) = (  2.3900E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP3OXY2';
fCL(i)=fCL(i)-1.0;fVROCP3OXY2(i)=fVROCP3OXY2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0324;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0769;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0009;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0621;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0489;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.1550;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0155;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1117;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0113;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1465;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0871;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0040;fVOP3(i)=fVOP3(i)+  0.0569;fOP2(i)=fOP2(i)+  0.0472;fMEK(i)=fMEK(i)+  0.0698;fKET(i)=fKET(i)+  0.0698;fHCHO(i)=fHCHO(i)+  0.0698;fACD(i)=fACD(i)+  0.0349;fALD(i)=fALD(i)+  0.0698;fMO2(i)=fMO2(i)+  0.0698;fETHP(i)=fETHP(i)+  0.0698;fHC3P(i)=fHC3P(i)+  0.0698;fMEKP(i)=fMEKP(i)+  0.0698;fKETP(i)=fKETP(i)+  0.0698;

% 670, <CLTO86>
i=i+1;
Rnames{ 670} = 'CL + VROCP4OXY2 = HCL +  0.01170*VROCN2OXY8 +  0.01670*VROCN2OXY4 +  0.05040*VROCN1OXY6 +  0.02760*VROCN1OXY3 +  0.09200*VROCP0OXY4 +  0.07880*VROCP1OXY3 +  0.01080*VROCP1OXY1 +  0.12270*VROCP2OXY2 +  0.15010*VROCP3OXY2 +  0.04660*VROCP4OXY2 +  0.07850*VOP3 +  0.03990*OP2 +  0.07860*MEK +  0.07860*KET +  0.07860*HCHO +  0.03930*ACD +  0.07860*ALD +  0.07860*MO2 +  0.07860*ETHP +  0.07860*HC3P +  0.07860*MEKP +  0.07860*KETP ';
k(:,i) = (  2.1100E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP4OXY2';
fCL(i)=fCL(i)-1.0;fVROCP4OXY2(i)=fVROCP4OXY2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0117;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0167;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0504;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0276;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0920;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0788;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0108;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1227;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1501;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0466;fVOP3(i)=fVOP3(i)+  0.0785;fOP2(i)=fOP2(i)+  0.0399;fMEK(i)=fMEK(i)+  0.0786;fKET(i)=fKET(i)+  0.0786;fHCHO(i)=fHCHO(i)+  0.0786;fACD(i)=fACD(i)+  0.0393;fALD(i)=fALD(i)+  0.0786;fMO2(i)=fMO2(i)+  0.0786;fETHP(i)=fETHP(i)+  0.0786;fHC3P(i)=fHC3P(i)+  0.0786;fMEKP(i)=fMEKP(i)+  0.0786;fKETP(i)=fKETP(i)+  0.0786;

% 671, <CLTO87>
i=i+1;
Rnames{ 671} = 'CL + VROCP5OXY1 = HCL +  0.01030*VROCN2OXY4 +  0.00060*VROCN2OXY2 +  0.00900*VROCN1OXY6 +  0.01460*VROCN1OXY3 +  0.07020*VROCP0OXY4 +  0.01530*VROCP0OXY2 +  0.10170*VROCP1OXY3 +  0.00470*VROCP1OXY1 +  0.16580*VROCP2OXY2 +  0.17570*VROCP3OXY2 +  0.15870*VROCP4OXY2 +  0.05730*VROCP5OXY1 +  0.00970*VROCP6OXY1 +  0.02530*VOP3 +  0.03680*OP2 +  0.05260*MEK +  0.05260*KET +  0.05260*HCHO +  0.02630*ACD +  0.05260*ALD +  0.05260*MO2 +  0.05260*ETHP +  0.05260*HC3P +  0.05260*MEKP +  0.05310*HC5P +  0.05260*KETP ';
k(:,i) = (  1.6000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP5OXY1';
fCL(i)=fCL(i)-1.0;fVROCP5OXY1(i)=fVROCP5OXY1(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0103;fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.0006;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0090;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0146;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0702;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.0153;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1017;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0047;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1658;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1757;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.1587;fVROCP5OXY1(i)=fVROCP5OXY1(i)+  0.0573;fVROCP6OXY1(i)=fVROCP6OXY1(i)+  0.0097;fVOP3(i)=fVOP3(i)+  0.0253;fOP2(i)=fOP2(i)+  0.0368;fMEK(i)=fMEK(i)+  0.0526;fKET(i)=fKET(i)+  0.0526;fHCHO(i)=fHCHO(i)+  0.0526;fACD(i)=fACD(i)+  0.0263;fALD(i)=fALD(i)+  0.0526;fMO2(i)=fMO2(i)+  0.0526;fETHP(i)=fETHP(i)+  0.0526;fHC3P(i)=fHC3P(i)+  0.0526;fMEKP(i)=fMEKP(i)+  0.0526;fHC5P(i)=fHC5P(i)+  0.0531;fKETP(i)=fKETP(i)+  0.0526;

% 672, <CLTO88>
i=i+1;
Rnames{ 672} = 'CL + VROCP6OXY1 = HCL +  0.00610*VROCN1OXY6 +  0.00490*VROCN1OXY3 +  0.02240*VROCP0OXY4 +  0.04200*VROCP1OXY3 +  0.00330*VROCP1OXY1 +  0.09060*VROCP2OXY2 +  0.14890*VROCP3OXY2 +  0.17420*VROCP4OXY2 +  0.11570*VROCP5OXY1 +  0.02940*VROCP6OXY1 +  0.04150*VOP3 +  0.05600*OP2 +  0.05710*MEK +  0.05710*KET +  0.05710*HCHO +  0.02850*ACD +  0.05710*ALD +  0.05710*MO2 +  0.05710*ETHP +  0.05710*HC3P +  0.05710*MEKP +  0.04970*HC5P +  0.05710*KETP ';
k(:,i) = (  1.3500E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCP6OXY1';
fCL(i)=fCL(i)-1.0;fVROCP6OXY1(i)=fVROCP6OXY1(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0061;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0049;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0224;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0420;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.0033;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0906;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1489;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.1742;fVROCP5OXY1(i)=fVROCP5OXY1(i)+  0.1157;fVROCP6OXY1(i)=fVROCP6OXY1(i)+  0.0294;fVOP3(i)=fVOP3(i)+  0.0415;fOP2(i)=fOP2(i)+  0.0560;fMEK(i)=fMEK(i)+  0.0571;fKET(i)=fKET(i)+  0.0571;fHCHO(i)=fHCHO(i)+  0.0571;fACD(i)=fACD(i)+  0.0285;fALD(i)=fALD(i)+  0.0571;fMO2(i)=fMO2(i)+  0.0571;fETHP(i)=fETHP(i)+  0.0571;fHC3P(i)=fHC3P(i)+  0.0571;fMEKP(i)=fMEKP(i)+  0.0571;fHC5P(i)=fHC5P(i)+  0.0497;fKETP(i)=fKETP(i)+  0.0571;

% 673, <CLTO89>
i=i+1;
Rnames{ 673} = 'CL + VROCIOXY = HCL +  0.85200*ETHP +  0.14900*ASOATJ ';
k(:,i) = (  3.8800E-11 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='VROCIOXY';
fCL(i)=fCL(i)-1.0;fVROCIOXY(i)=fVROCIOXY(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fETHP(i)=fETHP(i)+  0.8520;fASOATJ(i)=fASOATJ(i)+  0.1490;

% 674, <CLTO90>
i=i+1;
Rnames{ 674} = 'HO + HCOCL = CL + CO ';
k(:,i) = (  3.5600E-11.*exp( -1.4190E+03./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HCOCL';
fHO(i)=fHO(i)-1.0;fHCOCL(i)=fHCOCL(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 675, <CLTO91>
i=i+1;
Rnames{ 675} = 'CL + HCOCL = CL + CO + HCL ';
k(:,i) = (  8.1000E-11.*exp( -3.0000E+01./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='HCOCL';
fCL(i)=fCL(i)-1.0;fHCOCL(i)=fHCOCL(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fHCL(i)=fHCL(i)+  1.0000;

% 676, <CLT092>
i=i+1;
Rnames{ 676} = 'CL + EBZ = HCL +  0.82000*EBZP +  0.18000*CSL +  0.18000*HO2 ';
k(:,i) = (  1.2900E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='EBZ';
fCL(i)=fCL(i)-1.0;fEBZ(i)=fEBZ(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fEBZP(i)=fEBZP(i)+  0.8200;fCSL(i)=fCSL(i)+  0.1800;fHO2(i)=fHO2(i)+  0.1800;

% 677, <CLT093>
i=i+1;
Rnames{ 677} = 'CL + STY = HCL + STYP ';
k(:,i) = (  3.6000E-10 ); 
Gstr{i,   1}='CL';Gstr{i,   2}='STY';
fCL(i)=fCL(i)-1.0;fSTY(i)=fSTY(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fSTYP(i)=fSTYP(i)+  1.0000;

% 678, <CLOR01>
i=i+1;
Rnames{ 678} = 'CLO + MO2 = CLOO + HCHO + HO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='MO2';
fCLO(i)=fCLO(i)-1.0;fMO2(i)=fMO2(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 679, <CLOR02>
i=i+1;
Rnames{ 679} = 'CLO + ETHP = CLOO + ACD + HO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ETHP';
fCLO(i)=fCLO(i)-1.0;fETHP(i)=fETHP(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fACD(i)=fACD(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 680, <CLOR03>
i=i+1;
Rnames{ 680} = 'CLO + HC3P = 0.66000*HO2 +  0.13100*MO2 +  0.04800*ETHP +  0.08900*XO2 + CLOO +  0.50400*ACD +  0.13200*ALD +  0.16500*ACT +  0.04200*MEK ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='HC3P';
fCLO(i)=fCLO(i)-1.0;fHC3P(i)=fHC3P(i)-1.0;
fHO2(i)=fHO2(i)+  0.6600;fMO2(i)=fMO2(i)+  0.1310;fETHP(i)=fETHP(i)+  0.0480;fXO2(i)=fXO2(i)+  0.0890;fCLOO(i)=fCLOO(i)+  1.0000;fACD(i)=fACD(i)+  0.5040;fALD(i)=fALD(i)+  0.1320;fACT(i)=fACT(i)+  0.1650;fMEK(i)=fMEK(i)+  0.0420;

% 681, <CLOR04>
i=i+1;
Rnames{ 681} = 'CLO + HC5P = 0.20000*HO2 +  0.05100*MO2 +  0.23100*ETHP +  0.23500*XO2 + CLOO +  0.01800*HCHO +  0.04500*ACD +  0.20300*ALD +  0.03300*MEK +  0.21700*ACT +  0.03300*KET +  0.27200*HKET ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='HC5P';
fCLO(i)=fCLO(i)-1.0;fHC5P(i)=fHC5P(i)-1.0;
fHO2(i)=fHO2(i)+  0.2000;fMO2(i)=fMO2(i)+  0.0510;fETHP(i)=fETHP(i)+  0.2310;fXO2(i)=fXO2(i)+  0.2350;fCLOO(i)=fCLOO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.0180;fACD(i)=fACD(i)+  0.0450;fALD(i)=fALD(i)+  0.2030;fMEK(i)=fMEK(i)+  0.0330;fACT(i)=fACT(i)+  0.2170;fKET(i)=fKET(i)+  0.0330;fHKET(i)=fHKET(i)+  0.2720;

% 682, <CLOR05>
i=i+1;
Rnames{ 682} = 'CLO + ETEP = HO2 + CLOO +  1.60000*HCHO +  0.20000*ALD ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ETEP';
fCLO(i)=fCLO(i)-1.0;fETEP(i)=fETEP(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.6000;fALD(i)=fALD(i)+  0.2000;

% 683, <CLOR06>
i=i+1;
Rnames{ 683} = 'CLO + OLTP = 0.78000*HO2 + CLOO +  0.78000*HCHO +  0.01200*ACD +  0.44000*ALD +  0.06000*ACT +  0.13000*MEK ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='OLTP';
fCLO(i)=fCLO(i)-1.0;fOLTP(i)=fOLTP(i)-1.0;
fHO2(i)=fHO2(i)+  0.7800;fCLOO(i)=fCLOO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.7800;fACD(i)=fACD(i)+  0.0120;fALD(i)=fALD(i)+  0.4400;fACT(i)=fACT(i)+  0.0600;fMEK(i)=fMEK(i)+  0.1300;

% 684, <CLOR07>
i=i+1;
Rnames{ 684} = 'CLO + OLIP = 0.83000*HO2 + CLOO +  0.81000*ACD +  0.68000*ALD +  0.20000*ACT +  0.09000*KET +  0.02000*HKET ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='OLIP';
fCLO(i)=fCLO(i)-1.0;fOLIP(i)=fOLIP(i)-1.0;
fHO2(i)=fHO2(i)+  0.8300;fCLOO(i)=fCLOO(i)+  1.0000;fACD(i)=fACD(i)+  0.8100;fALD(i)=fALD(i)+  0.6800;fACT(i)=fACT(i)+  0.2000;fKET(i)=fKET(i)+  0.0900;fHKET(i)=fHKET(i)+  0.0200;

% 685, <CLOR08>
i=i+1;
Rnames{ 685} = 'CLO + BENP = 0.00120*VROCP4OXY2 +  0.00080*VROCN1OXY6 + CLOO +  0.99800*HO2 +  0.00000*BALD +  0.99800*GLY +  0.49900*FURANONE +  0.24950*DCB2 +  0.24950*DCB3 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='BENP';
fCLO(i)=fCLO(i)-1.0;fBENP(i)=fBENP(i)-1.0;
fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0012;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0008;fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)-  0.0000;fGLY(i)=fGLY(i)+  0.9980;fFURANONE(i)=fFURANONE(i)+  0.4990;fDCB2(i)=fDCB2(i)+  0.2495;fDCB3(i)=fDCB3(i)+  0.2495;

% 686, <CLOR09>
i=i+1;
Rnames{ 686} = 'CLO + TOLP = 0.00130*VROCP4OXY2 +  0.00060*VROCN1OXY6 + CLOO +  0.99800*HO2 +  0.08520*BALD +  0.54770*GLY +  0.36510*MGLY +  0.36510*FURANONE +  0.54770*DCB1 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='TOLP';
fCLO(i)=fCLO(i)-1.0;fTOLP(i)=fTOLP(i)-1.0;
fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0013;fVROCN1OXY6(i)=fVROCN1OXY6(i)+  0.0006;fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0852;fGLY(i)=fGLY(i)+  0.5477;fMGLY(i)=fMGLY(i)+  0.3651;fFURANONE(i)=fFURANONE(i)+  0.3651;fDCB1(i)=fDCB1(i)+  0.5477;

% 687, <CLOR10>
i=i+1;
Rnames{ 687} = 'CLO + XYLP = 0.00130*VROCP3OXY2 +  0.00060*VROCP0OXY4 + CLOO +  0.99800*HO2 +  0.04810*BALD +  0.70290*GLY +  0.24700*MGLY +  0.35150*FURANONE +  0.59840*DCB2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='XYLP';
fCLO(i)=fCLO(i)-1.0;fXYLP(i)=fXYLP(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0013;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0006;fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0481;fGLY(i)=fGLY(i)+  0.7029;fMGLY(i)=fMGLY(i)+  0.2470;fFURANONE(i)=fFURANONE(i)+  0.3515;fDCB2(i)=fDCB2(i)+  0.5984;

% 688, <CLOR12>
i=i+1;
Rnames{ 688} = 'CLO + ISOP = 0.40000*HCHO +  0.88000*HO2 +  0.88000*CLOO +  0.18000*MACR +  0.51000*MVK +  0.12000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ISOP';
fCLO(i)=fCLO(i)-1.0;fISOP(i)=fISOP(i)-1.0;
fHCHO(i)=fHCHO(i)+  0.4000;fHO2(i)=fHO2(i)+  0.8800;fCLOO(i)=fCLOO(i)+  0.8800;fMACR(i)=fMACR(i)+  0.1800;fMVK(i)=fMVK(i)+  0.5100;fHCL(i)=fHCL(i)+  0.1200;

% 689, <CLOR13>
i=i+1;
Rnames{ 689} = 'CLO + APIP1 = 0.76300*HO2 +  0.76300*CLOO +  0.19500*PINAL +  0.28400*ALD +  0.08650*ACT +  0.12850*LIMAL +  0.30800*HCHO +  0.07150*OPB +  0.08400*KET +  0.23700*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='APIP1';
fCLO(i)=fCLO(i)-1.0;fAPIP1(i)=fAPIP1(i)-1.0;
fHO2(i)=fHO2(i)+  0.7630;fCLOO(i)=fCLOO(i)+  0.7630;fPINAL(i)=fPINAL(i)+  0.1950;fALD(i)=fALD(i)+  0.2840;fACT(i)=fACT(i)+  0.0865;fLIMAL(i)=fLIMAL(i)+  0.1285;fHCHO(i)=fHCHO(i)+  0.3080;fOPB(i)=fOPB(i)+  0.0715;fKET(i)=fKET(i)+  0.0840;fHCL(i)=fHCL(i)+  0.2370;

% 690, <CLOR14>
i=i+1;
Rnames{ 690} = 'CLO + APIP2 = 0.82000*HO +  0.82000*CLOO +  0.18000*HCL + VHOM ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='APIP2';
fCLO(i)=fCLO(i)-1.0;fAPIP2(i)=fAPIP2(i)-1.0;
fHO(i)=fHO(i)+  0.8200;fCLOO(i)=fCLOO(i)+  0.8200;fHCL(i)=fHCL(i)+  0.1800;fVHOM(i)=fVHOM(i)+  1.0000;

% 691, <CLOR15>
i=i+1;
Rnames{ 691} = 'CLO + APINP1 = CLOO +  0.69550*NO2 +  0.23450*VTRPN +  0.07000*ONIT +  0.60450*PINAL +  0.15400*ALD +  0.00700*KET +  0.00700*HCHO +  0.16450*HO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='APINP1';
fCLO(i)=fCLO(i)-1.0;fAPINP1(i)=fAPINP1(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fNO2(i)=fNO2(i)+  0.6955;fVTRPN(i)=fVTRPN(i)+  0.2345;fONIT(i)=fONIT(i)+  0.0700;fPINAL(i)=fPINAL(i)+  0.6045;fALD(i)=fALD(i)+  0.1540;fKET(i)=fKET(i)+  0.0070;fHCHO(i)=fHCHO(i)+  0.0070;fHO2(i)=fHO2(i)+  0.1645;

% 692, <CLOR16>
i=i+1;
Rnames{ 692} = 'CLO + APINP2 = 0.82000*CLOO +  0.82000*HO +  0.18000*HCL + VHOM ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='APINP2';
fCLO(i)=fCLO(i)-1.0;fAPINP2(i)=fAPINP2(i)-1.0;
fCLOO(i)=fCLOO(i)+  0.8200;fHO(i)=fHO(i)+  0.8200;fHCL(i)=fHCL(i)+  0.1800;fVHOM(i)=fVHOM(i)+  1.0000;

% 693, <CLOR17>
i=i+1;
Rnames{ 693} = 'CLO + LIMP1 = 0.77000*HO2 + CLOO +  0.77000*LIMAL +  0.43000*HCHO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='LIMP1';
fCLO(i)=fCLO(i)-1.0;fLIMP1(i)=fLIMP1(i)-1.0;
fHO2(i)=fHO2(i)+  0.7700;fCLOO(i)=fCLOO(i)+  1.0000;fLIMAL(i)=fLIMAL(i)+  0.7700;fHCHO(i)=fHCHO(i)+  0.4300;

% 694, <CLOR18>
i=i+1;
Rnames{ 694} = 'CLO + LIMP2 = 0.77000*HO +  0.77000*CLOO +  0.23000*HCL + VHOM ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='LIMP2';
fCLO(i)=fCLO(i)-1.0;fLIMP2(i)=fLIMP2(i)-1.0;
fHO(i)=fHO(i)+  0.7700;fCLOO(i)=fCLOO(i)+  0.7700;fHCL(i)=fHCL(i)+  0.2300;fVHOM(i)=fVHOM(i)+  1.0000;

% 695, <CLOR19>
i=i+1;
Rnames{ 695} = 'CLO + LIMNP1 = CLOO +  0.57000*VTRPN +  0.07000*ONIT +  0.36000*NO2 +  0.43000*LIMAL +  0.50000*HO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='LIMNP1';
fCLO(i)=fCLO(i)-1.0;fLIMNP1(i)=fLIMNP1(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fVTRPN(i)=fVTRPN(i)+  0.5700;fONIT(i)=fONIT(i)+  0.0700;fNO2(i)=fNO2(i)+  0.3600;fLIMAL(i)=fLIMAL(i)+  0.4300;fHO2(i)=fHO2(i)+  0.5000;

% 696, <CLOR20>
i=i+1;
Rnames{ 696} = 'CLO + LIMNP2 = 0.77000*CLOO +  0.77000*HO +  0.23000*HCL + VHOM ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='LIMNP2';
fCLO(i)=fCLO(i)-1.0;fLIMNP2(i)=fLIMNP2(i)-1.0;
fCLOO(i)=fCLOO(i)+  0.7700;fHO(i)=fHO(i)+  0.7700;fHCL(i)=fHCL(i)+  0.2300;fVHOM(i)=fVHOM(i)+  1.0000;

% 697, <CLOR21>
i=i+1;
Rnames{ 697} = 'CLO + PINALP = CLOO +  0.64000*VHOM ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='PINALP';
fCLO(i)=fCLO(i)-1.0;fPINALP(i)=fPINALP(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fVHOM(i)=fVHOM(i)+  0.6400;

% 698, <CLOR22>
i=i+1;
Rnames{ 698} = 'CLO + LIMALP = CLOO +  0.36000*HO2 +  0.36000*HCHO +  0.36000*PAA ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='LIMALP';
fCLO(i)=fCLO(i)-1.0;fLIMALP(i)=fLIMALP(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.3600;fHCHO(i)=fHCHO(i)+  0.3600;fPAA(i)=fPAA(i)+  0.3600;

% 699, <CLOR23>
i=i+1;
Rnames{ 699} = 'CLO + ACO3 = MO2 + CLOO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ACO3';
fCLO(i)=fCLO(i)-1.0;fACO3(i)=fACO3(i)-1.0;
fMO2(i)=fMO2(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 700, <CLOR24>
i=i+1;
Rnames{ 700} = 'CLO + RCO3 = ETHP + CLOO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='RCO3';
fCLO(i)=fCLO(i)-1.0;fRCO3(i)=fRCO3(i)-1.0;
fETHP(i)=fETHP(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 701, <CLOR25>
i=i+1;
Rnames{ 701} = 'CLO + ACTP = ACO3 + CLOO + HCHO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ACTP';
fCLO(i)=fCLO(i)-1.0;fACTP(i)=fACTP(i)-1.0;
fACO3(i)=fACO3(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 702, <CLOR26>
i=i+1;
Rnames{ 702} = 'CLO + MEKP = 0.67000*HO2 + CLOO +  0.33000*HCHO +  0.67000*DCB1 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='MEKP';
fCLO(i)=fCLO(i)-1.0;fMEKP(i)=fMEKP(i)-1.0;
fHO2(i)=fHO2(i)+  0.6700;fCLOO(i)=fCLOO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.3300;fDCB1(i)=fDCB1(i)+  0.6700;

% 703, <CLOR27>
i=i+1;
Rnames{ 703} = 'CLO + KETP = 0.77000*HO2 +  0.23000*ACO3 +  0.16000*XO2 + CLOO +  0.46000*ALD +  0.54000*MGLY ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='KETP';
fCLO(i)=fCLO(i)-1.0;fKETP(i)=fKETP(i)-1.0;
fHO2(i)=fHO2(i)+  0.7700;fACO3(i)=fACO3(i)+  0.2300;fXO2(i)=fXO2(i)+  0.1600;fCLOO(i)=fCLOO(i)+  1.0000;fALD(i)=fALD(i)+  0.4600;fMGLY(i)=fMGLY(i)+  0.5400;

% 704, <CLOR28>
i=i+1;
Rnames{ 704} = 'CLO + MACP = 0.65000*MO2 +  0.35000*ACO3 + CLOO +  0.65000*CO +  0.65000*HCHO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='MACP';
fCLO(i)=fCLO(i)-1.0;fMACP(i)=fMACP(i)-1.0;
fMO2(i)=fMO2(i)+  0.6500;fACO3(i)=fACO3(i)+  0.3500;fCLOO(i)=fCLOO(i)+  1.0000;fCO(i)=fCO(i)+  0.6500;fHCHO(i)=fHCHO(i)+  0.6500;

% 705, <CLOR29>
i=i+1;
Rnames{ 705} = 'CLO + MCP = CLOO +  0.50000*HO2 +  0.50000*HCHO + HKET ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='MCP';
fCLO(i)=fCLO(i)-1.0;fMCP(i)=fMCP(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5000;fHCHO(i)=fHCHO(i)+  0.5000;fHKET(i)=fHKET(i)+  1.0000;

% 706, <CLOR30>
i=i+1;
Rnames{ 706} = 'CLO + MVKP = 0.30000*HO2 +  0.70000*ACO3 +  0.70000*XO2 + CLOO +  0.30000*HCHO +  0.70000*ALD +  0.30000*MGLY ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='MVKP';
fCLO(i)=fCLO(i)-1.0;fMVKP(i)=fMVKP(i)-1.0;
fHO2(i)=fHO2(i)+  0.3000;fACO3(i)=fACO3(i)+  0.7000;fXO2(i)=fXO2(i)+  0.7000;fCLOO(i)=fCLOO(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.3000;fALD(i)=fALD(i)+  0.7000;fMGLY(i)=fMGLY(i)+  0.3000;

% 707, <CLOR31>
i=i+1;
Rnames{ 707} = 'CLO + UALP = HO2 + CLOO +  0.61000*CO +  0.03000*HCHO +  0.27000*ALD +  0.18000*GLY +  0.70000*KET +  0.21000*MGLY ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='UALP';
fCLO(i)=fCLO(i)-1.0;fUALP(i)=fUALP(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;fCO(i)=fCO(i)+  0.6100;fHCHO(i)=fHCHO(i)+  0.0300;fALD(i)=fALD(i)+  0.2700;fGLY(i)=fGLY(i)+  0.1800;fKET(i)=fKET(i)+  0.7000;fMGLY(i)=fMGLY(i)+  0.2100;

% 708, <CLOR32>
i=i+1;
Rnames{ 708} = 'CLO + BALP = BAL1 + CLOO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='BALP';
fCLO(i)=fCLO(i)-1.0;fBALP(i)=fBALP(i)-1.0;
fBAL1(i)=fBAL1(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 709, <CLOR33>
i=i+1;
Rnames{ 709} = 'CLO + BAL1 = BAL2 + CLOO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='BAL1';
fCLO(i)=fCLO(i)-1.0;fBAL1(i)=fBAL1(i)-1.0;
fBAL2(i)=fBAL2(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 710, <CLOR34>
i=i+1;
Rnames{ 710} = 'CLO + ADDC = HO2 + CLOO +  0.32000*HKET +  0.68000*GLY +  0.68000*OP2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ADDC';
fCLO(i)=fCLO(i)-1.0;fADDC(i)=fADDC(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;fHKET(i)=fHKET(i)+  0.3200;fGLY(i)=fGLY(i)+  0.6800;fOP2(i)=fOP2(i)+  0.6800;

% 711, <CLOR35>
i=i+1;
Rnames{ 711} = 'CLO + MCTP = MCTO + CLOO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='MCTP';
fCLO(i)=fCLO(i)-1.0;fMCTP(i)=fMCTP(i)-1.0;
fMCTO(i)=fMCTO(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 712, <CLOR36>
i=i+1;
Rnames{ 712} = 'CLO + ORAP = CLOO + GLY + HO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ORAP';
fCLO(i)=fCLO(i)-1.0;fORAP(i)=fORAP(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fGLY(i)=fGLY(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 713, <CLOR37>
i=i+1;
Rnames{ 713} = 'CLO + OLNN = CLOO + HO2 + ONIT ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='OLNN';
fCLO(i)=fCLO(i)-1.0;fOLNN(i)=fOLNN(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fONIT(i)=fONIT(i)+  1.0000;

% 714, <CLOR38>
i=i+1;
Rnames{ 714} = 'CLO + OLND = CLOO + NO2 +  0.28700*HCHO +  1.24000*ALD +  0.46400*KET ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='OLND';
fCLO(i)=fCLO(i)-1.0;fOLND(i)=fOLND(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.2870;fALD(i)=fALD(i)+  1.2400;fKET(i)=fKET(i)+  0.4640;

% 715, <CLOR39>
i=i+1;
Rnames{ 715} = 'CLO + ADCN = CLOO + NO2 + GLY + OP2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='ADCN';
fCLO(i)=fCLO(i)-1.0;fADCN(i)=fADCN(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;fGLY(i)=fGLY(i)+  1.0000;fOP2(i)=fOP2(i)+  1.0000;

% 716, <CLOR40>
i=i+1;
Rnames{ 716} = 'CLO + XO2 = CLOO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='XO2';
fCLO(i)=fCLO(i)-1.0;fXO2(i)=fXO2(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;

% 717, <CLOR41>
i=i+1;
Rnames{ 717} = 'CLO + BDE13P = 0.96800*HO2 + CLOO +  0.89500*ACRO +  0.89500*HCHO +  0.07200*FURAN ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='BDE13P';
fCLO(i)=fCLO(i)-1.0;fBDE13P(i)=fBDE13P(i)-1.0;
fHO2(i)=fHO2(i)+  0.9680;fCLOO(i)=fCLOO(i)+  1.0000;fACRO(i)=fACRO(i)+  0.8950;fHCHO(i)=fHCHO(i)+  0.8950;fFURAN(i)=fFURAN(i)+  0.0720;

% 718, <CLOR42>
i=i+1;
Rnames{ 718} = 'CLO + FURANO2 = CLOO +  0.92000*FURANONE +  0.75000*HO2 +  0.17000*MO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='FURANO2';
fCLO(i)=fCLO(i)-1.0;fFURANO2(i)=fFURANO2(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fFURANONE(i)=fFURANONE(i)+  0.9200;fHO2(i)=fHO2(i)+  0.7500;fMO2(i)=fMO2(i)+  0.1700;

% 719, <CLOR43>
i=i+1;
Rnames{ 719} = 'CLO + SESQNRO2 = CLOO + VROCP3OXY2 + NO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='SESQNRO2';
fCLO(i)=fCLO(i)-1.0;fSESQNRO2(i)=fSESQNRO2(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 720, <CLOR44>
i=i+1;
Rnames{ 720} = 'CLO + SESQRO2 = 0.24700*VROCP1OXY3 +  0.75300*VROCP3OXY2 +  0.75300*CLOO +  0.24700*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='SESQRO2';
fCLO(i)=fCLO(i)-1.0;fSESQRO2(i)=fSESQRO2(i)-1.0;
fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.2470;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.7530;fCLOO(i)=fCLOO(i)+  0.7530;fHCL(i)=fHCL(i)+  0.2470;

% 721, <CLOR45>
i=i+1;
Rnames{ 721} = 'CLO + VROCP6ALKP = 0.72000*VROCP6ALKP2 +  0.28000*VROCP4OXY2 +  0.72000*CLOO +  0.28000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP6ALKP';
fCLO(i)=fCLO(i)-1.0;fVROCP6ALKP(i)=fVROCP6ALKP(i)-1.0;
fVROCP6ALKP2(i)=fVROCP6ALKP2(i)+  0.7200;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.2800;fCLOO(i)=fCLOO(i)+  0.7200;fHCL(i)=fHCL(i)+  0.2800;

% 722, <CLOR46>
i=i+1;
Rnames{ 722} = 'CLO + VROCP5ALKP = 0.72000*VROCP5ALKP2 +  0.28000*VROCP3OXY2 +  0.72000*CLOO +  0.28000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP5ALKP';
fCLO(i)=fCLO(i)-1.0;fVROCP5ALKP(i)=fVROCP5ALKP(i)-1.0;
fVROCP5ALKP2(i)=fVROCP5ALKP2(i)+  0.7200;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.2800;fCLOO(i)=fCLOO(i)+  0.7200;fHCL(i)=fHCL(i)+  0.2800;

% 723, <CLOR47>
i=i+1;
Rnames{ 723} = 'CLO + VROCP4ALKP = 0.72000*VROCP4ALKP2 +  0.28000*VROCP2OXY2 +  0.72000*CLOO +  0.28000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP4ALKP';
fCLO(i)=fCLO(i)-1.0;fVROCP4ALKP(i)=fVROCP4ALKP(i)-1.0;
fVROCP4ALKP2(i)=fVROCP4ALKP2(i)+  0.7200;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.2800;fCLOO(i)=fCLOO(i)+  0.7200;fHCL(i)=fHCL(i)+  0.2800;

% 724, <CLOR48>
i=i+1;
Rnames{ 724} = 'CLO + VROCP3ALKP = 0.72000*VROCP3ALKP2 +  0.28000*VROCP1OXY1 +  0.72000*CLOO +  0.28000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP3ALKP';
fCLO(i)=fCLO(i)-1.0;fVROCP3ALKP(i)=fVROCP3ALKP(i)-1.0;
fVROCP3ALKP2(i)=fVROCP3ALKP2(i)+  0.7200;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.2800;fCLOO(i)=fCLOO(i)+  0.7200;fHCL(i)=fHCL(i)+  0.2800;

% 725, <CLOR49>
i=i+1;
Rnames{ 725} = 'CLO + VROCP2ALKP = 0.72000*VROCP2ALKP2 +  0.28000*VROCP0OXY2 +  0.72000*CLOO +  0.28000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP2ALKP';
fCLO(i)=fCLO(i)-1.0;fVROCP2ALKP(i)=fVROCP2ALKP(i)-1.0;
fVROCP2ALKP2(i)=fVROCP2ALKP2(i)+  0.7200;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.2800;fCLOO(i)=fCLOO(i)+  0.7200;fHCL(i)=fHCL(i)+  0.2800;

% 726, <CLOR50>
i=i+1;
Rnames{ 726} = 'CLO + VROCP1ALKP = 0.72000*VROCP1ALKP2 +  0.28000*VROCN1OXY1 +  0.72000*CLOO +  0.28000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP1ALKP';
fCLO(i)=fCLO(i)-1.0;fVROCP1ALKP(i)=fVROCP1ALKP(i)-1.0;
fVROCP1ALKP2(i)=fVROCP1ALKP2(i)+  0.7200;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.2800;fCLOO(i)=fCLOO(i)+  0.7200;fHCL(i)=fHCL(i)+  0.2800;

% 727, <CLOR51>
i=i+1;
Rnames{ 727} = 'CLO + HC10P = 0.74000*HC10P2 + CLOO ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='HC10P';
fCLO(i)=fCLO(i)-1.0;fHC10P(i)=fHC10P(i)-1.0;
fHC10P2(i)=fHC10P2(i)+  0.7400;fCLOO(i)=fCLOO(i)+  1.0000;

% 728, <CLOR52>
i=i+1;
Rnames{ 728} = 'CLO + VROCP6ALKP2 = 0.14000*VROCP2OXY2 +  0.86000*CLOO +  0.86000*VROCP3OXY2 +  0.86000*HO2 +  0.14000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP6ALKP2';
fCLO(i)=fCLO(i)-1.0;fVROCP6ALKP2(i)=fVROCP6ALKP2(i)-1.0;
fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.1400;fCLOO(i)=fCLOO(i)+  0.8600;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;fHCL(i)=fHCL(i)+  0.1400;

% 729, <CLOR53>
i=i+1;
Rnames{ 729} = 'CLO + VROCP5ALKP2 = 0.14000*VROCP1OXY3 +  0.86000*CLOO +  0.86000*VROCP2OXY2 +  0.86000*HO2 +  0.14000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP5ALKP2';
fCLO(i)=fCLO(i)-1.0;fVROCP5ALKP2(i)=fVROCP5ALKP2(i)-1.0;
fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.1400;fCLOO(i)=fCLOO(i)+  0.8600;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;fHCL(i)=fHCL(i)+  0.1400;

% 730, <CLOR54>
i=i+1;
Rnames{ 730} = 'CLO + VROCP4ALKP2 = 0.14000*VROCP0OXY2 +  0.86000*CLOO +  0.86000*VROCP1OXY1 +  0.86000*HO2 +  0.14000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP4ALKP2';
fCLO(i)=fCLO(i)-1.0;fVROCP4ALKP2(i)=fVROCP4ALKP2(i)-1.0;
fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.1400;fCLOO(i)=fCLOO(i)+  0.8600;fVROCP1OXY1(i)=fVROCP1OXY1(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;fHCL(i)=fHCL(i)+  0.1400;

% 731, <CLOR55>
i=i+1;
Rnames{ 731} = 'CLO + VROCP3ALKP2 = 0.14000*VROCN1OXY1 +  0.86000*CLOO +  0.86000*VROCP0OXY2 +  0.86000*HO2 +  0.14000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP3ALKP2';
fCLO(i)=fCLO(i)-1.0;fVROCP3ALKP2(i)=fVROCP3ALKP2(i)-1.0;
fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.1400;fCLOO(i)=fCLOO(i)+  0.8600;fVROCP0OXY2(i)=fVROCP0OXY2(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;fHCL(i)=fHCL(i)+  0.1400;

% 732, <CLOR56>
i=i+1;
Rnames{ 732} = 'CLO + VROCP2ALKP2 = 0.14000*VROCN2OXY2 +  0.86000*CLOO +  0.86000*VROCN1OXY1 +  0.86000*HO2 +  0.14000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP2ALKP2';
fCLO(i)=fCLO(i)-1.0;fVROCP2ALKP2(i)=fVROCP2ALKP2(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  0.1400;fCLOO(i)=fCLOO(i)+  0.8600;fVROCN1OXY1(i)=fVROCN1OXY1(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;fHCL(i)=fHCL(i)+  0.1400;

% 733, <CLOR57>
i=i+1;
Rnames{ 733} = 'CLO + VROCP1ALKP2 = VROCN2OXY2 +  0.86000*CLOO +  0.86000*HO2 +  0.14000*HCL ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP1ALKP2';
fCLO(i)=fCLO(i)-1.0;fVROCP1ALKP2(i)=fVROCP1ALKP2(i)-1.0;
fVROCN2OXY2(i)=fVROCN2OXY2(i)+  1.0000;fCLOO(i)=fCLOO(i)+  0.8600;fHO2(i)=fHO2(i)+  0.8600;fHCL(i)=fHCL(i)+  0.1400;

% 734, <CLOR58>
i=i+1;
Rnames{ 734} = 'CLO + HC10P2 = CLOO +  0.88000*KET +  0.88000*HO2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='HC10P2';
fCLO(i)=fCLO(i)-1.0;fHC10P2(i)=fHC10P2(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fKET(i)=fKET(i)+  0.8800;fHO2(i)=fHO2(i)+  0.8800;

% 735, <CLOR59>
i=i+1;
Rnames{ 735} = 'CLO + VROCP6AROP = 0.00010*VROCP4OXY2 +  0.00180*VROCP2OXY2 +  0.00010*VROCN1OXY3 + CLOO +  0.99800*HO2 +  0.05940*BALD +  0.46930*GLY +  0.46930*MGLY +  0.46930*FURANONE +  0.46930*DCB2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP6AROP';
fCLO(i)=fCLO(i)-1.0;fVROCP6AROP(i)=fVROCP6AROP(i)-1.0;
fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0001;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0018;fVROCN1OXY3(i)=fVROCN1OXY3(i)+  0.0001;fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0594;fGLY(i)=fGLY(i)+  0.4693;fMGLY(i)=fMGLY(i)+  0.4693;fFURANONE(i)=fFURANONE(i)+  0.4693;fDCB2(i)=fDCB2(i)+  0.4693;

% 736, <CLOR60>
i=i+1;
Rnames{ 736} = 'CLO + VROCP5AROP = 0.00010*VROCP3OXY2 +  0.00180*VROCP1OXY3 +  0.00010*VROCN2OXY4 + CLOO +  0.99800*HO2 +  0.05940*VROCP4OXY2 +  0.46930*GLY +  0.46930*MGLY +  0.46930*FURANONE +  0.46930*DCB2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='VROCP5AROP';
fCLO(i)=fCLO(i)-1.0;fVROCP5AROP(i)=fVROCP5AROP(i)-1.0;
fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0001;fVROCP1OXY3(i)=fVROCP1OXY3(i)+  0.0018;fVROCN2OXY4(i)=fVROCN2OXY4(i)+  0.0001;fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9980;fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0594;fGLY(i)=fGLY(i)+  0.4693;fMGLY(i)=fMGLY(i)+  0.4693;fFURANONE(i)=fFURANONE(i)+  0.4693;fDCB2(i)=fDCB2(i)+  0.4693;

% 737, <CLOR61>
i=i+1;
Rnames{ 737} = 'CLO + NAPHP = 0.05950*VROCP4OXY2 +  0.00180*VROCP2OXY2 +  0.00010*VROCN2OXY8 + CLOO +  0.99800*HO2 +  0.46930*GLY +  0.46930*MGLY +  0.46930*FURANONE +  0.46930*DCB2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='NAPHP';
fCLO(i)=fCLO(i)-1.0;fNAPHP(i)=fNAPHP(i)-1.0;
fVROCP4OXY2(i)=fVROCP4OXY2(i)+  0.0595;fVROCP2OXY2(i)=fVROCP2OXY2(i)+  0.0018;fVROCN2OXY8(i)=fVROCN2OXY8(i)+  0.0001;fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  0.9980;fGLY(i)=fGLY(i)+  0.4693;fMGLY(i)=fMGLY(i)+  0.4693;fFURANONE(i)=fFURANONE(i)+  0.4693;fDCB2(i)=fDCB2(i)+  0.4693;

% 738, <CLOR62>
i=i+1;
Rnames{ 738} = 'CLO + EBZP = CLOO +  0.00130*VROCP3OXY2 +  0.00060*VROCP0OXY4 +  0.99800*HO2 +  0.08520*BALD +  0.54770*GLY +  0.36510*MGLY +  0.45640*FURANONE +  0.45640*DCB2 ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='EBZP';
fCLO(i)=fCLO(i)-1.0;fEBZP(i)=fEBZP(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.0013;fVROCP0OXY4(i)=fVROCP0OXY4(i)+  0.0006;fHO2(i)=fHO2(i)+  0.9980;fBALD(i)=fBALD(i)+  0.0852;fGLY(i)=fGLY(i)+  0.5477;fMGLY(i)=fMGLY(i)+  0.3651;fFURANONE(i)=fFURANONE(i)+  0.4564;fDCB2(i)=fDCB2(i)+  0.4564;

% 739, <CLOR63>
i=i+1;
Rnames{ 739} = 'CLO + STYP = CLOO + HO2 + HCHO + BALD ';
k(:,i) = (  3.2500E-12.*exp( -1.1400E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='STYP';
fCLO(i)=fCLO(i)-1.0;fSTYP(i)=fSTYP(i)-1.0;
fCLOO(i)=fCLOO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fBALD(i)=fBALD(i)+  1.0000;

% 740, <BRP01>
i=i+1;
Rnames{ 740} = 'BR2 = 2.00000*BR ';
k(:,i) = (JBR2_JPL19 ); 
Gstr{i,   1}='BR2';
fBR2(i)=fBR2(i)-1.0;
fBR(i)=fBR(i)+  2.0000;

% 741, <BRP02>
i=i+1;
Rnames{ 741} = 'BRO = BR + O3P ';
k(:,i) = (JBRO_JPL19 ); 
Gstr{i,   1}='BRO';
fBRO(i)=fBRO(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fO3P(i)=fO3P(i)+  1.0000;

% 742, <BRP03>
i=i+1;
Rnames{ 742} = 'OBRO = BRO + O3P ';
k(:,i) = (JOBRO_JPL19 ); 
Gstr{i,   1}='OBRO';
fOBRO(i)=fOBRO(i)-1.0;
fBRO(i)=fBRO(i)+  1.0000;fO3P(i)=fO3P(i)+  1.0000;

% 743, <BRP04>
i=i+1;
Rnames{ 743} = 'HOBR = BR + HO ';
k(:,i) = (JHOBR_JPL19 ); 
Gstr{i,   1}='HOBR';
fHOBR(i)=fHOBR(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fHO(i)=fHO(i)+  1.0000;

% 744, <BRP06>
i=i+1;
Rnames{ 744} = 'BRNO = BR + NO ';
k(:,i) = (JBRNO_JPL19 ); 
Gstr{i,   1}='BRNO';
fBRNO(i)=fBRNO(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fNO(i)=fNO(i)+  1.0000;

% 745, <BRP08>
i=i+1;
Rnames{ 745} = 'BRNO2 = BR + NO2 ';
k(:,i) = (JBRNO2_JPL19 ); 
Gstr{i,   1}='BRNO2';
fBRNO2(i)=fBRNO2(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 746, <BRP12>
i=i+1;
Rnames{ 746} = 'BRNO3 = BR + NO3 ';
k(:,i) = (JBRNO3_R_JPL19 ); 
Gstr{i,   1}='BRNO3';
fBRNO3(i)=fBRNO3(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 747, <BRP13>
i=i+1;
Rnames{ 747} = 'BRNO3 = BRO + NO2 ';
k(:,i) = (JBRNO3_M_JPL19 ); 
Gstr{i,   1}='BRNO3';
fBRNO3(i)=fBRNO3(i)-1.0;
fBRO(i)=fBRO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 748, <BRP15>
i=i+1;
Rnames{ 748} = 'CH2BR2 = 2.00000*BR +  2.00000*HO2 ';
k(:,i) = (JCH2BR2_JPL19 ); 
Gstr{i,   1}='CH2BR2';
fCH2BR2(i)=fCH2BR2(i)-1.0;
fBR(i)=fBR(i)+  2.0000;fHO2(i)=fHO2(i)+  2.0000;

% 749, <BRP16>
i=i+1;
Rnames{ 749} = 'CHBR3 = 3.00000*BR + HO2 ';
k(:,i) = (JCHBR3_JPL19 ); 
Gstr{i,   1}='CHBR3';
fCHBR3(i)=fCHBR3(i)-1.0;
fBR(i)=fBR(i)+  3.0000;fHO2(i)=fHO2(i)+  1.0000;

% 750, <BRP17>
i=i+1;
Rnames{ 750} = 'HCOBR = BR + CO + HO2 ';
k(:,i) = (JHCOBR_JPL19 ); 
Gstr{i,   1}='HCOBR';
fHCOBR(i)=fHCOBR(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 751, <BRT01>
i=i+1;
Rnames{ 751} = 'BR2 + HO = HOBR + BR ';
k(:,i) = (  2.1000E-11.*exp(  2.4000E+02./T) ); 
Gstr{i,   1}='BR2';Gstr{i,   2}='HO';
fBR2(i)=fBR2(i)-1.0;fHO(i)=fHO(i)-1.0;
fHOBR(i)=fHOBR(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;

% 752, <BRT02>
i=i+1;
Rnames{ 752} = 'BR + O3 = BRO ';
k(:,i) = (  1.6000E-11.*exp( -7.8000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='O3';
fBR(i)=fBR(i)-1.0;fO3(i)=fO3(i)-1.0;
fBRO(i)=fBRO(i)+  1.0000;

% 753, <BRT03>
i=i+1;
Rnames{ 753} = 'BR + HO2 = HBR ';
k(:,i) = (  4.8000E-12.*exp( -3.1000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='HO2';
fBR(i)=fBR(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;

% 754, <BRT06>
i=i+1;
Rnames{ 754} = 'BR + NO2 = BRNO2 ';
xko =   4.3000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -2.4000E+00;
xkinf =   2.7000E-11.*exp(  0.0000E+00./T).*(T./300).^  0.0000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='BR';Gstr{i,   2}='NO2';
fBR(i)=fBR(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fBRNO2(i)=fBRNO2(i)+  1.0000;

% 755, <BRT07>
i=i+1;
Rnames{ 755} = 'BR + NO3 = BRO + NO2 ';
k(:,i) = (  1.6000E-11.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='NO3';
fBR(i)=fBR(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fBRO(i)=fBRO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 756, <BRT08>
i=i+1;
Rnames{ 756} = 'BR + BRNO3 = BR2 + NO3 ';
k(:,i) = (  4.9000E-11.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='BRNO3';
fBR(i)=fBR(i)-1.0;fBRNO3(i)=fBRNO3(i)-1.0;
fBR2(i)=fBR2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 757, <BRT10>
i=i+1;
Rnames{ 757} = 'HO + HBR = BR ';
k(:,i) = (  5.5000E-12.*exp(  2.0000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HBR';
fHO(i)=fHO(i)-1.0;fHBR(i)=fHBR(i)-1.0;
fBR(i)=fBR(i)+  1.0000;

% 758, <BRT11>
i=i+1;
Rnames{ 758} = 'BRO + HO = BR + HO2 ';
k(:,i) = (  1.7000E-11.*exp(  2.5000E+02./T) ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='HO';
fBRO(i)=fBRO(i)-1.0;fHO(i)=fHO(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 759, <BRT12>
i=i+1;
Rnames{ 759} = 'BRO + HO2 = HOBR ';
k(:,i) = (  4.5000E-12.*exp(  4.6000E+02./T) ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='HO2';
fBRO(i)=fBRO(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHOBR(i)=fHOBR(i)+  1.0000;

% 760, <BRT13>
i=i+1;
Rnames{ 760} = 'BRO + NO = BR + NO2 ';
k(:,i) = (  8.8000E-12.*exp(  2.6000E+02./T) ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='NO';
fBRO(i)=fBRO(i)-1.0;fNO(i)=fNO(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 761, <BRT15>
i=i+1;
Rnames{ 761} = 'BRO + NO2 = BRNO3 ';
xko =   5.5000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -3.1000E+00;
xkinf =   6.6000E-12.*exp(  0.0000E+00./T).*(T./300).^ -2.9000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='NO2';
fBRO(i)=fBRO(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fBRNO3(i)=fBRNO3(i)+  1.0000;

% 762, <BRT16>
i=i+1;
Rnames{ 762} = 'BRO + NO3 = OBRO + NO2 ';
k(:,i) = (  1.0000E-12 ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='NO3';
fBRO(i)=fBRO(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fOBRO(i)=fOBRO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 763, <BRT17>
i=i+1;
Rnames{ 763} = 'BRO + BRO = 2.00000*BR ';
k(:,i) = (  2.4000E-12.*exp(  4.0000E+01./T) ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='BRO';
fBRO(i)=fBRO(i)-1.0;fBRO(i)=fBRO(i)-1.0;
fBR(i)=fBR(i)+  2.0000;

% 764, <BRT18>
i=i+1;
Rnames{ 764} = 'BRO + BRO = BR2 ';
k(:,i) = (  2.8000E-14.*exp(  8.6000E+02./T) ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='BRO';
fBRO(i)=fBRO(i)-1.0;fBRO(i)=fBRO(i)-1.0;
fBR2(i)=fBR2(i)+  1.0000;

% 765, <BRT19>
i=i+1;
Rnames{ 765} = 'OBRO + O3 = BRO ';
k(:,i) = (  1.5000E-15 ); 
Gstr{i,   1}='OBRO';Gstr{i,   2}='O3';
fOBRO(i)=fOBRO(i)-1.0;fO3(i)=fO3(i)-1.0;
fBRO(i)=fBRO(i)+  1.0000;

% 766, <BRTO01>
i=i+1;
Rnames{ 766} = 'BR + HCHO = HBR + HO2 + CO ';
k(:,i) = (  1.7000E-11.*exp( -8.0000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='HCHO';
fBR(i)=fBR(i)-1.0;fHCHO(i)=fHCHO(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 767, <BRTO02>
i=i+1;
Rnames{ 767} = 'BR + ACD = HBR + ACO3 ';
k(:,i) = (  1.8000E-11.*exp( -4.6000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ACD';
fBR(i)=fBR(i)-1.0;fACD(i)=fACD(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fACO3(i)=fACO3(i)+  1.0000;

% 768, <BRTO03>
i=i+1;
Rnames{ 768} = 'BR + ALD = HBR + RCO3 ';
k(:,i) = (  4.3000E-11.*exp( -5.2600E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ALD';
fBR(i)=fBR(i)-1.0;fALD(i)=fALD(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fRCO3(i)=fRCO3(i)+  1.0000;

% 769, <BRTO04>
i=i+1;
Rnames{ 769} = 'BR + MOH = HBR + HCHO + HO2 ';
k(:,i) = (  8.0000E-15 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='MOH';
fBR(i)=fBR(i)-1.0;fMOH(i)=fMOH(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 770, <BRTO05>
i=i+1;
Rnames{ 770} = 'BR + EOH = HBR + ACD + HO2 ';
k(:,i) = (  2.0000E-14 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='EOH';
fBR(i)=fBR(i)-1.0;fEOH(i)=fEOH(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fACD(i)=fACD(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 771, <BRTO06>
i=i+1;
Rnames{ 771} = 'BR + ROH = HBR +  0.71900*ALD +  0.18400*ACD + HO2 ';
k(:,i) = (  3.3000E-14 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ROH';
fBR(i)=fBR(i)-1.0;fROH(i)=fROH(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fALD(i)=fALD(i)+  0.7190;fACD(i)=fACD(i)+  0.1840;fHO2(i)=fHO2(i)+  1.0000;

% 772, <BRTO07>
i=i+1;
Rnames{ 772} = 'BR + PINAL = HBR +  0.23000*PINALP +  0.77000*RCO3 ';
k(:,i) = (  5.7000E-11.*exp( -5.3600E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='PINAL';
fBR(i)=fBR(i)-1.0;fPINAL(i)=fPINAL(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fPINALP(i)=fPINALP(i)+  0.2300;fRCO3(i)=fRCO3(i)+  0.7700;

% 773, <BRTO08>
i=i+1;
Rnames{ 773} = 'BR + LIMAL = HBR +  0.70000*LIMALP +  0.30000*RCO3 ';
k(:,i) = (  5.7000E-11.*exp( -5.3600E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='LIMAL';
fBR(i)=fBR(i)-1.0;fLIMAL(i)=fLIMAL(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fLIMALP(i)=fLIMALP(i)+  0.7000;fRCO3(i)=fRCO3(i)+  0.3000;

% 774, <BRTO09>
i=i+1;
Rnames{ 774} = 'BR + HKET = HBR + MGLY + HO2 ';
k(:,i) = (  8.0000E-15 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='HKET';
fBR(i)=fBR(i)-1.0;fHKET(i)=fHKET(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fMGLY(i)=fMGLY(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 775, <BRTO10>
i=i+1;
Rnames{ 775} = 'BR + GLY = HBR + HO2 +  2.00000*CO ';
k(:,i) = (  1.7000E-11.*exp( -8.0000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='GLY';
fBR(i)=fBR(i)-1.0;fGLY(i)=fGLY(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fCO(i)=fCO(i)+  2.0000;

% 776, <BRTO11>
i=i+1;
Rnames{ 776} = 'BR + MGLY = HBR + ACO3 + CO + HO2 ';
k(:,i) = (  1.7000E-11.*exp( -8.0000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='MGLY';
fBR(i)=fBR(i)-1.0;fMGLY(i)=fMGLY(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fACO3(i)=fACO3(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 777, <BRTO12>
i=i+1;
Rnames{ 777} = 'BR + ETEG = HBR + ALD + HO2 ';
k(:,i) = (  2.0000E-14 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ETEG';
fBR(i)=fBR(i)-1.0;fETEG(i)=fETEG(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fALD(i)=fALD(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 778, <BRTO13>
i=i+1;
Rnames{ 778} = 'BR + ISHP = HBR + ISOP ';
k(:,i) = (  6.4000E-16 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ISHP';
fBR(i)=fBR(i)-1.0;fISHP(i)=fISHP(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fISOP(i)=fISOP(i)+  1.0000;

% 779, <BRTO13a>
i=i+1;
Rnames{ 779} = 'BR + ISHP = HBR +  0.04000*MGLY +  0.02000*GLY +  0.13000*MVK +  0.44000*IEPOX +  0.11000*ACO3 +  0.03000*MACR +  2.00000*HO +  0.34000*HO2 +  0.14000*IPX + CO ';
k(:,i) = (  7.3600E-15 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ISHP';
fBR(i)=fBR(i)-1.0;fISHP(i)=fISHP(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fMGLY(i)=fMGLY(i)+  0.0400;fGLY(i)=fGLY(i)+  0.0200;fMVK(i)=fMVK(i)+  0.1300;fIEPOX(i)=fIEPOX(i)+  0.4400;fACO3(i)=fACO3(i)+  0.1100;fMACR(i)=fMACR(i)+  0.0300;fHO(i)=fHO(i)+  2.0000;fHO2(i)=fHO2(i)+  0.3400;fIPX(i)=fIPX(i)+  0.1400;fCO(i)=fCO(i)+  1.0000;

% 780, <BRTO14>
i=i+1;
Rnames{ 780} = 'BR + MAHP = HBR + MACP ';
k(:,i) = (  8.0000E-15 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='MAHP';
fBR(i)=fBR(i)-1.0;fMAHP(i)=fMAHP(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fMACP(i)=fMACP(i)+  1.0000;

% 781, <BRTO15>
i=i+1;
Rnames{ 781} = 'BR + ETE = HBR + ETEP ';
k(:,i) = (  1.3000E-13 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ETE';
fBR(i)=fBR(i)-1.0;fETE(i)=fETE(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fETEP(i)=fETEP(i)+  1.0000;

% 782, <BRTO16>
i=i+1;
Rnames{ 782} = 'BR + OLT = HBR + OLTP ';
k(:,i) = (  3.7000E-12 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='OLT';
fBR(i)=fBR(i)-1.0;fOLT(i)=fOLT(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fOLTP(i)=fOLTP(i)+  1.0000;

% 783, <BRTO17>
i=i+1;
Rnames{ 783} = 'BR + OLI = HBR + OLIP ';
k(:,i) = (  1.0000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='OLI';
fBR(i)=fBR(i)-1.0;fOLI(i)=fOLI(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fOLIP(i)=fOLIP(i)+  1.0000;

% 784, <BRTO18>
i=i+1;
Rnames{ 784} = 'BR + ISO = HCOBR + ISOP +  0.25000*HCHO +  0.03000*MACR +  0.05000*MGLY ';
k(:,i) = (  8.1000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ISO';
fBR(i)=fBR(i)-1.0;fISO(i)=fISO(i)-1.0;
fHCOBR(i)=fHCOBR(i)+  1.0000;fISOP(i)=fISOP(i)+  1.0000;fHCHO(i)=fHCHO(i)+  0.2500;fMACR(i)=fMACR(i)+  0.0300;fMGLY(i)=fMGLY(i)+  0.0500;

% 785, <BRTO19>
i=i+1;
Rnames{ 785} = 'BR + API = HBR +  0.97500*APIP1 +  0.02500*APIP2 ';
k(:,i) = (  2.4000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='API';
fBR(i)=fBR(i)-1.0;fAPI(i)=fAPI(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fAPIP1(i)=fAPIP1(i)+  0.9750;fAPIP2(i)=fAPIP2(i)+  0.0250;

% 786, <BRTO20>
i=i+1;
Rnames{ 786} = 'BR + LIM = HBR +  0.94500*LIMP1 +  0.05500*LIMP2 ';
k(:,i) = (  7.4000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='LIM';
fBR(i)=fBR(i)-1.0;fLIM(i)=fLIM(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fLIMP1(i)=fLIMP1(i)+  0.9450;fLIMP2(i)=fLIMP2(i)+  0.0550;

% 787, <BRTO21>
i=i+1;
Rnames{ 787} = 'BR + ACE = HBR +  0.65000*HO +  0.35000*HO2 +  0.35000*CO +  0.65000*GLY +  0.35000*ORA1 ';
k(:,i) = (  6.4000E-15.*exp(  4.4000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ACE';
fBR(i)=fBR(i)-1.0;fACE(i)=fACE(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fHO(i)=fHO(i)+  0.6500;fHO2(i)=fHO2(i)+  0.3500;fCO(i)=fCO(i)+  0.3500;fGLY(i)=fGLY(i)+  0.6500;fORA1(i)=fORA1(i)+  0.3500;

% 788, <BRTO22>
i=i+1;
Rnames{ 788} = 'BR + MVK = HBR + MVKP ';
k(:,i) = (  2.0000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='MVK';
fBR(i)=fBR(i)-1.0;fMVK(i)=fMVK(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fMVKP(i)=fMVKP(i)+  1.0000;

% 789, <BRTO23>
i=i+1;
Rnames{ 789} = 'BR + UALD = HBR +  0.31300*ACO3 +  0.68700*UALP ';
k(:,i) = (  2.6000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='UALD';
fBR(i)=fBR(i)-1.0;fUALD(i)=fUALD(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fACO3(i)=fACO3(i)+  0.3130;fUALP(i)=fUALP(i)+  0.6870;

% 790, <BRTO24>
i=i+1;
Rnames{ 790} = 'BR + DCB1 = HBR +  0.52000*HO2 +  0.33000*CO +  0.40000*ALD +  0.78000*KET +  0.10000*GLY +  0.01000*MGLY ';
k(:,i) = (  3.7000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='DCB1';
fBR(i)=fBR(i)-1.0;fDCB1(i)=fDCB1(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5200;fCO(i)=fCO(i)+  0.3300;fALD(i)=fALD(i)+  0.4000;fKET(i)=fKET(i)+  0.7800;fGLY(i)=fGLY(i)+  0.1000;fMGLY(i)=fMGLY(i)+  0.0100;

% 791, <BRTO25>
i=i+1;
Rnames{ 791} = 'BR + DCB2 = HBR +  0.52000*HO2 +  0.33000*CO +  0.13000*MEK +  0.10000*GLY +  0.01000*MGLY +  0.78000*OP2 ';
k(:,i) = (  3.7000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='DCB2';
fBR(i)=fBR(i)-1.0;fDCB2(i)=fDCB2(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5200;fCO(i)=fCO(i)+  0.3300;fMEK(i)=fMEK(i)+  0.1300;fGLY(i)=fGLY(i)+  0.1000;fMGLY(i)=fMGLY(i)+  0.0100;fOP2(i)=fOP2(i)+  0.7800;

% 792, <BRTO26>
i=i+1;
Rnames{ 792} = 'BR + DCB3 = HBR +  0.56000*HO2 +  0.21000*MACP +  0.11000*CO +  0.27000*GLY +  0.01000*MGLY +  0.79000*OP2 ';
k(:,i) = (  7.4000E-12 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='DCB3';
fBR(i)=fBR(i)-1.0;fDCB3(i)=fDCB3(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fHO2(i)=fHO2(i)+  0.5600;fMACP(i)=fMACP(i)+  0.2100;fCO(i)=fCO(i)+  0.1100;fGLY(i)=fGLY(i)+  0.2700;fMGLY(i)=fMGLY(i)+  0.0100;fOP2(i)=fOP2(i)+  0.7900;

% 793, <BRTO27>
i=i+1;
Rnames{ 793} = 'BR + SESQ = HBR + SESQRO2 ';
k(:,i) = (  5.3000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='SESQ';
fBR(i)=fBR(i)-1.0;fSESQ(i)=fSESQ(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fSESQRO2(i)=fSESQRO2(i)+  1.0000;

% 794, <BRTO28>
i=i+1;
Rnames{ 794} = 'BR + ACRO = HBR +  0.57000*MACP +  0.43000*MCP ';
k(:,i) = (  4.3000E-12 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='ACRO';
fBR(i)=fBR(i)-1.0;fACRO(i)=fACRO(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fMACP(i)=fMACP(i)+  0.5700;fMCP(i)=fMCP(i)+  0.4300;

% 795, <BRTO29>
i=i+1;
Rnames{ 795} = 'BR + MACR = HBR +  0.57000*MACP +  0.43000*MCP ';
k(:,i) = (  2.5000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='MACR';
fBR(i)=fBR(i)-1.0;fMACR(i)=fMACR(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fMACP(i)=fMACP(i)+  0.5700;fMCP(i)=fMCP(i)+  0.4300;

% 796, <BRTO30>
i=i+1;
Rnames{ 796} = 'BR + BDE13 = HBR +  0.66700*BDE13P +  0.33300*UALD +  0.33300*HO2 ';
k(:,i) = (  6.3000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='BDE13';
fBR(i)=fBR(i)-1.0;fBDE13(i)=fBDE13(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fBDE13P(i)=fBDE13P(i)+  0.6670;fUALD(i)=fUALD(i)+  0.3330;fHO2(i)=fHO2(i)+  0.3330;

% 797, <BRTO31>
i=i+1;
Rnames{ 797} = 'BR + BEN = HBR +  0.47000*BENP +  0.53000*PHEN +  0.53000*HO2 ';
k(:,i) = (  5.0000E-16 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='BEN';
fBR(i)=fBR(i)-1.0;fBEN(i)=fBEN(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fBENP(i)=fBENP(i)+  0.4700;fPHEN(i)=fPHEN(i)+  0.5300;fHO2(i)=fHO2(i)+  0.5300;

% 798, <BRTO32>
i=i+1;
Rnames{ 798} = 'BR + TOL = HBR +  0.82000*TOLP +  0.18000*CSL +  0.18000*HO2 ';
k(:,i) = (  1.4500E-14 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='TOL';
fBR(i)=fBR(i)-1.0;fTOL(i)=fTOL(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fTOLP(i)=fTOLP(i)+  0.8200;fCSL(i)=fCSL(i)+  0.1800;fHO2(i)=fHO2(i)+  0.1800;

% 799, <BRTO34>
i=i+1;
Rnames{ 799} = 'BR + XYL = HBR +  0.83000*XYLP +  0.17000*CSL +  0.17000*HO2 ';
k(:,i) = (  7.2500E-14 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='XYL';
fBR(i)=fBR(i)-1.0;fXYL(i)=fXYL(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fXYLP(i)=fXYLP(i)+  0.8300;fCSL(i)=fCSL(i)+  0.1700;fHO2(i)=fHO2(i)+  0.1700;

% 800, <BRTO35>
i=i+1;
Rnames{ 800} = 'BR + BALD = HBR + BALP ';
k(:,i) = (  1.0000E-13 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='BALD';
fBR(i)=fBR(i)-1.0;fBALD(i)=fBALD(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fBALP(i)=fBALP(i)+  1.0000;

% 801, <BRT036>
i=i+1;
Rnames{ 801} = 'BR + PHEN = HBR +  0.15200*ASOATJ +  0.61900*HO2 +  0.17000*ADDC +  0.05900*CHO +  0.61900*MCT ';
k(:,i) = (  7.2500E-14 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='PHEN';
fBR(i)=fBR(i)-1.0;fPHEN(i)=fPHEN(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.1520;fHO2(i)=fHO2(i)+  0.6190;fADDC(i)=fADDC(i)+  0.1700;fCHO(i)=fCHO(i)+  0.0590;fMCT(i)=fMCT(i)+  0.6190;

% 802, <BRTO37>
i=i+1;
Rnames{ 802} = 'BR + CSL = HBR +  0.20000*ASOATJ +  0.58400*HO2 +  0.16000*ADDC +  0.05600*CHO +  0.58400*MCT ';
k(:,i) = (  7.2500E-14.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='CSL';
fBR(i)=fBR(i)-1.0;fCSL(i)=fCSL(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fASOATJ(i)=fASOATJ(i)+  0.2000;fHO2(i)=fHO2(i)+  0.5840;fADDC(i)=fADDC(i)+  0.1600;fCHO(i)=fCHO(i)+  0.0560;fMCT(i)=fMCT(i)+  0.5840;

% 803, <BRTO38>
i=i+1;
Rnames{ 803} = 'BR + MCT = HBR + MCTO ';
k(:,i) = (  7.2500E-14.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='MCT';
fBR(i)=fBR(i)-1.0;fMCT(i)=fMCT(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fMCTO(i)=fMCTO(i)+  1.0000;

% 804, <BRTO39>
i=i+1;
Rnames{ 804} = 'BR + NAPH = HBR +  0.84000*NAPHP +  0.16000*HO2 +  0.16000*VROCP3OXY2 ';
k(:,i) = (  3.0000E-16 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='NAPH';
fBR(i)=fBR(i)-1.0;fNAPH(i)=fNAPH(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fNAPHP(i)=fNAPHP(i)+  0.8400;fHO2(i)=fHO2(i)+  0.1600;fVROCP3OXY2(i)=fVROCP3OXY2(i)+  0.1600;

% 805, <BRTO40>
i=i+1;
Rnames{ 805} = 'BR + FURAN = HBR +  0.49000*DCB1 +  0.49000*HO2 +  0.51000*FURANO2 ';
k(:,i) = (  5.0100E-12 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='FURAN';
fBR(i)=fBR(i)-1.0;fFURAN(i)=fFURAN(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fDCB1(i)=fDCB1(i)+  0.4900;fHO2(i)=fHO2(i)+  0.4900;fFURANO2(i)=fFURANO2(i)+  0.5100;

% 806, <BRTO41>
i=i+1;
Rnames{ 806} = 'HO + CH2BR2 = HCOBR + BR + HO2 ';
k(:,i) = (  2.0000E-12.*exp( -8.4000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CH2BR2';
fHO(i)=fHO(i)-1.0;fCH2BR2(i)=fCH2BR2(i)-1.0;
fHCOBR(i)=fHCOBR(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 807, <BRTO42>
i=i+1;
Rnames{ 807} = 'HO + HCOBR = BR + CO ';
k(:,i) = (  8.5000E-12 ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HCOBR';
fHO(i)=fHO(i)-1.0;fHCOBR(i)=fHCOBR(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fCO(i)=fCO(i)+  1.0000;

% 808, <BRTO43>
i=i+1;
Rnames{ 808} = 'HO + CHBR3 = 3.00000*BR ';
k(:,i) = (  9.0000E-12.*exp( -3.6000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CHBR3';
fHO(i)=fHO(i)-1.0;fCHBR3(i)=fCHBR3(i)-1.0;
fBR(i)=fBR(i)+  3.0000;

% 809, <BRT044>
i=i+1;
Rnames{ 809} = 'BR + EBZ = HBR +  0.82000*EBZP +  0.18000*CSL +  0.18000*HO2 ';
k(:,i) = (  3.1400E-14 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='EBZ';
fBR(i)=fBR(i)-1.0;fEBZ(i)=fEBZ(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fEBZP(i)=fEBZP(i)+  0.8200;fCSL(i)=fCSL(i)+  0.1800;fHO2(i)=fHO2(i)+  0.1800;

% 810, <BRT045>
i=i+1;
Rnames{ 810} = 'BR + STY = HBR + STYP ';
k(:,i) = (  5.6000E-12 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='STY';
fBR(i)=fBR(i)-1.0;fSTY(i)=fSTY(i)-1.0;
fHBR(i)=fHBR(i)+  1.0000;fSTYP(i)=fSTYP(i)+  1.0000;

% 811, <IP01>
i=i+1;
Rnames{ 811} = 'I2 = 2.00000*I ';
k(:,i) = (JI2_JPL19 ); 
Gstr{i,   1}='I2';
fI2(i)=fI2(i)-1.0;
fI(i)=fI(i)+  2.0000;

% 812, <IP02>
i=i+1;
Rnames{ 812} = 'IO = I + O3P ';
k(:,i) = (JIO_JPL19 ); 
Gstr{i,   1}='IO';
fIO(i)=fIO(i)-1.0;
fI(i)=fI(i)+  1.0000;fO3P(i)=fO3P(i)+  1.0000;

% 813, <IP03>
i=i+1;
Rnames{ 813} = 'OIO = I ';
k(:,i) = (JOIO_JPL19 ); 
Gstr{i,   1}='OIO';
fOIO(i)=fOIO(i)-1.0;
fI(i)=fI(i)+  1.0000;

% 814, <IP05>
i=i+1;
Rnames{ 814} = 'I2O2 = I + OIO ';
k(:,i) = (JINO3_06 ); 
Gstr{i,   1}='I2O2';
fI2O2(i)=fI2O2(i)-1.0;
fI(i)=fI(i)+  1.0000;fOIO(i)=fOIO(i)+  1.0000;

% 815, <IP09>
i=i+1;
Rnames{ 815} = 'HOI = I + HO ';
k(:,i) = (JHOI_JPL19 ); 
Gstr{i,   1}='HOI';
fHOI(i)=fHOI(i)-1.0;
fI(i)=fI(i)+  1.0000;fHO(i)=fHO(i)+  1.0000;

% 816, <IP10>
i=i+1;
Rnames{ 816} = 'HI = I + HO2 ';
k(:,i) = (JHI_JPL19 ); 
Gstr{i,   1}='HI';
fHI(i)=fHI(i)-1.0;
fI(i)=fI(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 817, <IP11>
i=i+1;
Rnames{ 817} = 'INO = I + NO ';
k(:,i) = (JINO_JPL19 ); 
Gstr{i,   1}='INO';
fINO(i)=fINO(i)-1.0;
fI(i)=fI(i)+  1.0000;fNO(i)=fNO(i)+  1.0000;

% 818, <IP12>
i=i+1;
Rnames{ 818} = 'INO2 = I + NO2 ';
k(:,i) = (JINO2_JPL19 ); 
Gstr{i,   1}='INO2';
fINO2(i)=fINO2(i)-1.0;
fI(i)=fI(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 819, <IP16>
i=i+1;
Rnames{ 819} = 'INO3 = I + NO3 ';
k(:,i) = (JINO3_06 ); 
Gstr{i,   1}='INO3';
fINO3(i)=fINO3(i)-1.0;
fI(i)=fI(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 820, <IP19>
i=i+1;
Rnames{ 820} = 'CH3I = I + MO2 ';
k(:,i) = (JCH3I_JPL19 ); 
Gstr{i,   1}='CH3I';
fCH3I(i)=fCH3I(i)-1.0;
fI(i)=fI(i)+  1.0000;fMO2(i)=fMO2(i)+  1.0000;

% 821, <IP20>
i=i+1;
Rnames{ 821} = 'CH2I2 = 2.00000*I +  2.00000*HO2 ';
k(:,i) = (JCH2I2_JPL19 ); 
Gstr{i,   1}='CH2I2';
fCH2I2(i)=fCH2I2(i)-1.0;
fI(i)=fI(i)+  2.0000;fHO2(i)=fHO2(i)+  2.0000;

% 822, <IO21>
i=i+1;
Rnames{ 822} = 'I2O3 = IO + OIO ';
k(:,i) = (JINO3_06 ); 
Gstr{i,   1}='I2O3';
fI2O3(i)=fI2O3(i)-1.0;
fIO(i)=fIO(i)+  1.0000;fOIO(i)=fOIO(i)+  1.0000;

% 823, <IO22>
i=i+1;
Rnames{ 823} = 'I2O4 = 2.00000*OIO ';
k(:,i) = (JINO3_06 ); 
Gstr{i,   1}='I2O4';
fI2O4(i)=fI2O4(i)-1.0;
fOIO(i)=fOIO(i)+  2.0000;

% 824, <IT02>
i=i+1;
Rnames{ 824} = 'I2 + HO = HOI + I ';
k(:,i) = (  1.8000E-10 ); 
Gstr{i,   1}='I2';Gstr{i,   2}='HO';
fI2(i)=fI2(i)-1.0;fHO(i)=fHO(i)-1.0;
fHOI(i)=fHOI(i)+  1.0000;fI(i)=fI(i)+  1.0000;

% 825, <IT03>
i=i+1;
Rnames{ 825} = 'I2 + NO3 = I + INO3 ';
k(:,i) = (  1.5000E-12 ); 
Gstr{i,   1}='I2';Gstr{i,   2}='NO3';
fI2(i)=fI2(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fI(i)=fI(i)+  1.0000;fINO3(i)=fINO3(i)+  1.0000;

% 826, <IT04>
i=i+1;
Rnames{ 826} = 'I + O3 = IO ';
k(:,i) = (  2.1000E-11.*exp( -8.3000E+02./T) ); 
Gstr{i,   1}='I';Gstr{i,   2}='O3';
fI(i)=fI(i)-1.0;fO3(i)=fO3(i)-1.0;
fIO(i)=fIO(i)+  1.0000;

% 827, <IT05>
i=i+1;
Rnames{ 827} = 'I + HO2 = HI ';
k(:,i) = (  1.5000E-11.*exp( -1.0900E+03./T) ); 
Gstr{i,   1}='I';Gstr{i,   2}='HO2';
fI(i)=fI(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHI(i)=fHI(i)+  1.0000;

% 828, <IT06>
i=i+1;
Rnames{ 828} = 'I + NO = INO ';
xko =   1.8000E-32.*M.*exp(  0.0000E+00./T).*(T./300).^ -1.0000E+00;
xkinf =   1.7000E-11.*exp(  0.0000E+00./T).*(T./300).^  0.0000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='I';Gstr{i,   2}='NO';
fI(i)=fI(i)-1.0;fNO(i)=fNO(i)-1.0;
fINO(i)=fINO(i)+  1.0000;

% 829, <IT07>
i=i+1;
Rnames{ 829} = 'I + NO2 = INO2 ';
xko =   3.0000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -1.0000E+00;
xkinf =   6.6000E-11.*exp(  0.0000E+00./T).*(T./300).^  0.0000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='I';Gstr{i,   2}='NO2';
fI(i)=fI(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fINO2(i)=fINO2(i)+  1.0000;

% 830, <IT09>
i=i+1;
Rnames{ 830} = 'I + INO3 = I2 + NO3 ';
k(:,i) = (  9.1000E-11.*exp( -1.4600E+02./T) ); 
Gstr{i,   1}='I';Gstr{i,   2}='INO3';
fI(i)=fI(i)-1.0;fINO3(i)=fINO3(i)-1.0;
fI2(i)=fI2(i)+  1.0000;fNO3(i)=fNO3(i)+  1.0000;

% 831, <IT10>
i=i+1;
Rnames{ 831} = 'INO2 = I + NO2 ';
k(:,i) = (  9.9400E+17.*exp( -1.1859E+04./T) ); 
Gstr{i,   1}='INO2';
fINO2(i)=fINO2(i)-1.0;
fI(i)=fI(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 832, <IT11>
i=i+1;
Rnames{ 832} = 'INO3 = IO + NO2 ';
k(:,i) = (  2.1000E+15.*exp( -1.3670E+04./T) ); 
Gstr{i,   1}='INO3';
fINO3(i)=fINO3(i)-1.0;
fIO(i)=fIO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 833, <IT12>
i=i+1;
Rnames{ 833} = 'INO + INO = I2 +  2.00000*NO ';
k(:,i) = (  8.4000E-11.*exp( -2.6200E+03./T) ); 
Gstr{i,   1}='INO';Gstr{i,   2}='INO';
fINO(i)=fINO(i)-1.0;fINO(i)=fINO(i)-1.0;
fI2(i)=fI2(i)+  1.0000;fNO(i)=fNO(i)+  2.0000;

% 834, <IT13>
i=i+1;
Rnames{ 834} = 'INO2 + INO2 = I2 +  2.00000*NO2 ';
k(:,i) = (  2.9000E-11.*exp( -2.6000E+03./T) ); 
Gstr{i,   1}='INO2';Gstr{i,   2}='INO2';
fINO2(i)=fINO2(i)-1.0;fINO2(i)=fINO2(i)-1.0;
fI2(i)=fI2(i)+  1.0000;fNO2(i)=fNO2(i)+  2.0000;

% 835, <IT15>
i=i+1;
Rnames{ 835} = 'HO + HOI = IO ';
k(:,i) = (  5.0000E-12 ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HOI';
fHO(i)=fHO(i)-1.0;fHOI(i)=fHOI(i)-1.0;
fIO(i)=fIO(i)+  1.0000;

% 836, <IT16>
i=i+1;
Rnames{ 836} = 'HO + HI = I ';
k(:,i) = (  3.0000E-11 ); 
Gstr{i,   1}='HO';Gstr{i,   2}='HI';
fHO(i)=fHO(i)-1.0;fHI(i)=fHI(i)-1.0;
fI(i)=fI(i)+  1.0000;

% 837, <IT20>
i=i+1;
Rnames{ 837} = 'IO + HO2 = HOI ';
k(:,i) = (  1.4000E-11.*exp(  5.4000E+02./T) ); 
Gstr{i,   1}='IO';Gstr{i,   2}='HO2';
fIO(i)=fIO(i)-1.0;fHO2(i)=fHO2(i)-1.0;
fHOI(i)=fHOI(i)+  1.0000;

% 838, <IT21>
i=i+1;
Rnames{ 838} = 'IO + NO = I + NO2 ';
k(:,i) = (  8.6000E-12.*exp(  2.3000E+02./T) ); 
Gstr{i,   1}='IO';Gstr{i,   2}='NO';
fIO(i)=fIO(i)-1.0;fNO(i)=fNO(i)-1.0;
fI(i)=fI(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 839, <IT22>
i=i+1;
Rnames{ 839} = 'OIO + NO = IO + NO2 ';
k(:,i) = (  1.1000E-12.*exp(  5.4200E+02./T) ); 
Gstr{i,   1}='OIO';Gstr{i,   2}='NO';
fOIO(i)=fOIO(i)-1.0;fNO(i)=fNO(i)-1.0;
fIO(i)=fIO(i)+  1.0000;fNO2(i)=fNO2(i)+  1.0000;

% 840, <IT23>
i=i+1;
Rnames{ 840} = 'IO + NO2 = INO3 ';
xko =   7.7000E-31.*M.*exp(  0.0000E+00./T).*(T./300).^ -3.5000E+00;
xkinf =   7.7000E-12.*exp(  0.0000E+00./T).*(T./300).^ -1.5000E+00;
xn =   1.0000E+00;
F =   6.0000E-01;
G=1.0./(1.0+(log10(xko./xkinf)./xn).^2);
k(:,i) = (xko./( 1.0+xko./xkinf).*F.^G ); 
Gstr{i,   1}='IO';Gstr{i,   2}='NO2';
fIO(i)=fIO(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fINO3(i)=fINO3(i)+  1.0000;

% 841, <IT25>
i=i+1;
Rnames{ 841} = 'IO + IO = 0.64000*I +  0.40000*OIO +  0.48000*I2O2 ';
k(:,i) = (  1.5000E-11.*exp(  5.0000E+02./T) ); 
Gstr{i,   1}='IO';Gstr{i,   2}='IO';
fIO(i)=fIO(i)-1.0;fIO(i)=fIO(i)-1.0;
fI(i)=fI(i)+  0.6400;fOIO(i)=fOIO(i)+  0.4000;fI2O2(i)=fI2O2(i)+  0.4800;

% 842, <IT30>
i=i+1;
Rnames{ 842} = 'I2O2 = OIO + I ';
k(:,i) = (  2.5000E+14.*exp( -9.7700E+03./T) ); 
Gstr{i,   1}='I2O2';
fI2O2(i)=fI2O2(i)-1.0;
fOIO(i)=fOIO(i)+  1.0000;fI(i)=fI(i)+  1.0000;

% 843, <IT33>
i=i+1;
Rnames{ 843} = 'HOI + NO3 = IO + HNO3 ';
k(:,i) = (  2.7000E-12.*(T./300).^( -2.6600E+00) ); 
Gstr{i,   1}='HOI';Gstr{i,   2}='NO3';
fHOI(i)=fHOI(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fIO(i)=fIO(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 844, <IT34>
i=i+1;
Rnames{ 844} = 'I2O2 = 2.00000*IO ';
k(:,i) = (  1.0000E+12.*exp( -9.7700E+03./T) ); 
Gstr{i,   1}='I2O2';
fI2O2(i)=fI2O2(i)-1.0;
fIO(i)=fIO(i)+  2.0000;

% 845, <IT35>
i=i+1;
Rnames{ 845} = 'OIO + OIO = I2O4 ';
k(:,i) = (  1.5000E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='OIO';Gstr{i,   2}='OIO';
fOIO(i)=fOIO(i)-1.0;fOIO(i)=fOIO(i)-1.0;
fI2O4(i)=fI2O4(i)+  1.0000;

% 846, <IT36>
i=i+1;
Rnames{ 846} = 'IO + OIO = I2O3 ';
k(:,i) = (  1.5000E-10.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='IO';Gstr{i,   2}='OIO';
fIO(i)=fIO(i)-1.0;fOIO(i)=fOIO(i)-1.0;
fI2O3(i)=fI2O3(i)+  1.0000;

% 847, <IT37>
i=i+1;
Rnames{ 847} = 'I2O4 = 2.00000*OIO ';
k(:,i) = (  3.8000E-02.*exp(  0.0000E+00./T) ); 
Gstr{i,   1}='I2O4';
fI2O4(i)=fI2O4(i)-1.0;
fOIO(i)=fOIO(i)+  2.0000;

% 848, <IT38>
i=i+1;
Rnames{ 848} = 'HI + NO3 = I + HNO3 ';
k(:,i) = (  1.3000E-12.*exp( -1.8300E+03./T) ); 
Gstr{i,   1}='HI';Gstr{i,   2}='NO3';
fHI(i)=fHI(i)-1.0;fNO3(i)=fNO3(i)-1.0;
fI(i)=fI(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 849, <IT39>
i=i+1;
Rnames{ 849} = 'I2 + O3P = IO + I ';
k(:,i) = (  1.2500E-10 ); 
Gstr{i,   1}='I2';Gstr{i,   2}='O3P';
fI2(i)=fI2(i)-1.0;fO3P(i)=fO3P(i)-1.0;
fIO(i)=fIO(i)+  1.0000;fI(i)=fI(i)+  1.0000;

% 850, <ITO01>
i=i+1;
Rnames{ 850} = 'CH3I + HO = I + HCHO ';
k(:,i) = (  4.3000E-12.*exp( -1.1200E+03./T) ); 
Gstr{i,   1}='CH3I';Gstr{i,   2}='HO';
fCH3I(i)=fCH3I(i)-1.0;fHO(i)=fHO(i)-1.0;
fI(i)=fI(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

% 851, <MP01>
i=i+1;
Rnames{ 851} = 'BRCL = BR + CL ';
k(:,i) = (JBRCL_JPL19 ); 
Gstr{i,   1}='BRCL';
fBRCL(i)=fBRCL(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fCL(i)=fCL(i)+  1.0000;

% 852, <MP03>
i=i+1;
Rnames{ 852} = 'ICL = I + CL ';
k(:,i) = (JICL_JPL19 ); 
Gstr{i,   1}='ICL';
fICL(i)=fICL(i)-1.0;
fI(i)=fI(i)+  1.0000;fCL(i)=fCL(i)+  1.0000;

% 853, <MP04>
i=i+1;
Rnames{ 853} = 'IBR = I + BR ';
k(:,i) = (JIBR_JPL19 ); 
Gstr{i,   1}='IBR';
fIBR(i)=fIBR(i)-1.0;
fI(i)=fI(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;

% 854, <MP06>
i=i+1;
Rnames{ 854} = 'CH2IBR = I + BR +  2.00000*HO2 ';
k(:,i) = (JCH2IBR_JPL19 ); 
Gstr{i,   1}='CH2IBR';
fCH2IBR(i)=fCH2IBR(i)-1.0;
fI(i)=fI(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;fHO2(i)=fHO2(i)+  2.0000;

% 855, <MP07>
i=i+1;
Rnames{ 855} = 'CH2ICL = I + CL + HO2 ';
k(:,i) = (JCH2ICL_JPL19 ); 
Gstr{i,   1}='CH2ICL';
fCH2ICL(i)=fCH2ICL(i)-1.0;
fI(i)=fI(i)+  1.0000;fCL(i)=fCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 856, <MP08>
i=i+1;
Rnames{ 856} = 'CHBR2CL = 2.00000*BR + CL + HO2 ';
k(:,i) = (JCHBR2CL_JPL19 ); 
Gstr{i,   1}='CHBR2CL';
fCHBR2CL(i)=fCHBR2CL(i)-1.0;
fBR(i)=fBR(i)+  2.0000;fCL(i)=fCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;

% 857, <MP09>
i=i+1;
Rnames{ 857} = 'CHBRCL2 = BR +  2.00000*CL + HO2 ';
k(:,i) = (JCHBRCL2_JPL19 ); 
Gstr{i,   1}='CHBRCL2';
fCHBRCL2(i)=fCHBRCL2(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fCL(i)=fCL(i)+  2.0000;fHO2(i)=fHO2(i)+  1.0000;

% 858, <MT01>
i=i+1;
Rnames{ 858} = 'BR + OCLO = BRO + CLO ';
k(:,i) = (  2.6000E-11.*exp( -1.3000E+03./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='OCLO';
fBR(i)=fBR(i)-1.0;fOCLO(i)=fOCLO(i)-1.0;
fBRO(i)=fBRO(i)+  1.0000;fCLO(i)=fCLO(i)+  1.0000;

% 859, <MT02>
i=i+1;
Rnames{ 859} = 'BR + CL2O2 = BRCL + CLOO ';
k(:,i) = (  5.9000E-12.*exp( -1.7000E+02./T) ); 
Gstr{i,   1}='BR';Gstr{i,   2}='CL2O2';
fBR(i)=fBR(i)-1.0;fCL2O2(i)=fCL2O2(i)-1.0;
fBRCL(i)=fBRCL(i)+  1.0000;fCLOO(i)=fCLOO(i)+  1.0000;

% 860, <MT03>
i=i+1;
Rnames{ 860} = 'I + BRO = IO + BR ';
k(:,i) = (  1.2000E-11 ); 
Gstr{i,   1}='I';Gstr{i,   2}='BRO';
fI(i)=fI(i)-1.0;fBRO(i)=fBRO(i)-1.0;
fIO(i)=fIO(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;

% 861, <MT04>
i=i+1;
Rnames{ 861} = 'BR + IO = I + BRO ';
k(:,i) = (  2.7000E-11 ); 
Gstr{i,   1}='BR';Gstr{i,   2}='IO';
fBR(i)=fBR(i)-1.0;fIO(i)=fIO(i)-1.0;
fI(i)=fI(i)+  1.0000;fBRO(i)=fBRO(i)+  1.0000;

% 862, <MT05>
i=i+1;
Rnames{ 862} = 'CLO + BRO = BR + OCLO ';
k(:,i) = (  9.5000E-13.*exp(  5.5000E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='BRO';
fCLO(i)=fCLO(i)-1.0;fBRO(i)=fBRO(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fOCLO(i)=fOCLO(i)+  1.0000;

% 863, <MT06>
i=i+1;
Rnames{ 863} = 'CLO + BRO = CL + BR ';
k(:,i) = (  2.9000E-12.*exp(  2.2000E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='BRO';
fCLO(i)=fCLO(i)-1.0;fBRO(i)=fBRO(i)-1.0;
fCL(i)=fCL(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;

% 864, <MT07>
i=i+1;
Rnames{ 864} = 'CLO + IO = I + OCLO ';
k(:,i) = (  2.7000E-12.*exp(  2.8000E+02./T) ); 
Gstr{i,   1}='CLO';Gstr{i,   2}='IO';
fCLO(i)=fCLO(i)-1.0;fIO(i)=fIO(i)-1.0;
fI(i)=fI(i)+  1.0000;fOCLO(i)=fOCLO(i)+  1.0000;

% 865, <MT08>
i=i+1;
Rnames{ 865} = 'BRO + IO = BR + OIO ';
k(:,i) = (  4.4000E-12.*exp(  7.6000E+02./T) ); 
Gstr{i,   1}='BRO';Gstr{i,   2}='IO';
fBRO(i)=fBRO(i)-1.0;fIO(i)=fIO(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fOIO(i)=fOIO(i)+  1.0000;

% 866, <MTO01>
i=i+1;
Rnames{ 866} = 'CL + CH2BR2 = HCL + HO2 +  2.00000*BR ';
k(:,i) = (  6.8000E-12.*exp( -8.3000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CH2BR2';
fCL(i)=fCL(i)-1.0;fCH2BR2(i)=fCH2BR2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fBR(i)=fBR(i)+  2.0000;

% 867, <MTO02>
i=i+1;
Rnames{ 867} = 'CL + CHBR3 = HCL +  3.00000*BR ';
k(:,i) = (  4.3500E-12.*exp( -8.5000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CHBR3';
fCL(i)=fCL(i)-1.0;fCHBR3(i)=fCHBR3(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fBR(i)=fBR(i)+  3.0000;

% 868, <MTO03>
i=i+1;
Rnames{ 868} = 'CL + CH2BRCL = HCL + HO2 + CL + BR ';
k(:,i) = (  6.8000E-12.*exp( -8.7000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CH2BRCL';
fCL(i)=fCL(i)-1.0;fCH2BRCL(i)=fCH2BRCL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fHO2(i)=fHO2(i)+  1.0000;fCL(i)=fCL(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;

% 869, <MTO06>
i=i+1;
Rnames{ 869} = 'HO + CH2BRCL = HO2 + CL + BR ';
k(:,i) = (  2.1000E-13.*exp( -8.8000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CH2BRCL';
fHO(i)=fHO(i)-1.0;fCH2BRCL(i)=fCH2BRCL(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fCL(i)=fCL(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;

% 870, <MTO07>
i=i+1;
Rnames{ 870} = 'CL + CHBR2CL = HCL +  2.00000*BR + CL ';
k(:,i) = (  4.8500E-12.*exp( -8.5000E+02./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CHBR2CL';
fCL(i)=fCL(i)-1.0;fCHBR2CL(i)=fCHBR2CL(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fBR(i)=fBR(i)+  2.0000;fCL(i)=fCL(i)+  1.0000;

% 871, <MTO08>
i=i+1;
Rnames{ 871} = 'CL + CHBRCL2 = HCL + BR +  2.00000*CL ';
k(:,i) = (  2.0300E-11.*exp( -1.1100E+03./T) ); 
Gstr{i,   1}='CL';Gstr{i,   2}='CHBRCL2';
fCL(i)=fCL(i)-1.0;fCHBRCL2(i)=fCHBRCL2(i)-1.0;
fHCL(i)=fHCL(i)+  1.0000;fBR(i)=fBR(i)+  1.0000;fCL(i)=fCL(i)+  2.0000;

% 872, <MTO09>
i=i+1;
Rnames{ 872} = 'HO + CHBR2CL = 2.00000*BR + CL ';
k(:,i) = (  9.0000E-13.*exp( -4.2000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CHBR2CL';
fHO(i)=fHO(i)-1.0;fCHBR2CL(i)=fCHBR2CL(i)-1.0;
fBR(i)=fBR(i)+  2.0000;fCL(i)=fCL(i)+  1.0000;

% 873, <MTO10>
i=i+1;
Rnames{ 873} = 'HO + CHBRCL2 = BR +  2.00000*CL ';
k(:,i) = (  9.4000E-13.*exp( -5.1000E+02./T) ); 
Gstr{i,   1}='HO';Gstr{i,   2}='CHBRCL2';
fHO(i)=fHO(i)-1.0;fCHBRCL2(i)=fCHBRCL2(i)-1.0;
fBR(i)=fBR(i)+  1.0000;fCL(i)=fCL(i)+  2.0000;

% 874, <HET_N2O5IJ>
i=i+1;
Rnames{ 874} = 'N2O5 = HNO3 + NO2PIJ ';
k(:,i) = (K_HETERO_N2O5IJ ); 
Gstr{i,   1}='N2O5';
fN2O5(i)=fN2O5(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;fNO2PIJ(i)=fNO2PIJ(i)+  1.0000;

% 875, <HET_N2O5K>
i=i+1;
Rnames{ 875} = 'N2O5 = HNO3 + NO2PK ';
k(:,i) = (K_HETERO_N2O5K ); 
Gstr{i,   1}='N2O5';
fN2O5(i)=fN2O5(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;fNO2PK(i)=fNO2PK(i)+  1.0000;

% 876, <HET_H2NO3PIJA>
i=i+1;
Rnames{ 876} = 'NO2PIJ = HNO3 ';
k(:,i) = (K_HETERO_H2NO3PAIJ ); 
Gstr{i,   1}='NO2PIJ';
fNO2PIJ(i)=fNO2PIJ(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;

% 877, <HET_H2NO3PKA>
i=i+1;
Rnames{ 877} = 'NO2PK = HNO3 ';
k(:,i) = (K_HETERO_H2NO3PAK ); 
Gstr{i,   1}='NO2PK';
fNO2PK(i)=fNO2PK(i)-1.0;
fHNO3(i)=fHNO3(i)+  1.0000;

% 878, <HET_H2NO3PIB>
i=i+1;
Rnames{ 878} = 'NO2PIJ + ACLI = CLNO2 ';
k(:,i) = (K_HETERO_H2NO3PBIJ ); 
Gstr{i,   1}='NO2PIJ';Gstr{i,   2}='ACLI';
fNO2PIJ(i)=fNO2PIJ(i)-1.0;fACLI(i)=fACLI(i)-1.0;
fCLNO2(i)=fCLNO2(i)+  1.0000;

% 879, <HET_H2NO3PJB>
i=i+1;
Rnames{ 879} = 'NO2PIJ + ACLJ = CLNO2 ';
k(:,i) = (K_HETERO_H2NO3PBIJ ); 
Gstr{i,   1}='NO2PIJ';Gstr{i,   2}='ACLJ';
fNO2PIJ(i)=fNO2PIJ(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fCLNO2(i)=fCLNO2(i)+  1.0000;

% 880, <HET_H2NO3PKB>
i=i+1;
Rnames{ 880} = 'NO2PK + ACLK = CLNO2 ';
k(:,i) = (K_HETERO_H2NO3PBK ); 
Gstr{i,   1}='NO2PK';Gstr{i,   2}='ACLK';
fNO2PK(i)=fNO2PK(i)-1.0;fACLK(i)=fACLK(i)-1.0;
fCLNO2(i)=fCLNO2(i)+  1.0000;

% 881, <HET_HOCL_ACLJ>
i=i+1;
Rnames{ 881} = 'HOCL + ACLJ = CL2 ';
k(:,i) = (K_HETERO_HOCL_ACLJ ); 
Gstr{i,   1}='HOCL';Gstr{i,   2}='ACLJ';
fHOCL(i)=fHOCL(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;

% 882, <HET_HOCL_ABRJ>
i=i+1;
Rnames{ 882} = 'HOCL + ABRJ = BRCL ';
k(:,i) = (K_HETERO_HOCL_ABRJ ); 
Gstr{i,   1}='HOCL';Gstr{i,   2}='ABRJ';
fHOCL(i)=fHOCL(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fBRCL(i)=fBRCL(i)+  1.0000;

% 883, <HET_CLN2_WAI>
i=i+1;
Rnames{ 883} = 'CLNO2 = ACLI + ANO3I ';
k(:,i) = (K_HETERO_CLN2_WAI ); 
Gstr{i,   1}='CLNO2';
fCLNO2(i)=fCLNO2(i)-1.0;
fACLI(i)=fACLI(i)+  1.0000;fANO3I(i)=fANO3I(i)+  1.0000;

% 884, <HET_CLN2_WAJ>
i=i+1;
Rnames{ 884} = 'CLNO2 = ACLJ + ANO3J ';
k(:,i) = (K_HETERO_CLN2_WAJ ); 
Gstr{i,   1}='CLNO2';
fCLNO2(i)=fCLNO2(i)-1.0;
fACLJ(i)=fACLJ(i)+  1.0000;fANO3J(i)=fANO3J(i)+  1.0000;

% 885, <HET_CLN2_ACLJ>
i=i+1;
Rnames{ 885} = 'CLNO2 + ACLJ = CL2 + HONO ';
k(:,i) = (K_HETERO_CLN2_ACLJ ); 
Gstr{i,   1}='CLNO2';Gstr{i,   2}='ACLJ';
fCLNO2(i)=fCLNO2(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;fHONO(i)=fHONO(i)+  1.0000;

% 886, <HET_CLN2_ABRJ>
i=i+1;
Rnames{ 886} = 'CLNO2 + ABRJ = BRCL + HONO ';
k(:,i) = (K_HETERO_CLN2_ABRJ ); 
Gstr{i,   1}='CLNO2';Gstr{i,   2}='ABRJ';
fCLNO2(i)=fCLNO2(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fBRCL(i)=fBRCL(i)+  1.0000;fHONO(i)=fHONO(i)+  1.0000;

% 887, <HET_CLN3_WAI>
i=i+1;
Rnames{ 887} = 'CLNO3 = HOCL + HNO3 ';
k(:,i) = (K_HETERO_CLN3_WAI ); 
Gstr{i,   1}='CLNO3';
fCLNO3(i)=fCLNO3(i)-1.0;
fHOCL(i)=fHOCL(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 888, <HET_CLN3_WAJ>
i=i+1;
Rnames{ 888} = 'CLNO3 = HOCL + HNO3 ';
k(:,i) = (K_HETERO_CLN3_WAJ ); 
Gstr{i,   1}='CLNO3';
fCLNO3(i)=fCLNO3(i)-1.0;
fHOCL(i)=fHOCL(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 889, <HET_CLN3_ACLJ>
i=i+1;
Rnames{ 889} = 'CLNO3 + ACLJ = CL2 + ANO3J ';
k(:,i) = (K_HETERO_CLN3_ACLJ ); 
Gstr{i,   1}='CLNO3';Gstr{i,   2}='ACLJ';
fCLNO3(i)=fCLNO3(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fCL2(i)=fCL2(i)+  1.0000;fANO3J(i)=fANO3J(i)+  1.0000;

% 890, <HET_CLN3_ABRJ>
i=i+1;
Rnames{ 890} = 'CLNO3 + ABRJ = BRCL + ANO3J ';
k(:,i) = (K_HETERO_CLN3_ABRJ ); 
Gstr{i,   1}='CLNO3';Gstr{i,   2}='ABRJ';
fCLNO3(i)=fCLNO3(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fBRCL(i)=fBRCL(i)+  1.0000;fANO3J(i)=fANO3J(i)+  1.0000;

% 891, <HET_HOBR_ACLJ>
i=i+1;
Rnames{ 891} = 'HOBR + ACLJ = BRCL ';
k(:,i) = (K_HETERO_HOBR_ACLJ ); 
Gstr{i,   1}='HOBR';Gstr{i,   2}='ACLJ';
fHOBR(i)=fHOBR(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fBRCL(i)=fBRCL(i)+  1.0000;

% 892, <HET_HOBR_ABRJ>
i=i+1;
Rnames{ 892} = 'HOBR + ABRJ = BR2 ';
k(:,i) = (K_HETERO_HOBR_ABRJ ); 
Gstr{i,   1}='HOBR';Gstr{i,   2}='ABRJ';
fHOBR(i)=fHOBR(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fBR2(i)=fBR2(i)+  1.0000;

% 893, <HET_BRN2_ACLJ>
i=i+1;
Rnames{ 893} = 'BRNO2 + ACLJ = BRCL + HONO ';
k(:,i) = (K_HETERO_BRN2_ACLJ ); 
Gstr{i,   1}='BRNO2';Gstr{i,   2}='ACLJ';
fBRNO2(i)=fBRNO2(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fBRCL(i)=fBRCL(i)+  1.0000;fHONO(i)=fHONO(i)+  1.0000;

% 894, <HET_BRN2_ABRJ>
i=i+1;
Rnames{ 894} = 'BRNO2 + ABRJ = BR2 + HONO ';
k(:,i) = (K_HETERO_BRN2_ABRJ ); 
Gstr{i,   1}='BRNO2';Gstr{i,   2}='ABRJ';
fBRNO2(i)=fBRNO2(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fBR2(i)=fBR2(i)+  1.0000;fHONO(i)=fHONO(i)+  1.0000;

% 895, <HET_BRN3_WAI>
i=i+1;
Rnames{ 895} = 'BRNO3 = HOBR + HNO3 ';
k(:,i) = (K_HETERO_BRN3_WAI ); 
Gstr{i,   1}='BRNO3';
fBRNO3(i)=fBRNO3(i)-1.0;
fHOBR(i)=fHOBR(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 896, <HET_BRN3_WAJ>
i=i+1;
Rnames{ 896} = 'BRNO3 = HOBR + HNO3 ';
k(:,i) = (K_HETERO_BRN3_WAJ ); 
Gstr{i,   1}='BRNO3';
fBRNO3(i)=fBRNO3(i)-1.0;
fHOBR(i)=fHOBR(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 897, <HET_BRN3_ACLJ>
i=i+1;
Rnames{ 897} = 'BRNO3 + ACLJ = BRCL + HNO3 ';
k(:,i) = (K_HETERO_BRN3_ACLJ ); 
Gstr{i,   1}='BRNO3';Gstr{i,   2}='ACLJ';
fBRNO3(i)=fBRNO3(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fBRCL(i)=fBRCL(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 898, <HET_BRN3_ABRJ>
i=i+1;
Rnames{ 898} = 'BRNO3 + ABRJ = BR2 + HNO3 ';
k(:,i) = (K_HETERO_BRN3_ABRJ ); 
Gstr{i,   1}='BRNO3';Gstr{i,   2}='ABRJ';
fBRNO3(i)=fBRNO3(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fBR2(i)=fBR2(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 899, <HET_HBR_ABRJ>
i=i+1;
Rnames{ 899} = 'HBR = ABRJ ';
k(:,i) = (K_HETERO_HBR_ABRJ ); 
Gstr{i,   1}='HBR';
fHBR(i)=fHBR(i)-1.0;
fABRJ(i)=fABRJ(i)+  1.0000;

% 900, <HET_HOI_ACLJ>
i=i+1;
Rnames{ 900} = 'HOI + ACLJ = ICL ';
k(:,i) = (K_HETERO_HOI_ACLJ ); 
Gstr{i,   1}='HOI';Gstr{i,   2}='ACLJ';
fHOI(i)=fHOI(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fICL(i)=fICL(i)+  1.0000;

% 901, <HET_HOI_ABRJ>
i=i+1;
Rnames{ 901} = 'HOI + ABRJ = IBR ';
k(:,i) = (K_HETERO_HOI_ABRJ ); 
Gstr{i,   1}='HOI';Gstr{i,   2}='ABRJ';
fHOI(i)=fHOI(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fIBR(i)=fIBR(i)+  1.0000;

% 902, <HET_INO2_ACLJ>
i=i+1;
Rnames{ 902} = 'INO2 + ACLJ = ICL + HONO ';
k(:,i) = (K_HETERO_INO2_ACLJ ); 
Gstr{i,   1}='INO2';Gstr{i,   2}='ACLJ';
fINO2(i)=fINO2(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fICL(i)=fICL(i)+  1.0000;fHONO(i)=fHONO(i)+  1.0000;

% 903, <HET_INO2_ABRJ>
i=i+1;
Rnames{ 903} = 'INO2 + ABRJ = IBR + HONO ';
k(:,i) = (K_HETERO_INO2_ABRJ ); 
Gstr{i,   1}='INO2';Gstr{i,   2}='ABRJ';
fINO2(i)=fINO2(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fIBR(i)=fIBR(i)+  1.0000;fHONO(i)=fHONO(i)+  1.0000;

% 904, <HET_INO3_ACLJ>
i=i+1;
Rnames{ 904} = 'INO3 + ACLJ = ICL + HNO3 ';
k(:,i) = (K_HETERO_INO3_ACLJ ); 
Gstr{i,   1}='INO3';Gstr{i,   2}='ACLJ';
fINO3(i)=fINO3(i)-1.0;fACLJ(i)=fACLJ(i)-1.0;
fICL(i)=fICL(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 905, <HET_INO3_ABRJ>
i=i+1;
Rnames{ 905} = 'INO3 + ABRJ = IBR + HNO3 ';
k(:,i) = (K_HETERO_INO3_ABRJ ); 
Gstr{i,   1}='INO3';Gstr{i,   2}='ABRJ';
fINO3(i)=fINO3(i)-1.0;fABRJ(i)=fABRJ(i)-1.0;
fIBR(i)=fIBR(i)+  1.0000;fHNO3(i)=fHNO3(i)+  1.0000;

% 906, <HET_I2O2_AI>
i=i+1;
Rnames{ 906} = 'I2O2 =';
k(:,i) = (K_HETERO_I2O2_AI ); 
Gstr{i,   1}='I2O2';
fI2O2(i)=fI2O2(i)-1.0;


% 907, <HET_I2O2_AJ>
i=i+1;
Rnames{ 907} = 'I2O2 =';
k(:,i) = (K_HETERO_I2O2_AJ ); 
Gstr{i,   1}='I2O2';
fI2O2(i)=fI2O2(i)-1.0;


% 908, <HET_I2O3_AI>
i=i+1;
Rnames{ 908} = 'I2O3 =';
k(:,i) = (K_HETERO_I2O3_AI ); 
Gstr{i,   1}='I2O3';
fI2O3(i)=fI2O3(i)-1.0;


% 909, <HET_I2O3_AJ>
i=i+1;
Rnames{ 909} = 'I2O3 =';
k(:,i) = (K_HETERO_I2O3_AJ ); 
Gstr{i,   1}='I2O3';
fI2O3(i)=fI2O3(i)-1.0;


% 910, <HET_I2O4_AI>
i=i+1;
Rnames{ 910} = 'I2O4 =';
k(:,i) = (K_HETERO_I2O4_AI ); 
Gstr{i,   1}='I2O4';
fI2O4(i)=fI2O4(i)-1.0;


% 911, <HET_I2O4_AJ>
i=i+1;
Rnames{ 911} = 'I2O4 =';
k(:,i) = (K_HETERO_I2O4_AJ ); 
Gstr{i,   1}='I2O4';
fI2O4(i)=fI2O4(i)-1.0;


% 912, <HET_SO2_H2O2>
i=i+1;
Rnames{ 912} = 'SO2 + H2O2 = ASO4J ';
k(:,i) = (K_HETERO_SO2H ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='H2O2';
fSO2(i)=fSO2(i)-1.0;fH2O2(i)=fH2O2(i)-1.0;
fASO4J(i)=fASO4J(i)+  1.0000;

% 913, <HET_SO2_O3>
i=i+1;
Rnames{ 913} = 'SO2 + O3 = ASO4J ';
k(:,i) = (K_HETERO_SO2O ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='O3';
fSO2(i)=fSO2(i)-1.0;fO3(i)=fO3(i)-1.0;
fASO4J(i)=fASO4J(i)+  1.0000;

% 914, <HET_SO2_MEPX>
i=i+1;
Rnames{ 914} = 'SO2 + OP1 = ASO4J + MOH ';
k(:,i) = (K_HETERO_SO2M ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='OP1';
fSO2(i)=fSO2(i)-1.0;fOP1(i)=fOP1(i)-1.0;
fASO4J(i)=fASO4J(i)+  1.0000;fMOH(i)=fMOH(i)+  1.0000;

% 915, <HET_SO2_PACD>
i=i+1;
Rnames{ 915} = 'SO2 + PAA = ASO4J + ORA2 ';
k(:,i) = (K_HETERO_SO2P ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='PAA';
fSO2(i)=fSO2(i)-1.0;fPAA(i)=fPAA(i)-1.0;
fASO4J(i)=fASO4J(i)+  1.0000;fORA2(i)=fORA2(i)+  1.0000;

% 916, <HET_SO2_NO2>
i=i+1;
Rnames{ 916} = 'SO2 + NO2 = ASO4J + HONO ';
k(:,i) = (K_HETERO_SO2N ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='NO2';
fSO2(i)=fSO2(i)-1.0;fNO2(i)=fNO2(i)-1.0;
fASO4J(i)=fASO4J(i)+  1.0000;fHONO(i)=fHONO(i)+  1.0000;

% 917, <HET_SO2_TMI>
i=i+1;
Rnames{ 917} = 'SO2 + AFEJ + AMNJ = ASO4J + AFEJ + AMNJ ';
k(:,i) = (K_HETERO_SO2T ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='AFEJ';Gstr{i,   3}='AMNJ';
fSO2(i)=fSO2(i)-1.0;fAFEJ(i)=fAFEJ(i)-1.0;fAMNJ(i)=fAMNJ(i)-1.0;
fASO4J(i)=fASO4J(i)+  1.0000;fAFEJ(i)=fAFEJ(i)+  1.0000;fAMNJ(i)=fAMNJ(i)+  1.0000;

% 918, <HET_SO2_HCHO>
i=i+1;
Rnames{ 918} = 'SO2 + HCHO = AHMSJ ';
k(:,i) = (K_HETERO_HMSP ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='HCHO';
fSO2(i)=fSO2(i)-1.0;fHCHO(i)=fHCHO(i)-1.0;
fAHMSJ(i)=fAHMSJ(i)+  1.0000;

% 919, <HET_SO2_HNO4>
i=i+1;
Rnames{ 919} = 'SO2 + HNO4 = ASO4J + ANO3J ';
k(:,i) = (K_HETERO_HMSP ); 
Gstr{i,   1}='SO2';Gstr{i,   2}='HNO4';
fSO2(i)=fSO2(i)-1.0;fHNO4(i)=fHNO4(i)-1.0;
fASO4J(i)=fASO4J(i)+  1.0000;fANO3J(i)=fANO3J(i)+  1.0000;

% 920, <HET_HMS_L1>
i=i+1;
Rnames{ 920} = 'AHMSJ + HO = HO2 + SO2 + ORA1 ';
k(:,i) = (K_HETERO_HMSP ); 
Gstr{i,   1}='AHMSJ';Gstr{i,   2}='HO';
fAHMSJ(i)=fAHMSJ(i)-1.0;fHO(i)=fHO(i)-1.0;
fHO2(i)=fHO2(i)+  1.0000;fSO2(i)=fSO2(i)+  1.0000;fORA1(i)=fORA1(i)+  1.0000;

% 921, <HET_HMS_L2>
i=i+1;
Rnames{ 921} = 'AHMSJ = SO2 + HCHO ';
k(:,i) = (K_HETERO_HMSP ); 
Gstr{i,   1}='AHMSJ';
fAHMSJ(i)=fAHMSJ(i)-1.0;
fSO2(i)=fSO2(i)+  1.0000;fHCHO(i)=fHCHO(i)+  1.0000;

