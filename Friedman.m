function S = Friedman(HR10,HR15,HR20)
%% FRIEDMAN METHOD
%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy FriMan.temp FriMan.temp2 FriMan.fit FriMan.Cval
a = 0.15;
b = 0.9;
n = 0.003;
m = 250; %m follows, m = ((b-a)/n) which is strictly an natural no.

ix = zeros(3,m);
iy = zeros(3,m);
iz = zeros(3,m);
% Replace cob10 with other sample for new graphs
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

%% data FriMan
FriMan.temp = zeros(3,m);
for i=1:m
    FriMan.temp(1,i) = log((iz(1,i)));
    FriMan.temp(2,i) = log((iz(2,i)));
    FriMan.temp(3,i) = log((iz(3,i)));
end

FriMan.temp2 = 1./iy;

%% Fits
for i=1:m
FriMan.fit{i} = fit(FriMan.temp2(:,i), FriMan.temp(:,i),'poly1');
end
%% Extraction
FriMan.Cval = zeros(m,2);
for i=1:m
FriMan.Cval(i,:) = coeffvalues(FriMan.fit{i});
end
%% FriMan Activation and k0
FriMan.Ea = (-8.3144598).*FriMan.Cval(:,1);
FriMan.XA = [a :n: a+n*(m-1)]';
FriMan.k0 = exp(FriMan.Cval(:,2))./(1-FriMan.XA);
S= [FriMan.XA, FriMan.Ea, FriMan.k0];
end
