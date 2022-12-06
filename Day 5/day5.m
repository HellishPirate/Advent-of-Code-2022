%% part 1
clear variables
load day_5_input.mat
for i = 1:504
    x = day5input2(i,1);
    y = day5input2(i,2);
    z = day5input2(i,3);
    B = char(C{y});
    B1 = B(1:x);
    B2C = cellstr(flip(B1));
    C{z} = [B2C; C{z}];
    C{y}(1:x) = [];
end
ans1 = string(C{1}(1));
for j = 2:9
    ans1 = ans1 + string(C{j}(1));
end
%% part 2
clear variables
load day_5_input.mat
for i = 1:504
    x = day5input2(i,1);
    y = day5input2(i,2);
    z = day5input2(i,3);
    B = char(C{y});
    B1 = B(1:x);
    B2C = cellstr(B1);
    C{z} = [B2C; C{z}];
    C{y}(1:x) = [];
end
ans2 = string(C{1}(1));
for j = 2:9
    ans2 = ans2 + string(C{j}(1));
end
