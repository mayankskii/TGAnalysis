function S = ObjectivePattern(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S (residual, Ea, A factor) for the 3 heating rates
%
%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy OPS.temp OPS.temp2 OPS.fit OPS.Cval OPS.yob x1
a = 0.15;
b = 0.9;
n = 0.001;
m = 750; %m follows, m = ((b-a)/n) which is strictly an natural no.
OPS.XA = [a :n: a+n*(m-1)]';

ix = zeros(m,3);
iy = zeros(m,3);
iz = zeros(m,3);
% Replace woo10 with other sample for new graphs
for i=1:m
    ix(1,i) = find(HR10{1}>(a-n+n*i),1);
    ix(2,i) = find(HR15{1}>(a-n+n*i),1);
    ix(3,i) = find(HR20{1}>(a-n+n*i),1);
    iz(1,i) = HR10{2}(ix(1,i));
    iz(2,i) = HR15{2}(ix(2,i));
    iz(3,i) = HR20{2}(ix(3,i));
    iy(1,i) = HR10{3}(ix(1,i));
    iy(2,i) = HR15{3}(ix(2,i));
    iy(3,i) = HR20{3}(ix(3,i));
end

%% Pre Data Objective Pattern Search
OPS.yeta = (7+rand(750,1)*(21-7));
OPS.xvar = (80+rand(750,1)*(200-80));

OPS.y(:,1) = (iz(:,1)- (10.^OPS.yeta).*exp(-OPS.xvar).*(1-OPS.XA)).^2;
OPS.y(:,2) = (iz(:,2)- (10.^OPS.yeta).*exp(-OPS.xvar).*(1-OPS.XA)).^2;
OPS.y(:,3) = (iz(:,3)- (10.^OPS.yeta).*exp(-OPS.xvar).*(1-OPS.XA)).^2;
%% OPS Parameters
[OPS.idx(1,1), OPS.idx(1,2)] = min(OPS.y(:,1));
[OPS.idx(2,1), OPS.idx(2,2)] = min(OPS.y(:,2));
[OPS.idx(3,1), OPS.idx(3,2)] = min(OPS.y(:,3));

OPS.A(1,1) = 10*(10.^(OPS.yeta(OPS.idx(1,2))))./(293);
OPS.A(2,1) = 15*(10.^(OPS.yeta(OPS.idx(2,2))))./(293);
OPS.A(3,1) = 20*(10.^(OPS.yeta(OPS.idx(3,2))))./(293);

OPS.Ea(1,1) = 8.3144598*(OPS.xvar(OPS.idx(1,2))).*(293);
OPS.Ea(2,1) = 8.3144598*(OPS.xvar(OPS.idx(2,2))).*(293);
OPS.Ea(3,1) = 8.3144598*(OPS.xvar(OPS.idx(3,2))).*(293);

%% Min Values for passing to Caller function
S = zeros(1,9);
S(1,1) = OPS.idx(1,1);
S(1,2) = OPS.Ea(1,1);
S(1,3) = OPS.A(1,1);
S(1,4) = OPS.idx(2,1);
S(1,5) = OPS.Ea(2,1);
S(1,6) = OPS.A(2,1);
S(1,7) = OPS.idx(3,1);
S(1,8) = OPS.Ea(3,1);
S(1,9) = OPS.A(3,1);

end