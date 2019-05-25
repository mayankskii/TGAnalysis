function [fits, gof, coeff] = gauss1(X, Y, i)
%% Fit: 'gaussian 1'.
[xData, yData] = prepareCurveData( X, Y );
% Set up fittype and options.
ft = fittype( 'gauss1' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
if i==1
    opts.Lower = [0 400 0];
    opts.StartPoint = [0.005 425 3];
    opts.Upper = [0.02 450 Inf];
else
    opts.Lower = [0 800 0];
    opts.StartPoint = [0.01 875 10];
    opts.Upper = [0.05 950 Inf];
end

% Fit model to data.
[fits, gof] = fit( xData, yData, ft, opts );

% Extract coefficients
c = coeffvalues(fits);
coeff = reshape(c,[],3);


