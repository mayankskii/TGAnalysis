%% *Data Initialisation*
load TGdata
% It is the first step delivering organised datasets and easily accesible data.
% The Temperature and DTG are mapped to $[0,1]$ for better scalability.
%% Main Dataset
% Compiling new Material to |Sample Master| Struct(Original Data). Samples are in order and |pine10| means Pine Needles at heating rate 10 K/min.
clear SM S
% Pine Needles
SampleMaster.pine10 = pine10;
SampleMaster.pine15 = pine15;
SampleMaster.pine20 = pine20;
% Corn Cob
SampleMaster.cob10 = cob10;
SampleMaster.cob15 = cob15;
SampleMaster.cob20 = cob20;
% Perl Millet
SampleMaster.perl10 = perl10;
SampleMaster.perl15 = perl15;
SampleMaster.perl20 = perl20;
% Eucalyptus Wood
SampleMaster.woo10 = woo10;
SampleMaster.woo15 = woo15;
SampleMaster.woo20 = woo20;
% Millet
SampleMaster.mill10 = mill10;
% SweetCane
SampleMaster.swt10 = swt10;
% No. of Samples
n = 14;
SampleCell = struct2cell(SampleMaster);
%% Component Analysis Modification
% |Smod| Struct contains modification in |S| for Component Anaysis.
% Nomenclature
% Smod.a = Conversion factor alpha
% Smod.da = differential of conversion factor alpha or DTG
% Smod.T = Temperature
% Smod.Tn = Temperature mapped to (0,1)
% Cmod.da = DTG seperated from moisture
% Cmod.dam = DTG moisture
% Cmod.fda = filter on DTG curve
%
% * Extent of conversion, $a = m - m_{i}/ m_{f} - m_{i}$
% * Differential extent of conversion, $da = da/dt (min-1)$
% * Temperature, $T (K)$
% * Normalised Temperature, $Tn = T - T_{i} / T_{f} - T_{i}$
% * Residue Percentage, $res = m_{f} / m_{i}$
% * Multiplicative factor, $mul = T_{f} / T_{i}$
% * Additive factor, $add = T_{i}$
%
Smod = struct;
for i=1:n
    Smod(i).a = (SampleCell{i,1}.W(5:end) - SampleCell{i,1}.W(5))/(SampleCell{i,1}.W(end) - SampleCell{i,1}.W(5));
    Smod(i).da = diff(Smod(i).a)./diff(SampleCell{i,1}.t(5:end));
    Smod(i).T = SampleCell{i,1}.T(6:end);
    Smod(i).Tn = (SampleCell{i,1}.T(6:end) - SampleCell{i,1}.T(5))/(SampleCell{i,1}.T(end) - SampleCell{i,1}.T(5));
    Smod(i).res = SampleCell{i,1}.W(end)/SampleCell{i,1}.W(5);
    % Smod.mul and Smod.add are used only for Reversing Normalisation
    Smod(i).mul = (SampleCell{i,1}.T(end) - SampleCell{i,1}.T(5));%Multiply
    Smod(i).add = SampleCell{i,1}.T(5);%add
end
%%% Moisture Seperation from DTG
% |Cmod| Struct contains modification in |Smod| for moisture removal. Assuming all moisture is vapourised by temperature 425 K
Cmod = struct;
for i=1:n
    temp = find(Smod(i).T>425,1);
    Cmod(i).da = Smod(i).da(temp:end);
    Cmod(i).dam = Smod(i).da(1:temp);
    Cmod(i).fda = smoothdata(Cmod(i).da,'sgolay',675);%Applying Sgolay filter with strength 675
    Cmod(i).fdam = smoothdata(Cmod(i).dam,'sgolay',675);
    Cmod(i).Tn = Smod(i).Tn(temp:end);
    Cmod(i).Tnm = Smod(i).Tn(1:temp);
end
%% Kinetic and Thermodynamic Analysis Modification
% |Kmod| Struct contains modification in |Smod| for Kinetic & Thermal analysis
Kmod = struct;
for i=1:n
    Kmod(i).a = Smod(i).a;
    Kmod(i).da = Smod(i).da;
    Kmod(i).T = Smod(i).T;
end
Kmod = struct2cell(Kmod);
%% Higher Heating Value Analysis Modification
% |HHV| Cell contains compilation of below Higher Heating Value data.
%
% * *HHV1*: Proximate Analysis, _FC VM ASH_ Classification and associated HHV
% * *HHV2*: Component Analysis, _HC C L_ Classification and associated HHV
% * *HHV3*: Sample Seggregation based on source such as Fruits, Agri waste, Wood, Fibers, Other and Charcoal
HHV = cell(3,1);
    HHV(1,1) = {HHV1};
    HHV(2,1) = {HHV2};
    HHV(3,1) = {HHV3};
%% Create or check Plots folder
[~, msg] = mkdir('Plots');
disp(msg)
%% Clearing Temporary Variables
clear i temp Cmod2 n status msg
%% Note
% The scaling of the modelling program requires certain editing in each script.