% advent of code
%% day 1
% part 1
% find elf with most amount of calories

% import message.txt as a numeric matrix - replace all blanks with NaN
% save workspace - I called it day_1

clear variables
load day_1.mat % (saved workspace variable)

index = find(~isnan(message));
idx = find(diff(index)~=1);
A = [idx(1);diff(idx);numel(index)-idx(end)];
C = mat2cell(message(~isnan(message)),A,1);
% celldisp(C)
c = cellfun(@sum,C);
max_c = max(c);

% part 2
% find top 3 elves with most amount of calories

top_three = maxk(c,3);
sum_top_three = sum(top_three);
