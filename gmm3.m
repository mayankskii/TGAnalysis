function [fits, gof, coeff] = gmm3(Tf,Tf2,Optns)
%  Data for 'gmm3' fit: input are column vector with
%      Tf Input : fda
%      Tf2 Output: Tn
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%      coeff : fit parameters
%      Fit : fit vector(optional)
%% Fit: 'Gaussian Distribution with 3 components'.
x = Tf2;
x = x(x>0);
y = Tf;
y = y((x>0));

[xData, yData] = prepareCurveData( x, y);

% Set up fittype and options.
ft = fittype( 'a1*exp(-((x-b1)/c1)^2)+a2*exp(-((x-b2)/c2)^2)+a3*exp(-((x-b3)/c3)^2)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = Optns.low;
opts.MaxFunEvals = 6000;
opts.MaxIter = 4000;
opts.StartPoint = Optns.x0;
opts.Upper = Optns.up;

% Fit model to data.
[fits, gof] = fit( xData, yData, ft, opts );

% Extract coefficients
c = coeffvalues(fits);
coeff = reshape(c,[],3);
coeff = coeff';

% % Fit Vector
% FitFun = @(r) c(1).*exp(-((r-c(2))./c(3)).^2)...
%             + c(4).*exp(-((r-c(5))./c(6)).^2)...
%             + c(7).*exp(-((r-c(8))./c(9)).^2);
% Fit = FitFun(x);
end