function [TotalError] = filterchange(Smod,n)
%% Declaring master structure
Cmod = struct;
for i=1:14
    temp = find(Smod(i).T>425,1);
    Cmod(i).fda = smoothdata(Smod(i).da(temp:end),'sgolay',n);
    Cmod(i).fdam = smoothdata(Smod(i).da(1:temp),'sgolay',n);
    Cmod(i).Tn = Smod(i).Tn(temp:end);
    Cmod(i).Tnm = Smod(i).Tn(1:temp);
end
%% Seperating Moisture
Cmod2 = struct2cell(Cmod);
adtg(:,1) = Cmod2(1,1,:);
adtg(:,2) = Cmod2(3,1,:);
amois(:,1) = Cmod2(2,1,:);
amois(:,2) = Cmod2(4,1,:);
%% Fitting and Parameters
[~, F.a.gof, F.a.coeff] = cellfun(@gmm3,adtg(:,1),adtg(:,2),'UniformOutput',false);
[~, F.am.gof, F.am.coeff] = cellfun(@gmm1,amois(:,1),amois(:,2),'UniformOutput',false);
%% Calculating Total error, Bias and Variance
TotalError = zeros(14,1);
for j = 1:14
    f = zeros(length(adtg{j,2}),1);
    for i = 1:3
        a = F.a.coeff{j}(1,i);
        b = F.a.coeff{j}(2,i);
        c = F.a.coeff{j}(3,i); 
        fun1 = @(x) a.*exp(-((x-b)./c).^2);
        f = f+fun1(adtg{j,2});
    end
        am = F.am.coeff{j}(1);
        bm = F.am.coeff{j}(2);
        cm = F.am.coeff{j}(3);
        funm = @(x) am.*exp(-((x-bm)./cm).^2);
        fun2 = funm(amois{j,2});
    DTG = [amois{j,1}; adtg{j,1}];
    funt = [fun2; f];
    Bias = norm(funt-DTG);
    Variance = var(funt);
    TotalError(j,1) = Bias.^2 + Variance;
end
end