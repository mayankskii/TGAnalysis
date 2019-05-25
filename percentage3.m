function [Components, Parameters]= percentage3(comp,compm,res,hr,dT)
for i = 1:3
        a = comp(1,i).*(dT./hr);
        b = comp(2,i);
        c = comp(3,i);
    fun = @(x) a.*(b/c).*(x./c).^(b-1).*exp(-(x/c).^b);
    if i==1
        C1 = integral(fun,0,1);
    elseif i==2
        C2 = integral(fun,0,1);
    else
        C3 = integral(fun,0,1);
    end   
end
% Mean of weibull distribution
temp2(1,1) = comp(3,1).*gamma(1 + (1/comp(2,1)));
temp2(2,1) = comp(3,2).*gamma(1 + (1/comp(2,2)));
temp2(3,1) = comp(3,3).*gamma(1 + (1/comp(2,3)));
% Variance of weibull distribution
temp3(1,1) = (comp(3,1).^2).*(gamma(1 + (2/comp(2,1))) - (gamma(1 + (1/comp(2,1)))).^2);
temp3(2,1) = (comp(3,2).^2).*(gamma(1 + (2/comp(2,2))) - (gamma(1 + (1/comp(2,2)))).^2);
temp3(3,1) = (comp(3,3).^2).*(gamma(1 + (2/comp(2,3))) - (gamma(1 + (1/comp(2,3)))).^2);

temp = [temp3 , [C1;C2;C3]];
% sorting by variance
temp = sortrows(temp,1);
        a1 = compm(1).*(dT./hr);
        b1 = compm(2);
        c1 = compm(3);
    funm = @(x) a1.*(b1/c1).*(x./c1).^(b1-1).*exp(-(x./c1).^b1);
    mois = integral(funm,0,1);
    
val = [temp(:,2); mois];
val = val*(1-res);
sig = sum([val; res]);
% Components contain fraction of HC, C, L, mois, residue, total sum
% predicted of whole mass
Components = [val;res;sig];
% Parameters contain columns of [shape, scale, mean Temperature, variance]
% and component rows of HC C L respectively in order
Parameters = [comp(2,:)', comp(3,:)',temp2, temp3];
% sorting by scale
Parameters = sortrows(Parameters,2);
end