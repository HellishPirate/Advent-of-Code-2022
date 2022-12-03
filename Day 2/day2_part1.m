clear variables
load day_2_input.mat
c1 = day2input(:,1);
c2 = day2input(:,2);

draw_rock = sum(c1 == "A" & c2 == "X")*3 + sum(c1 == "A" & c2 == "X");
draw_paper = sum(c1 == "B" & c2 == "Y")*3 + sum(c1 == "B" & c2 == "Y")*2;
draw_scissors = sum(c1 == "C" & c2 == "Z")*3 + sum(c1 == "C" & c2 == "Z")*3;
draw_points = draw_rock + draw_paper + draw_scissors;

win_rock = sum(c1 == "C" & c2 == "X")*6 + sum(c1 == "C" & c2 == "X");
win_paper = sum(c1 == "A" & c2 == "Y")*6 + sum(c1 == "A" & c2 == "Y")*2;
win_scissors = sum(c1 == "B" & c2 == "Z")*6 + sum(c1 == "B" & c2 == "Z")*3;
win_points = win_rock + win_paper + win_scissors;

lose_rock = sum(c1 == "B" & c2 == "X")*0 + sum(c1 == "B" & c2 == "X");
lose_paper = sum(c1 == "C" & c2 == "Y")*0 + sum(c1 == "C" & c2 == "Y")*2;
lose_scissors = sum(c1 == "A" & c2 == "Z")*0 + sum(c1 == "A" & c2 == "Z")*3;
lose_points = lose_rock + lose_paper + lose_scissors;

total_points = draw_points + win_points + lose_points;
