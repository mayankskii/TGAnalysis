function S = SenumYang(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having (conversion factor sampling XA, Activation Energy, Pre Exp
% Factor) repectively

%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy SEN.temp SEN.temp2 SEN.fit SEN.Cval
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

%% data SEN
SEN.temp = zeros(3,m);
for i=1:m
    SEN.temp(1,i) = log(10./(iy(1,i)).^2);
    SEN.temp(2,i) = log(15./(iy(2,i)).^2);
    SEN.temp(3,i) = log(20./(iy(3,i)).^2);
end

SEN.temp2 = 1./iy;

%% Fits
for i=1:m
SEN.fit{i} = fit(SEN.temp2(:,i), SEN.temp(:,i),'poly1');
end
%% Extraction
SEN.Cval = zeros(m,2);
for i=1:m
SEN.Cval(i,:) = coeffvalues(SEN.fit{i});
end
%% SEN Activation and k0
SEN.Ea = (-8.3144598).*SEN.Cval(:,1);
SEN.XA = [a :n: a+n*(m-1)]';
x = SEN.Ea./(8.3144598.*[mean(iy,1)]');
SEN.k0 = ((-log(1-SEN.XA))./((x.^4+18*x.^3+86*x.^2+96*x)./(x.^4+20*x.^3+120*x.^2+240*x+120))).*(SEN.Ea/8.3144598).*exp(SEN.Cval(:,2));
S= [SEN.XA, SEN.Ea, SEN.k0];
end