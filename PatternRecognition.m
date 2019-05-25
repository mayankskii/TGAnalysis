% Solve a Pattern Recognition Problem with a Neural Network
% This script assumes these variables are defined:
%
%   HHV1 - input data.
%   HHV3 - target data.

x = HHV{1}';
t = HHV{3}';

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. Suitable in low memory situations.
trainFcn = 'trainscg';  % Scaled conjugate gradient backpropagation.

% Create a Pattern Recognition Network
hiddenLayerSize = 3;
net = patternnet(hiddenLayerSize, trainFcn);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 80/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 5/100;

% Train the Network
[net,tr] = train(net,x,t);

% Test the Network
y = net(x);
e = gsubtract(t,y);
performance = perform(net,t,y);
tind = vec2ind(t);
yind = vec2ind(y);
percentErrors = sum(tind ~= yind)/numel(tind);

% View the Network
%view(net)
NetClassify = {x;t;trainFcn;hiddenLayerSize;net;tr;y;e;performance;tind;yind;percentErrors};
% Plots
% Uncomment these lines to enable various plots.
%figure, plotperform(tr)
%figure, plottrainstate(tr)
%figure, ploterrhist(e)
%figure, plotconfusion(t,y)
%figure, plotroc(t,y)
set(gcf, 'Position', get(0, 'Screensize'));
set(0,'DefaultFigureVisible','off')
n=161;
h = plotperform(tr);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n) '.png']));
h1 = plottrainstate(tr);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+1) '.png']));
h2 = ploterrhist(e);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+2) '.png']));
h3 = plotconfusion(t,y);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+3) '.png']));
h4 = plotroc(t,y);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+4) '.png']));
clearvars -regexp ^h\d{1}$
clear x t trainFcn hiddenLayerSize net tr y e performance tind yind percentErrors n h