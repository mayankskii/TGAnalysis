%% Kinetic and Thrmodynamic Analysis
% Data initialisation for Type A and B1
SamHR = cell(4,3);
for i=1:4
        SamHR(i,:) = { Kmod(:,:,3*i-2), Kmod(:,:,3*i-1),Kmod(:,:,3*i) };
end
%% Note
% This is the main file for all analysis. It calls functions named below
% after @_____ for exmple @Friedman calls the script friendman and the
% input data is {SamHR(i,1),SamHR(i,2),SamHR(i,3)} and the output data is
% stored inside |Kinetic| Struct in variable k1. Similarly for others. See
% the respective function for knowing more about it.
%% Activation Energy and Pre Exponential factor calculation
for i= 1:4
 % Type A: Rate isoconversional methods
     [Kinetic.k1(i,1)] = cellfun(@Friedman,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
 % Type B1: p(y) approximation isoconversional methods
     [Kinetic.k2(i,1)] = cellfun(@KAS,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
     [Kinetic.k3(i,1)] = cellfun(@SenumYang,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
     [Kinetic.k4(i,1)] = cellfun(@CoatsRedfern,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
     [Kinetic.k5(i,1)] = cellfun(@FWO,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
     [Kinetic.k6(i,1)] = cellfun(@LinearApprox1,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
     [Kinetic.k7(i,1)] = cellfun(@LinearApprox2,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
 % Type B2: p(y) iterative isoconversional method
     [Kinetic.k8(i,1)] = cellfun(@Iterative,SamHR(i,1),SamHR(i,2),SamHR(i,3),{[0.9;1.1]},{1},'UniformOutput',false);
     [Kinetic.k9(i,1)] = cellfun(@Iterative,SamHR(i,1),SamHR(i,2),SamHR(i,3),{[0.9;1.1]},{1.8},'UniformOutput',false);
     [Kinetic.k10(i,1)] = cellfun(@Iterative,SamHR(i,1),SamHR(i,2),SamHR(i,3),{[0.9;1.1]},{0.6},'UniformOutput',false);
 % Type C: Other Methods
     [Kinetic.k11(i,1)] = cellfun(@Vyazkovin,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
     [Kinetic.k12(i,1)] = cellfun(@DirectArrhenious,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);warning('Limited data selected')
     [Kinetic.k13(i,1)] = cellfun(@PatternSearch,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
 % Type D: Peak Methods
     [Kinetic.k14(i,1)] = cellfun(@Kissinger,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
%% Order of Reaction Analysis
     [Kinetic.k15(i,1)] = cellfun(@FreeCarrol,SamHR(i,1),SamHR(i,2),SamHR(i,3),Kinetic.k2(i,1),'UniformOutput',false);
     [Kinetic.k16(i,1)] = cellfun(@Criado,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);
%% Activation Energy Distribution Analysis
 % Integral Method
     [Kinetic.k17(i,1)] = cellfun(@MiuraMaki,SamHR(i,1),SamHR(i,2),SamHR(i,3),'UniformOutput',false);   
%% Thermodynamic Paramters
     [Kinetic.t1(i,1)] = cellfun(@Thermodynamics,SamHR(i,1),SamHR(i,2),SamHR(i,3),Kinetic.k2(i,1),'UniformOutput',false);
end
%% DTA & DSC Analysis
for i =1:14
      Kinetic.d1(i,1) = cellfun(@DtaDsc,SampleCell(i,1),{i},'UniformOutput',false);
end
%% Kinetic Error Analysis
      Kinetic.e1 = KineticError(14);
%% Clearing Temporary Variables   
clear SamHR i