function S = FWO(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having (conversion factor sampling XA, Activation Energy, Pre Exp
% Factor) repectively

%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy FWOc.temp FWOc.temp2 FWOc.fit FWOc.Cval
a = 0.15;
b = 0.9;
n = 0.003;
m = 250; %m follows, m = ((b-a)/n) which is strictly an natural no.

ix = zeros(3,m);
iy = zeros(3,m);
for i=1:m
    ix(1,i) = find(HR10{1}>(a-n+n*i),1);
    ix(2,i) = find(HR15{1}>(a-n+n*i),1);
    ix(3,i) = find(HR20{1}>(a-n+n*i),1);
    iy(1,i) = HR10{3}(ix(1,i));
    iy(2,i) = HR15{3}(ix(2,i));
    iy(3,i) = HR20{3}(ix(3,i));
end

%% data FWOc
FWOc.temp = zeros(3,m);
for i=1:m
    FWOc.temp(1,i) = log(10);
    FWOc.temp(2,i) = log(15);
    FWOc.temp(3,i) = log(20);
end

FWOc.temp2 = 1./iy;

%% Fits
for i=1:m
FWOc.fit{i} = fit(FWOc.temp2(:,i), FWOc.temp(:,i),'poly1');
end
%% Extraction
FWOc.Cval = zeros(m,2);
for i=1:m
FWOc.Cval(i,:) = coeffvalues(FWOc.fit{i});
end
%% FWOc Activation and k0
FWOc.Ea = (-8.3144598./1.0518).*FWOc.Cval(:,1);
FWOc.XA = [a :n: a+n*(m-1)]';
FWOc.k0 = (-log(1-FWOc.XA).*8.3144598.*exp(FWOc.Cval(:,2)+5.331)./(FWOc.Ea));
S= [FWOc.XA, FWOc.Ea, FWOc.k0];
end