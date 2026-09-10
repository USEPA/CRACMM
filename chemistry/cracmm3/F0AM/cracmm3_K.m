function K = CRACMM3_K(Met,Jmethod)
% Calculate heteorogeneous and other rate constants for use with the cracmm3 chemical mechanism.
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

nk =  28; %number of rate constants
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
Knames{i}   = 'K_HETERO_CLN3_WAI';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN3_WAJ';
krx(:,i)    =  1.0E-60;


i = i + 1;
Knames{i}   = 'K_HETERO_CLN3_ACLJ';
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
