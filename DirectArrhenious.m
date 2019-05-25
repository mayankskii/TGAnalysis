function S = DirectArrhenious(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S activation energy for HR10 HR15 HR20 here HR stands for Heating
% Rate
%
%% Set Order of reaction and Data Input
% Assuming first order reaction n=1 for data range 2000 to 3000
n = 1;
y1 = log((HR10{2}(2000:3000))./(1-(HR10{1}(2000:3000))).^(n));
x1 = 1./(HR10{3}(2000:3000));
y2 = log((HR15{2}(2000:3000))./(1-(HR15{1}(2000:3000))).^(n));
x2 = 1./(HR15{3}(2000:3000));
y3 = log((HR20{2}(2000:3000))./(1-(HR20{1}(2000:3000))).^(n));
x3 = 1./(HR20{3}(2000:3000));
%% Smooth data
y1 = smooth(y1,0.05,'loess');
x1 = smooth(x1,0.05,'loess');
y2 = smooth(y2,0.05,'loess');
x2 = smooth(x2,0.05,'loess');
y3 = smooth(y3,0.05,'loess');
x3 = smooth(x3,0.05,'loess');
%% Slope of the graph and Plots
B1 = abs(-8.3144598*(diff(y1)./diff(x1)));
B2 = abs(-8.3144598*(diff(y2)./diff(x2)));
B3 = abs(-8.3144598*(diff(y3)./diff(x3)));
%B1 = B1( ~any( isnan( B1 ) | isinf( B1 ) ),: );
S = [nanmean(B1); nanmean(B2); nanmean(B3)];
end