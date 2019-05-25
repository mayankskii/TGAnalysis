 function [Components, Parameters]= percentage1(comp,compm,res,hr,dT)
for i = 1:3
        a = comp(1,i).*(dT./hr);
        b = comp(2,i);
        c = comp(3,i);
    fun = @(x) a*exp(-((x-b)/c).^2);
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
    funm = @(x) am*exp(-((x-bm)/cm).^2);
    mois = integral(funm,0,1);
    
    val = [temp(:,2); mois];
    val = val*(1-res);
    sig = sum([val; res]);
% Components contain fraction of HC, C, L, mois, residue, total sum
% predicted of whole mass
Components = [val;res;sig];
% Parameters contain columns of [max DTG, mean Temperature, variance] and
% component rows of HC C L respectively in order
Parameters = [comp(1,:); comp(2,:); comp(3,:)]';
Parameters = sortrows(Parameters,2);

end