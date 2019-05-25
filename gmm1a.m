function [fitresult, gof, coeff] = gmm1a(Tf,Tf2)
%  Data for 'GMM1' fit: input are column vector with
%      Tf Input : fdam
%      Tf2 Output: Tnm
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%      coeff : fit parameters
%      Fit : fit vector(optional)
%% Fit: 'Millet Mois'.
x = Tf2;
x = x(x>0);
y = Tf;
y = y((x>0));
[xData, yData] = prepareCurveData( x, y);

% Set up fittype and options.
ft = fittype( 'a1*exp(-((x-b1)/c1)^2).*(1+erf(d1*((x)-b1)/c1))', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 0 0 -10];
opts.MaxFunEvals = 6000;
opts.MaxIter = 4000;
opts.StartPoint = [0.01 0.06324 0.0975404049994095 0.278498218867048];
opts.Upper = [0.1 0.2 Inf 10];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Extract coefficients
c = coeffvalues(fitresult);
coeff = reshape(c,[],4);

% % Fit Vector
% FitFun = @(r) c(1).*exp(-((r-c(2))./c(3)).^2).*(1+erf(c(4).*(r-c(2))./c(3)));
% Fit = FitFun(x);
end