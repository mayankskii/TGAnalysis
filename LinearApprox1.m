function S = LinearApprox1(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having (conversion factor sampling XA, Activation Energy, Pre Exp
% Factor) repectively

%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy LA1.temp LA1.temp2 LA1.fit LA1.Cval
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

%% data LA1
LA1.temp = zeros(3,m);
for i=1:m
    LA1.temp(1,i) = log(10./(iy(1,i)).^1.95);
    LA1.temp(2,i) = log(15./(iy(2,i)).^1.95);
    LA1.temp(3,i) = log(20./(iy(2,i)).^1.95);
end

LA1.temp2 = 1./iy;

%% Fits
for i=1:m
LA1.fit{i} = fit(LA1.temp2(:,i), LA1.temp(:,i),'poly1');
end
%% Extraction
LA1.Cval = zeros(m,2);
for i=1:m
LA1.Cval(i,:) = coeffvalues(LA1.fit{i});
end
%% LA1 Activation and k0
LA1.Ea = (-8.3144598).*LA1.Cval(:,1);
LA1.XA = [a :n: a+n*(m-1)]';
LA1.k0 = (-log(1-LA1.XA).*(LA1.Ea.^(0.95)).*exp(LA1.Cval(:,2)+0.235))./(8.3144598.^0.95);
S= [LA1.XA, LA1.Ea, LA1.k0];
end