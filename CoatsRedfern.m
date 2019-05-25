function S = CoatsRedfern(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S having (conversion factor sampling XA, Activation Energy, Pre Exp
% Factor) repectively

%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy Coats.temp Coats.temp2 Coats.fit Coats.Cval
a = 0.15;
b = 0.9;
n = 0.003;
m = 250; %m follows, m = ((b-a)/n) which is strictly an natural no.

Tmean = mean([mean(HR10{1}); mean(HR15{1}); mean(HR20{1})]);

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

%% data Coats
Coats.temp = zeros(3,m);
% Use Below for first order modelling
for i=1:m
    Coats.temp(1,i) = log(-10.*(log(1- (a-n+n*i))./(iy(1,i)).^2));
    Coats.temp(2,i) = log(-15.*(log(1- (a-n+n*i))./(iy(2,i)).^2));
    Coats.temp(3,i) = log(-20.*(log(1- (a-n+n*i))./(iy(3,i)).^2));
end

% Use Below for second order modelling
% order = 1;
% for i=1:m
%     Coats.temp(1,i) = log(-10.*((-1+ (a-n+n*i).^-order)./(iy(1,i)).^2));
%     Coats.temp(2,i) = log(-15.*((-1+ (a-n+n*i).^-order)./(iy(2,i)).^2));
%     Coats.temp(3,i) = log(-20.*((-1+ (a-n+n*i).^-order)./(iy(3,i)).^2));
% end

Coats.temp2 = 1./iy;

%% Fits
for i=1:m
Coats.fit{i} = fit(Coats.temp2(:,i), Coats.temp(:,i),'poly1');
end
%% Extraction
Coats.Cval = zeros(m,2);
for i=1:m
Coats.Cval(i,:) = coeffvalues(Coats.fit{i});
end
%% Coats Activation and k0
Coats.Ea = (-8.3144598).*Coats.Cval(:,1);
Coats.k0 = (Coats.Ea/8.3144598).*exp(Coats.Cval(:,2))./(1-(2*8.3144598*Tmean./Coats.Ea));
Coats.XA = [a :n: a+n*(m-1)]';
Coats.fe = diff(Coats.XA)./diff(Coats.Ea);
S= [Coats.XA, Coats.Ea, Coats.k0];
end