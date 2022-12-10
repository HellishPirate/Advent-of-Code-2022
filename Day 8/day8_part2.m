clear variables
day8input = readlines("day8input.txt").split("").double;
day8input = day8input(:,2:end-1); % input without NaNs

view_score = zeros(99);
for i = 1:99
    for j = 1:99
        logical1 = double(day8input(i,j) > day8input(i+1:end,j));
        down = find(logical1 == 0,1);
        if isempty(down) == 1
            down = length(day8input(i+1:end,j));
        end

        logical2 = double(day8input(i,j) > flip(day8input(1:i-1,j)));
        up = find(logical2 == 0,1);
        if isempty(up) == 1
            up = length(day8input(1:i-1,j));
        end

        logical3 = double(day8input(i,j) > day8input(i,j+1:end));
        right = find(logical3 == 0,1);
        if isempty(right) == 1
            right = length(day8input(i,j+1:end));
        end

        logical4 = double(day8input(i,j) > flip(day8input(i,1:j-1)));
        left = find(logical4 == 0,1);
        if isempty(left) == 1
            left = length(day8input(i,1:j-1));
        end

        product = down*up*right*left;
        view_score(i,j) = product;

    end
end