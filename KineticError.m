function [S] = KineticError(~)
%% I/O
% In : Nothing
% Out : S having
%     1. Temperature integral approximation
%     2. Relative Error in Approxiamtions compared to Actual Integral
%     3. Relative Error in Ea estimation accotdingly
%
%% Error in p(y) with respect to Actual Integral
y = [2:0.1:60]';
% Actual Integral
y1= (y.*ei(-y) + exp(-y))./y;
% Doyle's approximations
y2= exp(-1.0518.*y -5.330);
y21 = (y1 - y2)./y1;
y22 = diff(log(y2./y1))./diff(y);
% Starink
y3= exp(-y -0.235)./(y.^1.95);
y31 = (y1 - y3)./y1;
y32 = diff(log(y3./y1))./diff(y);
% Murray White
y4= exp(-1.0008.*y -0.312)./(y.^1.92);
y41 = (y1 - y4)./y1;
y42 = diff(log(y4./y1))./diff(y);
% Lyon's
y5= (exp(-y)./(y.*(2+y))).*(1 + (2./((2+y).*y)) - (8./(((2+y).^2).*y)));
y51 = (y1 - y5)./y1;
y52 = diff(log(y5./y1))./diff(y);
% Coats Redfern
y6= (exp(-y)./(y.^2)).*(1-(2./y));
y61 = (y1 - y6)./y1;
y62 = diff(log(y6./y1))./diff(y);
% Senum Yang
y7= (exp(-y)./(y.^2)).*((y.^4+18*y.^3+86*y.^2+96*y)./(y.^4+20*y.^3+120*y.^2+240*y+120));
y71 = (y1 - y7)./y1;
y72 = diff(log(y7./y1))./diff(y);
% KAS
y8= exp(-y)./(y.^2);
y81 = (y1 - y8)./y1;
y82 = diff(log(y8./y1))./diff(y);
% Output below
S = {y; [y1,y2,y3,y4,y5,y6,y7,y8]; [y21,y31,y41,y51,y61,y71,y81]; [y22,y32,y42,y52,y62,y72,y82]};