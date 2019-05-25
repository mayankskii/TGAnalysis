function S = DtaDsc(Mas,j)
%% I/O
% In : SampleCell whole
% Out : [T and DTA] or [T, DTA, Cp, Heat Required] depending on the data
%% Check for hf data availability
checkVariable = isfield(Mas,'hf');
t = Mas.t/60;
DTA = diff(Mas.dT)./diff(t);
    if (checkVariable == 1)
        if (j==2)
            CpRaw = abs(Mas.hf)./(Mas.W.*15);
            Cp = filloutliers(abs(CpRaw),'pchip');
            Cumhf = cumtrapz(Mas.T,Mas.hf);
            S = [Mas.T(2:end), DTA, Cp(1:end-1), Cumhf(1:end-1)];
        elseif (j==3)
            CpRaw = abs(Mas.hf)./(Mas.W.*20);
            Cp = filloutliers(abs(CpRaw),'pchip');
            Cumhf = cumtrapz(Mas.T,Mas.hf);
            S = [Mas.T(2:end), DTA, Cp(1:end-1), Cumhf(1:end-1)];
        else
            CpRaw = abs(Mas.hf)./(Mas.W.*10);
            Cp = filloutliers(abs(CpRaw),'pchip');
            Cumhf = cumtrapz(Mas.T,Mas.hf);
            S = [Mas.T(2:end), DTA, Cp(1:end-1), Cumhf(1:end-1)];
        end
    else
        S = [Mas.T(2:end), DTA];
    end
end
