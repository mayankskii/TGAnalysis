function S = MiuraMaki(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having activation energy distribution f(E) and Pre-exponential
% factor distribution k0(E)
%
%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy Maki.temp Maki.temp2 Maki.fit Maki.Cval
a = 0.15;
b = 0.9;
n = 0.003;
m = 250; %m follows, m = ((b-a)/n) which is strictly an natural no.

ix = zeros(3,m);
iy = zeros(3,m);
% Replace cob10 with other sample for new graphs
for i=1:m
    ix(1,i) = find(HR10{1}>(a-n+n*i),1);
    ix(2,i) = find(HR15{1}>(a-n+n*i),1);
    ix(3,i) = find(HR20{1}>(a-n+n*i),1);
    iy(1,i) = HR10{3}(ix(1,i));
    iy(2,i) = HR15{3}(ix(2,i));
    iy(3,i) = HR20{3}(ix(3,i));
end

%% data Maki
Maki.temp = zeros(3,m);
for i=1:m
    Maki.temp(1,i) = log(10./(iy(1,i)).^2);
    Maki.temp(2,i) = log(15./(iy(2,i)).^2);
    Maki.temp(3,i) = log(20./(iy(3,i)).^2);
end

Maki.temp2 = 1./iy;

%% Fits
for i=1:m
Maki.fit{i} = fit(Maki.temp2(:,i), Maki.temp(:,i),'poly1');
end
%% Extraction
Maki.Cval = zeros(m,2);
for i=1:m
Maki.Cval(i,:) = coeffvalues(Maki.fit{i});
end
%% Maki Activation and k0
Maki.Ea = (-8.3144598).*Maki.Cval(:,1);
Maki.k0 = (Maki.Ea/8.3144598).*exp((Maki.Cval(:,2) - 0.6075));
Maki.XA = [a :n: a+n*(m-1)]';
Maki.fe = diff(Maki.XA)./diff(Maki.Ea);
S = [Maki.fe, Maki.k0(1:end-1)];
end