clear variables
load day10input.mat

values(1) = values(1) + 1;
cum_sum = cumsum(values);

count = zeros(numel(instructions),1);
for i = 1:numel(instructions)
    if instructions(i) == "addx"
        count(i) = 2;
    else
        count(i) = 1;
    end
end
total_cycles = cumsum(count);

n = (20:40:220);
pos = zeros(numel(n),1); 

for i = 1:numel(total_cycles)
    for j = 1:numel(pos)
        if numel(find(total_cycles == n(j)))
            pos(j) = find(total_cycles == n(j))-1;
        else
            pos(j) = find(total_cycles == n(j)-1);
        end
    end
end

ans1 = sum(cum_sum(pos).*n');
test = cum_sum(pos).*n';
