clear variables
load day8input.txt
day8input = readlines("day8input.txt").split("").double;
day8input = day8input(:,2:end-1); % input without NaNs

count = 0;
for i = 1:length(day8input)
    for j = 1:length(day8input)
        if sum(day8input(i,j) > day8input(i+1:end,j)) == length(day8input(i+1:end,j))
            count = count + 1;
        elseif sum(day8input(i,j) > day8input(1:i-1,j)) == length(day8input(1:i-1,j))
            count = count + 1;
        elseif sum(day8input(i,j) > day8input(i,j+1:end)) == length(day8input(i,j+1:end))
            count = count + 1;
        elseif sum(day8input(i,j) > day8input(i,1:j-1)) == length(day8input(i,1:j-1))
            count = count + 1;
        end
    end
end