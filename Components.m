%% Components Fraction Calculation
% Integrating each of the componenets from the deconvoluted DTG gives us
% the total conversion fraction of the component then we convert it to
% fraction of total weight.
%% Temporary Variables
% Heating rate, HR
HR = [10;15;20;10;15;20;10;15;20;10;15;20;10;10];
comp = cell(14,4);
for i = 1:14
    comp(i,1) = MixModel.a.coeff(i);
    comp(i,2) = MixModel.am.coeff(i);
    comp(i,3) = MixModel.b.coeff(i);
    comp(i,4) = MixModel.bm.coeff(i);
    comp(i,5) = MixModel.c.coeff(i);
    comp(i,6) = MixModel.cm.coeff(i);
    comp(i,7) = {Smod(i).res};
    comp(i,8) = {HR(i)};
    comp(i,9) = {(SampleCell{i,1}.T(end) - SampleCell{i,1}.T(5))};
end
%% Component fraction and Parameters
%
% *(a) Symmetric Gaussian Fits* : $f = a e^{ (x-b) / c^2}$
%
% *(b) Skew Gaussian(Error skewness) Fits* : $f = a e^{ (x-b) / c^2}$
%
% *(c) Weibull Distribution Fits* : $f = a (b/c) (x/c)^{b-1} e^{(x/c)^{b}}$
%
% |Compo.a| Stores in a = fraction of HC, C, L, moisture, res and Total
% |Compo.a| Stores in ap  = Max DTG, Mean Temperature and Standard deviation.
[Compo.a, Compo.ap]= cellfun(@percentage1,comp(:,1),comp(:,2),comp(:,7),comp(:,8),comp(:,9),'UniformOutput',false);
[Compo.b, Compo.bp]= cellfun(@percentage2,comp(:,3),comp(:,4),comp(:,7),comp(:,8),comp(:,9),'UniformOutput',false);
[Compo.c, Compo.cp]= cellfun(@percentage3,comp(:,5),comp(:,6),comp(:,7),comp(:,8),comp(:,9),'UniformOutput',false);
%% Clearing Temporary Variables
clear comp HR i