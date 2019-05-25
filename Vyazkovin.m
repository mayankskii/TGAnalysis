function S = Vyazkovin(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having (conversion factor sampling XA, Activation Energy, Pre Exp
% Factor) repectively

%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
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

%% data AIC
AIC.temp = zeros(3,m);
for i=1:m
    AIC.temp(1,i) = log(10./(iy(1,i)).^2);
    AIC.temp(2,i) = log(15./(iy(2,i)).^2);
    AIC.temp(3,i) = log(20./(iy(3,i)).^2);
end

AIC.temp2 = 1./iy;

%% Fits
for i=1:m
AIC.fit{i} = fit(AIC.temp2(:,i), AIC.temp(:,i),'poly1');
end
%% Extraction
AIC.Cval = zeros(m,2);
for i=1:m
AIC.Cval(i,:) = coeffvalues(AIC.fit{i});
end
%% AIC Activation and k0
AIC.Ea = (-8.3144598).*AIC.Cval(:,1);
for i=1:m
    AIC.Tmean(i,1) = mean(iy(:,i));
    AIC.Txuse = iy';
end
AIC.x = AIC.Ea./(8.3144598*AIC.Tmean);
AIC.XA = [a :n: a+n*(m-1)]';
AIC.k0 = (-log(1-AIC.XA)).*(AIC.Ea/8.3144598).*exp(AIC.Cval(:,2))./((1-(2./AIC.x))./(1-(1./(AIC.x.^2))));
S= [AIC.XA, AIC.Ea, AIC.k0];
end