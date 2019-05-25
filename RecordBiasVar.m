%% Bias Variance Tradeoff
% This is used to maximise the effectiveness of the filter to reduce error
% in deconvolution. Since the total error is given by $Total Error = Bias^2
% + Variance$.
warning('Program runtime is high(~50 min) for current filstr settings')
tic
%% Recording Error
% The filter used is SGolay Filter
% Filter strength
filstr = (100:25:1500)';
% Error Matrix
TotalError = zeros(14,length(filstr));
for i = 1:length(filstr)
    TotalError(:,i) = filterchange(Smod,filstr(i,1));
end
[Error.min, I] = min(TotalError,[],2);
Error.filstr = filstr(I);
Error.TotalError = TotalError;
%% Filter Comparison
% Additionally we can compare different filter also.
% The data is given in Error.filtcomp for 
%'movmean' (default) | 'movmedian' | 'gaussian' | 'lowess' |...
%'loess' | 'rlowess' | 'rloess' | 'sgolay' | 'No filter'
%% Clearing Temporary Variables
clear TotalError I filstr i
Error.time = toc;%time elapsed in seconds