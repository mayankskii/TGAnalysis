function [fitresult, gof, coeff] = weib3(Tf,Tf2,Optns)
%  Data for 'GMM1' fit: input are column vector with
%      Tf Input : fda
%      Tf2 Output: Tn
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%      coeff : fit parameters
%      Fit : fit vector(optional)
%% Fit: 'GMM 20'.
x = Tf2;
x = x(x>0);
y = Tf;
y = y((x>0));
[xData, yData] = prepareCurveData( x, y);

% Set up fittype and options.
ft = fittype('a1*(b1/c1)*(x/c1)^(b1-1)*exp(-(x/c1)^b1) + a2*(b2/c2)*(x/c2)^(b2-1)*exp(-(x/c2)^b2) + a3*(b3/c3)*(x/c3)^(b3-1)*exp(-(x/c3)^b3)', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.MaxFunEvals = 6000;
opts.MaxIter = 4000;
opts.Lower = Optns.low;
opts.MaxFunEvals = 6000;
opts.MaxIter = 4000;
opts.StartPoint = Optns.x0;
opts.Upper = Optns.up;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Extract coefficients
c = coeffvalues(fitresult);
coeff = reshape(c,[],3);
coeff = coeff';

% % Fit Vector
% FitFun = @(r) c(1)*(c(4)/c(7)).*((r/c(7)).^(c(4)-1)).*exp(-(r/c(7)).^c(4))...
%             + c(2)*(c(5)/c(8)).*((r/c(8)).^(c(5)-1)).*exp(-(r/c(8)).^c(5))...
%             + c(3)*(c(6)/c(9)).*((r/c(9)).^(c(6)-1)).*exp(-(r/c(9)).^c(6));
% Fit = FitFun(x);
end