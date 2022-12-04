clear variables
load day_4_input.mat

count = 0;
for i = 1:1000
    Ax = cell2mat(day4input(i,1));
    Bx = cell2mat(day4input(i,2));
    subset1 = ismember(Ax,Bx);
    subset2 = ismember(Bx,Ax);
    if sum(subset1) == length(subset1)
        count = count + 1;
    elseif sum(subset2) == length(subset2)
        count = count + 1;
    end
end

count1 = 0;
for j = 1:1000
    Ax1 = cell2mat(day4input(j,1));
    Bx1 = cell2mat(day4input(j,2));
    if sum(ismember(Ax1,Bx1)) ~= 0
        count1 = count1 + 1;
    end
end