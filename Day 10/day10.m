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

all_cycles = (0:240)';
cum_sum_actual = repelem(cum_sum,count);
cum_sum_actual = [1; cum_sum_actual];
n = (20:40:240);

ans1 = sum(cum_sum_actual(n).*n');

ac2 = [0:39 0:39 0:39 0:39 0:39 0:39 0:1]';

lit_pixels = double(ac2 == cum_sum_actual | ac2 == cum_sum_actual + 1 | ac2 == cum_sum_actual - 1);
lit_pixels = lit_pixels(1:end-2);

screen = zeros(6,40);
n1 = 1:40:280;
for i = 1:6
    screen(i,:) = lit_pixels(n1(i):(n1(i+1))-1);
end
disp(char(screen))
