function coeff = ratecurve(XA,X)
%  Data for  fit:
%      X Input : XA
%      Y Output: lgG
%  Output:
%      coeff : coefficient from fits
%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( XA, X );

% Set up fittype and options.
ft = fittype( '(a*log(-log(1-x))) + b', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.MaxFunEvals = 6000;
opts.MaxIter = 4000;
opts.Robust = 'Bisquare';
opts.StartPoint = [0.500382220867275 0.502496348811249];

% Fit model to data.
[fitresult, ~] = fit( xData, yData, ft, opts );
c = coeffvalues(fitresult);
coeff = c';
end