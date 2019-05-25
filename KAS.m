function S = KAS(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having (conversion factor sampling XA, Activation Energy, Pre Exp
% Factor) repectively

%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
a = 0.15;
b = 0.9;
n = 0.003;%This is the sample resolution decreasing n will result in higher runtime but more datapoints.
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
%% data KASh
KASh.temp = zeros(3,m);
for i=1:m
    KASh.temp(1,i) = log(10./(iy(1,i)).^2);
    KASh.temp(2,i) = log(15./(iy(2,i)).^2);
    KASh.temp(3,i) = log(20./(iy(3,i)).^2);
end

KASh.temp2 = 1./iy;

%% Fits
for i=1:m
KASh.fit{i} = fit(KASh.temp2(:,i), KASh.temp(:,i),'poly1');
end
%% Extraction
KASh.Cval = zeros(m,2);
for i=1:m
KASh.Cval(i,:) = coeffvalues(KASh.fit{i});
end
%% KASh Activation and k0
KASh.Ea = (-8.3144598).*KASh.Cval(:,1);
KASh.XA = [a :n: a+n*(m-1)]';
KASh.k0 = (-log(1-KASh.XA)).*(KASh.Ea/8.3144598).*exp(KASh.Cval(:,2));
S= [KASh.XA, KASh.Ea, KASh.k0];
end