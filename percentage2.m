function [Components, Parameters]= percentage2(comp,compm,res,hr,dT)
for i = 1:3
        a = comp(1,i).*(dT./hr);
        b = comp(2,i);
        c = comp(3,i);
        d = comp(4,i);
    fun = @(x) a*exp(-((x-b)/c).^2).*(1+erf(d*((x-b)/c)));
    if i==1
        C1 = integral(fun,0,1);
    elseif i==2
        C2 = integral(fun,0,1);
    else
        C3 = integral(fun,0,1);
    end   
end
% Sorting according to mean parameter
temp = [comp(2,:)' , [C1;C2;C3]];
temp = sortrows(temp,1);
        am = compm(1).*(dT./hr);
        bm = compm(2);
        cm = compm(3);
        dm = compm(4);
    funm = @(x) am*exp(-((x-bm)/cm).^2).*(1+erf(dm*((x-bm)/cm)));
    mois = integral(funm,0,1);

    val = [temp(:,2); mois];
    val = val*(1-res);
    sig = sum([val; res]);
% Components contain fraction of HC, C, L, mois, residue, total sum
% predicted of whole mass
Components = [val;res;sig];
% Parameters contain columns of [max DTG, mean Temperature, variance, skewness]
% and component rows of HC C L respectively in order
Parameters = [comp(1,:); comp(2,:); comp(3,:); comp(4,:)]';
Parameters = sortrows(Parameters,2);
end