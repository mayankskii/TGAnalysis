 function S = Criado(HR10,HR15,HR20)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively
% and Ea Activation Energy obtained from KAS method
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S has following for 3 HR respectively
%     1. Za = Experimental Z(a) curve Z(a) = f(a)*g(a)
%     2. O = Order compensation
%     3. Z1 = Ideal Power Law Reaction Model Z(a)
%     4. Z2 = Ideal JMA Recation Model Z(a)
%     5. Z3 = Ideal Reaction Order(n) Z(a); Reaction order is reffered as RO(n)
%     6. lnG = g(a) experimental
%     7. RO1G = RO(1) ideal  g(a) = -ln(ln(1-a)); here a = conversion fraction alpha
%     8. F = f(a) experimental
%     9. RO1F = RO(1) ideal f(a) = 1-a
%     10. coeff = coefficient of fitting ideal RO(1) equation on experimentally obtained g(a)
%
%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy CRI.temp CRI.temp2 CRI.fit CRI.Cval CRI.yob x1
a = 0.15;
b = 0.9;
n = 0.003;
m = 250; %m follows, m = ((b-a)/n) which is strictly an natural no.
XA = [a :n: a+n*(m-1)]';

ix = zeros(m,3);
iy = zeros(m,3);
iz = zeros(m,3);
% Replace HR10 with other sample for new graphs
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
%% Z(constant)
    temo(1,1) = find(HR10{1}>0.5,1);
    temo(2,1) = find(HR15{1}>0.5,1);
    temo(3,1) = find(HR20{1}>0.5,1);
    k(1,1) = 1./((HR10{2}(temo(1,1))).*(HR10{3}(temo(1,1)).^2));
    k(2,1) = 1./((HR15{2}(temo(2,1))).*(HR15{3}(temo(2,1)).^2));
    k(3,1) = 1./((HR20{2}(temo(3,1))).*(HR20{3}(temo(3,1)).^2));
%% Z(a) = f(a)*g(a) function for different heating rates
Za(:,1) = k(1,1).*iz(1,:).*(iy(1,:).^2);
Za(:,2) = k(2,1).*iz(2,:).*(iy(2,:).^2);
Za(:,3) = k(3,1).*iz(3,:).*(iy(3,:).^2);
%% Find order of reaction assuming nth order reaction
CRI.temp = zeros(5,m);
    CRI.temp(1,:) = [((1-XA).^0.1 - (1-XA))./((0.5).^0.1 - (0.5))]';
    CRI.temp(2,:) = [((1-XA).^0.5 - (1-XA))./((0.5).^0.5 - (0.5))]';
    CRI.temp(3,:) = [(1-XA).*(-log(1-XA))./(0.346573590279973);]';
    CRI.temp(4,:) = [((1-XA).^1.5 - (1-XA))./((0.5).^1.5 - (0.5))]';
    CRI.temp(5,:) = [((1-XA).^2 - (1-XA))./((0.5).^2 - (0.5))]';

CRI.temp2 = repmat([0.1;0.5;1;1.5;2],1,m);
for i=1:m
        CRI.fit{i} = fit(CRI.temp(:,i), CRI.temp2(:,i),'poly1');
end
CRI.Cval = zeros(m,2);
for i=1:m
    CRI.Cval(i,:) = coeffvalues(CRI.fit{i});
end
O10 = [CRI.Cval(:,1).*Za(:,1) + CRI.Cval(:,2)];
O15 = [CRI.Cval(:,1).*Za(:,2) + CRI.Cval(:,2)];
O20 = [CRI.Cval(:,1).*Za(:,3) + CRI.Cval(:,2)];
O = [O10, O15, O20];
%% Zeta function for ideal reaction types
o1 = 2;
Z1 = XA;% Power Law
Z2 = (1-XA).*(-log(1-XA))./(0.346573590279973);% JMA order 1
Z3 = ((1-XA).^o1 - (1-XA))./((0.5).^o1 - (0.5));% RO(2) model
%% ln(g(a)) distribution
lnG = cumtrapz(XA,1./Za);%without constants
RO1G = log(-log(1-XA));
F = diff(XA)./diff(exp(lnG));
RO1F = (1-XA);
%% ln(ga) fit assuming 1st order equation
coeff = zeros(3,2);
for i=1:3
    coeff(i,:) = ratecurve(XA,lnG(:,i));
end
S = {Za; O; [Z1, Z2, Z3]; [lnG, RO1G]; [[F;[0.5,0.5,0.5]], RO1F];coeff};
end