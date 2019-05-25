function [fitresult, gof, coeff] = weib1(Tf,Tf2)
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
ft = fittype( 'a1*(b1/c1)*(x/c1)^(b1-1)*exp(-(x/c1)^b1)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [0 1 0];
opts.MaxFunEvals = 6000;
opts.MaxIter = 4000;
opts.StartPoint = [0.06787 1.1 0.0743132468124916];
opts.Upper = [0.1 50 5];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Extract coefficients
c = coeffvalues(fitresult);
coeff = reshape(c,[],3);

% % Fit Vector
% FitFun = @(r) c(1)*(c(2)/c(3)).*(r./c(3)).^(c(2)-1).*exp(-(r./c(3)).^c(2));
% Fit = FitFun(x);
end