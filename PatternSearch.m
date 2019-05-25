function S2 = PatternSearch(HR10,HR15,HR20)
S = zeros(200,9);
for ii=1:200
   S(ii,:) = ObjectivePattern(HR10,HR15,HR20);
end
[~, idx]= min(S(:,1));
S2 = S(idx,:);
end
