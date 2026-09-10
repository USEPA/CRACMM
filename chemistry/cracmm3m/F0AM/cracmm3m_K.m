function K = CRACMM3M_K(Met,Jmethod)
% Calculate heteorogeneous and other rate constants for use with the cracmm3m chemical mechanism.
% Met: structure containing required meteorological constraints. Required vars depend on Jmethod.
%       Met.T: temperature, T
%       Met.P: pressure, mbar
%
%
% OUTPUTS:
% K: structure of rate constants. Each is size length(T) x # of rate constants
%
% INPUTS
struct2var(Met)

nk =  56; %number of rate constants
krx = nan(length(T),nk);
krx = 1.0E-60;
Knames = cell(nk,1);
i=0;


i = i + 1;
Knames{i}   = 'K_HETERO_GLY';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_MGLY';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_NO2';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HO2';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_NO3';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_IEPOX';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_ISO3NOSJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_ISO3OSJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_ANO3';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_N2O5IJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_N2O5K';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_H2NO3PAIJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_H2NO3PAK';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_H2NO3PBIJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_H2NO3PBK';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HOCL_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HOCL_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN2_WAI';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN2_WAJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN2_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN2_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN3_WAI';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN3_WAJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN3_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN3_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HOBR_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HOBR_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_BRN2_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_BRN2_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_BRN3_WAI';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_BRN3_WAJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_BRN3_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_BRN3_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HBR_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HOI_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HOI_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_INO2_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_INO2_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_INO3_ACLJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_INO3_ABRJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_I2O2_AI';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_I2O2_AJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_I2O3_AI';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_I2O3_AJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_I2O4_AI';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_I2O4_AJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_SO2H';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_SO2O';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_SO2M';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_SO2P';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_SO2N';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_SO2T';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HMSP';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HNO4';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HMSL1';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_HMSL2';
krx(:,i)    =  1.0E-60;

%% accumulate
K = struct;
for i=1:length(Knames)
    K.(Knames{i}) = krx(:,i);
end
