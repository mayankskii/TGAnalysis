function [fitresult, gof, coeff] = gmm3a(Tf,Tf2,Optns)
%  Data for 'gmm3a' fit: input are column vector with
%      Tf Input : fda
%      Tf2 Output: Tn
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%      coeff : fit parameters
%      Fit : fit vector(optional)
%% Fit: 'Skew Gaussian Distribution with 3 components'.
x = Tf2;
x = x(x>0);
y = Tf;
y = y((x>0));
[xData, yData] = prepareCurveData( x, y);

% Set up fittype and options.
ft = fittype( 'a1*exp(-((x-b1)/c1)^2)*(1+erf(d1*(x-b1)/c1))+ a2*exp(-((x-b2)/c2)^2)*(1+erf(d2*(x-b2)/c2))+ a3*exp(-((x-b3)/c3)^2)*(1+erf(d3*(x-b3)/c3))', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = Optns.low;
opts.MaxFunEvals = 6000;
opts.MaxIter = 4000;
opts.StartPoint = Optns.x0;
opts.Upper = Optns.up;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Extract coefficients
c = coeffvalues(fitresult);
coeff = reshape(c,[],4);
coeff = coeff';

% % Fit Vector
% FitFun = @(r) c(1).*exp(-((r-c(4))./c(7)).^2).*(1+erf(c(10).*(r-c(4))./c(7)))...
%             + c(2).*exp(-((r-c(5))./c(8)).^2).*(1+erf(c(11).*(r-c(5))./c(8)))...
%             + c(3).*exp(-((r-c(6))./c(9)).^2).*(1+erf(c(12).*(r-c(6))./c(9)));
% Fit = FitFun(x);
end