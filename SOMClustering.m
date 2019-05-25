% Solve a Clustering Problem with a Self-Organizing Map
% This script assumes these variables are defined:
%   HHV1 - input data.

x = HHV{1,1}';

% Create a Self-Organizing Map
dimension1 = 10;
dimension2 = 10;
net = selforgmap([dimension1 dimension2]);

% Train the Network
[net,tr] = train(net,x);

% Test the Network
y = net(x);

% View the Network
%view(net)
NetCluster = {x;dimension1;dimension2;net;tr;y};
% Plots
% Uncomment these lines to enable various plots.
%figure, plotsomtop(net)
%figure, plotsomnc(net)
%figure, plotsomnd(net)
%figure, plotsomplanes(net)
%figure, plotsomhits(net,x)
%figure, plotsompos(net,x)
set(gcf, 'Position', get(0, 'Screensize'));
set(0,'DefaultFigureVisible','off')
n=167;
h = plotsomtop(net);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n) '.png']));
h1 = plotsomnc(net);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+1) '.png']));
h2 = plotsomnd(net);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+2) '.png']));
h3 = plotsomplanes(net);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+3) '.png']));
h4 = plotsompos(net,x);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+4) '.png']));
h5 = plotsomhits(net,x);
saveas(h,fullfile('/Users/mayankmahawar/Documents/MATLAB/TGA Modelling Publish/Plots',['Plot' num2str(n+5) '.png']));
clearvars -regexp ^h\d{1}$
clear x dimension1 dimension2 net tr y n h