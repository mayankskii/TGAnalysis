function S = Kissinger(HR10,HR15,HR20)
%% Data Setup and Kinetic Indexes
%Fit such that n*m = 0.6
clear ix iy KASh.temp KASh.temp2 KASh.fit KASh.Cval
[ix(1,1), ix(1,2)]= max(HR10{2});
[ix(2,1), ix(2,2)]= max(HR15{2});
[ix(3,1), ix(3,2)]= max(HR20{2});
iy(1,1) = HR10{3}(ix(1,2));
iy(2,1) = HR15{3}(ix(2,2));
iy(3,1) = HR20{3}(ix(3,2));
%% data KASh
KIS.temp(1,1) = log(10./(iy(1,1)).^2);
KIS.temp(2,1) = log(15./(iy(2,1)).^2);
KIS.temp(3,1) = log(20./(iy(3,1)).^2);
KIS.temp2 = 1./iy;
%% Fits
KIS.fit = fit(KIS.temp2, KIS.temp,'poly1');
%% Extraction
KIS.Cval(1,:) = coeffvalues(KIS.fit);
%% KASh Activation and k0
KIS.Ea = (-8.3144598).*KIS.Cval(1,1);
KIS.k0 = (KIS.Ea/8.3144598).*exp(KIS.Cval(1,2));
S= [KIS.Ea, KIS.k0];
end