%% Component
% x1 = zeros(14,3);
% x2 = zeros(14,3);
% x3 = zeros(14,3);
% for i=1:14
%     x1(i,:) = MixModel.p.coeff{i,1};
%     x2(i,:) = MixModel.L2.coeff{i,1};
% end
% x1 = round(x1,4);
% x2 = round(x2,4);
%% Weibull Extraction
for i=1:4
    x1(i,:) = (Kinetic.k14{i,1});
end
x1 = [round(x1(:,1)*1e-3,4),round(x1(:,2),4)];
clear i X Y
% clear a b c am bm cm d dm x y funm i lgd ax i h n hline p dim str a t ii f
% clearvars -regexp ^y\d{1}$
% clearvars -regexp ^x\d{1}$
% clearvars -regexp ^a\d{1}$
% clearvars -regexp ^b\d{1}$
% clearvars -regexp ^c\d{1}$
% clearvars -regexp ^y\d{2}$
% clearvars -regexp ^fun\d{1}$