%% part 1
clear variables
day6input = readlines("day6input.txt");
unicodeValues = double(char(day6input));

for i = 4:numel(unicodeValues)
    uniques = unique(unicodeValues(i-3:i),'stable');
    if numel(uniques) == 4
        break
    end
end
%% part 2
clear variables
day6input = readlines("day6input.txt");
unicodeValues = double(char(day6input));

for i = 14:numel(unicodeValues)
    uniques = unique(unicodeValues(i-13:i),'stable');
    if numel(uniques) == 14
        break
    end
end