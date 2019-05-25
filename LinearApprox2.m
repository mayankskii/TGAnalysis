function S = LinearApprox2(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having (conversion factor sampling XA, Activation Energy, Pre Exp
% Factor) repectively

%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy LA2.temp LA2.temp2 LA2.fit LA2.Cval
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

%% data LA2
LA2.temp = zeros(3,m);
for i=1:m
    LA2.temp(1,i) = log(10./(iy(1,i)).^1.92);
    LA2.temp(2,i) = log(15./(iy(2,i)).^1.92);
    LA2.temp(3,i) = log(20./(iy(2,i)).^1.92);
end

LA2.temp2 = 1./iy;

%% Fits
for i=1:m
LA2.fit{i} = fit(LA2.temp2(:,i), LA2.temp(:,i),'poly1');
end
%% Extraction
LA2.Cval = zeros(m,2);
for i=1:m
LA2.Cval(i,:) = coeffvalues(LA2.fit{i});
end
%% LA2 Activation and k0
LA2.Ea = (-8.3144598./1.0008).*LA2.Cval(:,1);
LA2.XA = [a :n: a+n*(m-1)]';
LA2.k0 = (-log(1-LA2.XA).*(LA2.Ea.^(0.92)).*exp(LA2.Cval(:,2)+0.312))./(8.3144598.^0.92);
S= [LA2.XA, LA2.Ea, LA2.k0];
end