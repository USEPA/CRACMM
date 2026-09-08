function J = CRACMM3M_J(Met,Jmethod)
% Calculates photolysis frequencies for the cracmm3m mechanism in the CMAQ model
% Met: structure containing required meteorological constraints. Required vars depend on Jmethod.
%       Met.SZA: solar zenith angle in degrees
%       Met.ALT: altitude, meters
%       Met.O3col: overhead ozone column, DU
%       Met.albedo: surface reflectance, 0-1 (unitless)
%       Met.T: temperature, T
%       Met.P: pressure, mbar
%       Met.LFlux: name of a text file containing an actinic flux spectrum
%
% Jmethod: numeric flag or string specifying how to calculate J-values. Default is 'MCM'.
%       0 or 'MCM':      use MCMv3.3.1 parameterization.
%                         Some reactions are not included in MCM. For these, 'HYBRID' values are used.
%                         Required Met fields: SZA
%       1 or 'BOTTOMUP': bottom-up integration of cross sections/quantum yields.
%                         See J_BottomUp.m for more info.
%                         Required Met fields: LFlux, T, P
%       2 or 'HYBRID':   Interpolation of hybrid J-values from TUV solar spectra.
%                         See J_TUVhybrid.m for more info.
%                         Required Met fields: SZA, ALT, O3col, albedo
%
% OUTPUTS:
% J: structure of J-values.
%
% INPUTS
struct2var(Met)

if nargin<2
    Jmethod = 'MCM';
elseif ischar(Jmethod)
    Jmethod = upper(Jmethod);
end

% J-Values
switch Jmethod
    case {0,'MCM'}
        error(['MCM option not functional for cracmm3m mechanism.'])

    case {1,'BOTTOMUP'}
        Jmcm = J_BottomUp(LFlux,T,P);

    case {2,'HYBRID'}
        Jmcm = J_Hybrid(SZA,ALT,O3col,albedo);

    otherwise
        fprintf('Jmethod = %f\n',Jmethod);
        error(['MCMv331_J: invalid Jmethod option selected'])

end
%rename
J=struct;
J.JO3O3P_NASA06 = Jmcm.J2;
J.JO3O1D_NASA06 = Jmcm.J1;
J.JH2O2_RACM2 = Jmcm.J3;
J.JNO2_RACM2 = Jmcm.J4;
J.JNO3NO_RACM2 = Jmcm.J5;
J.JNO3NO2_RACM2 = Jmcm.J6;
J.JHONO_RACM2 = Jmcm.J7;
J.JHNO3_RACM2 = Jmcm.J8;
J.JHNO4_RACM2 = Jmcm.J4;
J.JHCHO_MOL_JPL19 = Jmcm.J12;
J.JHCHO_RAD_JPL19 = Jmcm.J11;
J.JCH3CHO_RACM2 = Jmcm.J13;
J.JALD_JPL19 = Jmcm.J14;
J.JCH3COCH3A_JPL19 = Jmcm.J21;
J.JCH3COCH3B_JPL19 = Jmcm.J21;
J.JMEK_JGR19 = Jmcm.J22;
J.JMACR_RACM2 = Jmcm.J18 + Jmcm.J19;
J.JMVK_JPL19 = Jmcm.J23 + Jmcm.J24;
J.JGLYH2_JPL19 = Jmcm.J31;
J.JGLYF_JPL19 = Jmcm.J32;
J.JGLYHX_JPL19 = Jmcm.J33;
J.JMGLY_RACM2 = Jmcm.J34;
J.JBALD1_CALVERT11 = Jmcm.J18;
J.JBALD2_CALVERT11 = Jmcm.J19;
J.JOP1_RACM2 = Jmcm.J41;
J.JONIT_CALVERT08 = Jmcm.J54;
J.JACRO_09 = Jmcm.J18 + Jmcm.J19;

% no direct MCM analogues
J.JUALD_RACM2    = Jmcm.Jn1;  %crotonaldehyde
J.JKET_JGR19     = Jmcm.Jn3;  %ketones (based on diethyl ketone)
J.JHKET_RACM2    = Jmcm.Jn3;  %hydroxy ketone (RACM assumes same as KET)
J.JPAA_RACM2     = Jmcm.Jn4;  %peroxyacetic acid
J.JPAN1_JPL19    = Jmcm.Jn14; %PAN=ACO3+NO2
J.JPAN2_JPL19    = Jmcm.Jn15; %PAN=MO2+NO3+CO2
J.JPPN1_JPL19    = Jmcm.Jn14; %use same as PAN
J.JPPN2_JPL19    = Jmcm.Jn15; %use same as PAN
J.JTRPN_WANG2023 = Jmcm.J54;  %use same as ONIT

% halogen species photolysis - mostly follow GEOSCHEM_J
% chlorine
J.JCL2_JPL19     = Jmcm.Jn32;
J.JCLO_JPL19     = Jmcm.Jn33;
J.JOCLO_JPL19    = Jmcm.Jn37;
J.JCL2O2_JPL19   = Jmcm.Jn38;
J.JHOCL_JPL19    = Jmcm.Jn36;
J.JCLNO_JPL19    = Jmcm.Jn53; %from SAPRC07 CLNO_06
J.JCLNO2_JPL19   = Jmcm.Jn23;
J.JCLNO3_R_JPL19 = Jmcm.Jn34; %GC ClNO3_Cl
J.JCLNO3_M_JPL19 = Jmcm.Jn35; %GC ClNO3_ClO
%J.JHCOCL_JPL19 = Jmcm.J_HCOCL_JPL19;
% bromine
J.JBR2_JPL19     = Jmcm.Jn24;
J.JBRO_JPL19     = Jmcm.Jn25;
%J.JOBRO_JPL19 = Jmcm.J_OBRO_JPL19;
J.JHOBR_JPL19    = Jmcm.Jn26;
%J.JBRNO_JPL19 = Jmcm.J_BRNO_JPL19;
J.JBRNO2_JPL19   = Jmcm.Jn27;
J.JBRNO3_R_JPL19 = Jmcm.Jn28; %GC JBrNO3_Br
J.JBRNO3_M_JPL19 = Jmcm.Jn29; %GC JBrNO3_BrO
%J.JCH2BR2_JPL19 = Jmcm.J_CH2BR2_JPL19;
J.JCHBR3_JPL19   = Jmcm.Jn30;
%J.JHCOBR_JPL19 = Jmcm.J_HCOBR_JPL19;
% iodine
J.JI2_JPL19      = Jmcm.Jn40;
J.JIO_JPL19      = Jmcm.Jn42;
J.JOIO_JPL19     = Jmcm.Jn43;
J.JINO3_06       = Jmcm.Jn47; %GC JI2O2; JINO3_06 is used for several cracmm3m iodine species hv rates
J.JHOI_JPL19     = Jmcm.Jn41;
%J.JHI_JPL19 = Jmcm.J_HI_JPL19;
J.JINO_JPL19     = Jmcm.Jn44;
J.JINO2_JPL19    = Jmcm.Jn45; % GC JIONO
%J.JCH3I_JPL19 = Jmcm.J_CH3I_JPL19;
%J.JCH2I2_JPL19 = Jmcm.J_CH2I2_JPL19;
% mixed
J.JBRCL_JPL19    = Jmcm.Jn31;
J.JICL_JPL19     = Jmcm.Jn50;
J.JIBR_JPL19     = Jmcm.Jn51;
%J.JCH2IBR_JPL19 = Jmcm.J_CH2IBR_JPL19;
%J.JCH2ICL_JPL19 = Jmcm.J_CH2ICL_JPL19;
%J.JCHBR2CL_JPL19 = Jmcm.J_CHBR2CL_JPL19;
%J.JCHBRCL2_JPL19 = Jmcm.J_CHBRCL2_JPL19;
