function [fits, gof, coeff] = gmm1(Tfm,Tf2m)
%  Data for 'GMM1' fit: input are column vector with
%      Tfm Input : fdam
%      Tf2m Output: Tnm
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%      coeff : fit parameters
%      Fit : fit vector(optional)
%% Fit: 'GMM1'.
x = Tf2m;
x = x(x>0);
y = Tfm;
y = y((x>0));
[xData, yData] = prepareCurveData( x, y);

% Set up fittype and options.
ft = fittype( 'gauss1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0];
opts.StartPoint = [0.0340738083272945 0.0671831872039322 0.0223284741136468];
opts.Upper = [0.1 0.2 Inf];

% Fit model to data.
[fits, gof] = fit( xData, yData, ft, opts );

% Extract coefficients
c = coeffvalues(fits);
coeff = reshape(c,[],3);

% % Fit Vector
% FitFun = @(r) c(1).*exp(-((r-c(2))./c(3)).^2);
% Fit = FitFun(x);
end