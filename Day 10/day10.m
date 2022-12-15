clear variables
load day10input.mat

values = [1; values];
cum_sum = cumsum(values);

count = zeros(numel(instructions),1);
for i = 1:numel(instructions)
    if instructions(i) == "addx"
        count(i) = 2;
    else
        count(i) = 1;
    end
end
count = [1; count];
total_cycles = cumsum(count);

all_cycles = (0:240)';
cum_sum_actual = repelem(cum_sum,count);
cum_sum_actual = [1; cum_sum_actual];
n = (20:40:240);
pos = zeros(numel(n),1);

for i = 1:numel(all_cycles)
    for j = 1:numel(pos)
        pos(j) = find(all_cycles == n(j))-1;
    end
end

ans1 = sum(cum_sum_actual(pos).*n');

cum_sum_actual1 = cum_sum_actual + 1;
cum_sum_actual2 = cum_sum_actual - 1;
ac2 = [0:39 0:39 0:39 0:39 0:39 0:39 0:1]';

lit_pixels = double(ac2 == cum_sum_actual | ac2 == cum_sum_actual1 | ac2 == cum_sum_actual2);
lit_pixels = lit_pixels(1:end-2);

screen = zeros(6,40);
n1 = 1:40:280;
for i = 1:6
    screen(i,:) = lit_pixels(n1(i):(n1(i+1))-1);
end
screen(screen == 1) = NaN;
