function S = Thermodynamics(HR10,HR15,HR20,KAS)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively and KAS having (XA, Ea, k0) 
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S outputs dH(Enthalpy) dG(Gibbs) dS(Entropy) Q(Reaction Quotient)
% for each heating rate 10, 15, 20 respectively
%
%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy THER.temp THER.temp2 THER.fit THER.Cval
a = 0.15;
b = 0.9;
n = 0.003;
m = 250; %m follows, m = ((b-a)/n) which is strictly an natural no.
kb= 1.380648813131313131*1e-23;
h = 6.62607015*1e-34;
THER.XA = [a :n: a+n*(m-1)]';

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
THER.T = iy';
THER.Tm = mean(THER.T,2);
[~, idx(1)] = max(HR10{2});
[~, idx(2)] = max(HR15{2});
[~, idx(3)] = max(HR20{2});
THER.Tp(1) = HR10{3}(idx(1));
THER.Tp(2) = HR15{3}(idx(2));
THER.Tp(3) = HR20{3}(idx(3));
Ea = KAS(:,2);
k0 = KAS(:,3);

%% data THER
THER.dH = zeros(m,3);
THER.dG = zeros(m,3);
THER.dS = zeros(m,3);
THER.k0 = zeros(m,3);
for i=1:3
    THER.dH(:,i) = Ea - (8.3144598*THER.T(:,i));
    THER.dG(:,i) = Ea + 8.3144598*THER.T(:,i).*(log((kb*THER.T(:,i))./(h.*k0)));
    THER.dS(:,i) = (THER.dH(:,i) - THER.dG(:,i))./(THER.T(:,i));
    %This is equlibrium constant
    THER.k01(:,i) = 60.*(5+5*i).*Ea.*exp(-Ea./(8.3144598*THER.T(:,i)))./(8.3144598.*(THER.T(:,i).^2));
    %THER.A(:,i) = (kb*THER.T(:,i)./h).*exp(-THER.dS(:,i)./(8.3144598));(Optional)
    %This is reaction Quotient
    THER.Q(:,i) = THER.k01(:,i).*exp(THER.dG(:,i)./(8.3144598*THER.T(:,i)));
end
S = {THER.XA; THER.dH; THER.dG; THER.dS; THER.Q};
end