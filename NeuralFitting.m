% Solve an Input-Output Fitting problem with a Neural Network
% This script assumes these variables are defined:
%
%   simplefitInputs - input data.
%   simplefitTargets - target data.

x = HHV{1}(:,1:3)';
t = HHV{1}(:,4)';
% x = HHV{2}(:,1:3)';
% t = HHV{2}(:,4)';
% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'trainlm';  % Levenberg-Marquardt backpropagation.

% Create a Fitting Network
hiddenLayerSize = 3;
net = fitnet(hiddenLayerSize,trainFcn);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Train the Network
[net,tr] = train(net,x,t);

% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y);

% View the Network
%view(net)
NetFitting = {x;t;trainFcn;hiddenLayerSize;net;tr;y;e;performance};
% Plots
% Uncomment these lines to enable various plots.
%  figure, plotperform(tr);
%  figure, plottrainstate(tr)
%  figure, ploterrhist(e)
%  figure, plotregression(t,y)
%  figure, plotfit(net,x,t)
set(gcf, 'Position', get(0, 'Screensize'));
set(0,'DefaultFigureVisible','off')
n=151;
h = plotperform(tr);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n) '.png']));
h1 = plottrainstate(tr);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+1) '.png']));
h2 = ploterrhist(e);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+2) '.png']));
h3 = plotregression(t,y);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+3) '.png']));
clearvars -regexp ^h\d{1}$
clear x t trainFcn hiddenLayerSize net tr y e performance n h