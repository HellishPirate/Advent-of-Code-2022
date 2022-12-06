unicodeValues = double(char(readlines("day6input.txt")));

for i = 4:numel(unicodeValues)
    uniques = unique(unicodeValues(i-3:i),'stable');
    if numel(uniques) == 4
        break
    end
end
disp(i) % part 1

for j = 14:numel(unicodeValues)
    uniques = unique(unicodeValues(j-13:j),'stable');
    if numel(uniques) == 14
        break
    end
end
disp(j) % part 2
