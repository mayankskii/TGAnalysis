function S = FreeCarrol(HR10,HR15,HR20,Ea)
%% I/O
% In : (HR10, HR15, HR20) each having TG, DTG and Temperture respectively
% and Ea Activation Energy obtained from KAS method
% For example HR10 contains: {1} = a; {2}=da; {3}=T
% Out : S has Ea apparent, n (order of reaction)apparent, a factor, m
% factor

%% Data Setup and Kinetic Indexes
%% For HR10
y1 = diff(abs(log(smooth(HR10{2},100,'sgolay',1))))./diff(abs(log(smooth(1 - HR10{1}(1:end-1),100,'sgolay',1))));
x1 = diff(abs(smooth((1./HR10{3}),100,'sgolay',1)))./diff(abs(log(smooth(1 - HR10{1}(1:end-1),100,'sgolay',1))));
idx1 = isfinite(x1) & isfinite(y1);
fit1 = fit(x1(idx1),y1(idx1),'poly1');
Cval1 = coeffvalues(fit1);
Eap1 = (-8.3144598).*Cval1(1,1);
%% For HR15
y2 = diff(abs(log(smooth(HR15{2},100,'sgolay',1))))./diff(abs(log(smooth(1 - HR15{1}(1:end-1),100,'sgolay',1))));
x2 = diff(abs(smooth((1./HR15{3}),100,'sgolay',1)))./diff(abs(log(smooth(1 - HR15{1}(1:end-1),100,'sgolay',1))));
idx2 = isfinite(x2) & isfinite(y2);
fit2 = fit(x2(idx2),y2(idx2),'poly1');
Cval2 = coeffvalues(fit2);
Eap2 = (-8.3144598).*Cval2(1,1);
%% For HR20
y3 = diff(abs(log(smooth(HR20{2},100,'sgolay',1))))./diff(abs(log(smooth(1 - HR20{1}(1:end-1),100,'sgolay',1))));
x3 = diff(abs(smooth((1./HR20{3}),100,'sgolay',1)))./diff(abs(log(smooth(1 - HR20{1}(1:end-1),100,'sgolay',1))));
idx3 = isfinite(x3) & isfinite(y3);
fit3 = fit(x3(idx3),y3(idx3),'poly1');
Cval3 = coeffvalues(fit3);
Eap3 = (-8.3144598).*Cval3(1,1);
%% FREE Activation and a and b
Eap = [Eap1; Eap2; Eap3];
nap = [Cval1(1,2); Cval2(1,2); Cval3(1,2)];
a1 = ((Eap./(mean(Ea(:,2))))-1)/1.05;
m1 = 0.05./(1.05*(1-a1)-1);
S= [Eap, nap, a1, m1];
end