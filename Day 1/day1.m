clear variables
load day_1.mat

index = find(~isnan(message));
idx = find(diff(index)~=1);
A = [idx(1);diff(idx);numel(index)-idx(end)];
C = mat2cell(message(~isnan(message)),A,1);
c = cellfun(@sum,C);
max_c = max(c);

top_three = maxk(c,3);
sum_top_three = sum(top_three);
