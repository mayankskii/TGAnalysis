%% Multilinear Regression
%% Multilinear Training Models 
% Main Equation form y = f(x,b);
% Splitting dataset in Training(350) and Test(15) samplings
Y = HHV{1}(1:365,4);
FC = HHV{1}(1:365,1);
VM = HHV{1}(1:365,2);
ASH = HHV{1}(1:365,3);
X = cell(9,1);
X(1,1) = {[ones(size(FC)) FC VM ASH]};
X(2,1) = {[ones(size(FC)) FC./VM VM./ASH ASH./FC]};
X(3,1) = {[ones(size(FC)) VM./FC ASH./VM FC./ASH]};
X(4,1) = {[ones(size(FC)) FC./ASH VM./FC]};
X(5,1) = {[ones(size(FC)) VM./FC (VM./FC).^2 ASH./VM (ASH./VM).^2 FC./ASH]};
X(6,1) = {[ones(size(FC)) VM./FC (VM./FC).^2 ASH./VM (ASH./VM).^2 (ASH./VM).^3 FC./ASH]};
X(7,1) = {[ones(size(FC)) VM./FC (VM./FC).^2 ASH./VM (ASH./VM).^2 (ASH./VM).^3 (ASH./VM).^4 FC./ASH]};
X(8,1) = {[ones(size(FC)) FC FC./VM VM ASH]};
X(9,1) = {[ones(size(FC)) FC FC.^2 FC.*VM VM VM.^2 ASH]};
for i = 1:9
% eqn stores intercept + components
% stat stores R2 Fstat p-value esttimated error variance
[Heat.eqn(i,1),~,~,~,Heat.stat(i,1)] = cellfun(@regress,{Y(1:350,1)},{X{i,1}(1:350,:)},'UniformOutput',false);
end
%% Multilinear Test Error
for i = 1:9
    Y2 = Y(351:365,1);
    X2 = X{i,1}(351:365,:)*Heat.eqn{i};
    Heat.Tstat(i,:) = [corr2(Y2,X2), std2(Y2 - X2)];%Correlation and Standard deviation
end
clear FC VM ASH X Y X2 Y2 i