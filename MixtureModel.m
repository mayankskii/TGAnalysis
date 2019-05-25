%% Mixture Model Deconvolution
% Assuming, $DTG_{sample} = f_{HC} + f_{C} + f_{L} + f_{M} + residue$
% Here each f represents an assumed distribution like gaussian, weibull
% etc. The deconvolution is done using supervised mixture algorithmn. This
% model can be extended to more than 3 components as shown in results.
%% Temporary Variable changes
Cmod2 = struct2cell(Cmod);
adtg(:,1) = Cmod2(3,1,:);
adtg(:,2) = Cmod2(5,1,:);
amois(:,1) = Cmod2(4,1,:);
amois(:,2) = Cmod2(6,1,:);
%% Applying Mixture Model
% |MixModel| stores the parameters for the applied mixture models
% |gof| = goodness of fits & |coeff| = coefficients
%
% *(a) Symmetric Gaussian Fits* : $f = a e^{ (x-b) / c^2}$.
% 
% Parameters column elements are ampitude (_a_), mean (_b_) & standard deviation (_c_) in particular order
%
% *(b) Skew Gaussian(Error skewness) Fits* : $f = a e^{ (x-b) / c^2}$
%
% Parameters column elements are ampitude (_a_), mean (_b_), standard deviation (_c_) & skewness (d) in order
%
% *(c) Weibull Distribution Fits* : $f = a (b/c) (x/c)^{b-1} e^{(x/c)^{b}}$
%
% Parameters column elements are ampitude (_a_), shape (_b_) & scale (_c_) in order
%
[~, MixModel.a.gof(:,1), MixModel.a.coeff(:,1)]   = cellfun(@gmm3,adtg(:,1),adtg(:,2),Optns(:,1),'UniformOutput',false);
[~, MixModel.am.gof(:,1), MixModel.am.coeff(:,1)] = cellfun(@gmm1,amois(:,1),amois(:,2),'UniformOutput',false);
[~, MixModel.b.gof(:,1), MixModel.b.coeff(:,1)]   = cellfun(@gmm3a,adtg(:,1),adtg(:,2),Optns(:,2),'UniformOutput',false);
[~, MixModel.bm.gof(:,1), MixModel.bm.coeff(:,1)] = cellfun(@gmm1a,amois(:,1),amois(:,2),'UniformOutput',false);
[~, MixModel.c.gof(:,1), MixModel.c.coeff(:,1)]   = cellfun(@weib3,adtg(:,1),adtg(:,2),Optns(:,3),'UniformOutput',false);
[~, MixModel.cm.gof(:,1), MixModel.cm.coeff(:,1)] = cellfun(@weib1,amois(:,1),amois(:,2),'UniformOutput',false);
%% Pre HC and Lignin 2nd Stage Decompositions
% There are some significant decompositions seen in DTG curves which are
% analysed below by the same method as above but only using single gaussian
% curve fitting.

% Assuming Pre Hemicellulos(HC) decomposition happens in Temperature range
% (400, 425) only

% Assuming Lignin 2nd Stage decomposition happens in Temperature range
% (800, 925) only

% The above is an observation from the DTG curves not an absolute fact. 
n=14;
Cmod3 = struct;
k = cell(14,2);
for i=1:n
    temp = find(Smod(i).T>400,1);
    temp2 = find(Smod(i).T>425,1);
    temp3 = find(Smod(i).T>800,1);
    temp4 = find(Smod(i).T>950,1);
    Cmod3(i).da1 = Smod(i).da(temp:temp2);
    Cmod3(i).da2 = Smod(i).da(temp3:temp4);
    Cmod3(i).fda1 = smoothdata(Cmod3(i).da1,'sgolay',675);
    Cmod3(i).fda2 = smoothdata(Cmod3(i).da2,'sgolay',675);
    Cmod3(i).T1 = Smod(i).T(temp:temp2);
    Cmod3(i).T2 = Smod(i).T(temp3:temp4);
    k(i,1) = {1};
    k(i,2) = {2};
end
Cmod4 = struct2cell(Cmod3);
pre(:,1) = Cmod4(3,1,:);
pre(:,2) = Cmod4(5,1,:);
L2(:,1) = Cmod4(4,1,:);
L2(:,2) = Cmod4(6,1,:);

% *(a) Pre HC: Symmetric Gaussian Fit* : $f = a e^{ (x-b) / c^2}$.
% 
% Parameters column elements are ampitude (_a_), mean (_b_) & standard deviation (_c_) in particular order
%
% *(b) Lignin 2: Skew Gaussian Fit* : $f = a e^{ (x-b) / c^2}$
%
% Parameters column elements are ampitude (_a_), mean (_b_), standard deviation (_c_) & skewness (d) in order
[~, MixModel.p.gof(:,1), MixModel.p.coeff(:,1)]   = cellfun(@gauss1,pre(:,2),pre(:,1),k(:,1),'UniformOutput',false);
[~, MixModel.L2.gof(:,1), MixModel.L2.coeff(:,1)]   = cellfun(@gauss1,L2(:,2),L2(:,1),k(:,2),'UniformOutput',false);
%% Clearing Temporary Variables
clear Cmod2 adtg amois temp2 Cmod3 Cmod4 pre L2 i n k
%% Note
% The scaling of the modelling program requires certain editing in each script like no. of samples.