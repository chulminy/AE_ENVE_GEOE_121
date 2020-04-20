% Function
% Author: Chul Min Yeum
% Email: cmyeum@uwaterloo.ca
% Last updated: 2019-04-29

% Function with no output
clear; clc;

score = 90;
myfun_print_grade(score);

score = 85;
myfun_print_grade(score);

score = 75;
myfun_print_line()
myfun_print_grade(score);
myfun_print_line()

function myfun_print_grade(score)

if score>=90
    disp('Your grade is A.');
elseif and(score>=80, score<90)
    disp('Your grade is B.');
elseif and(score>=70, score<80)
    disp('Your grade is C.');
else
    disp('Your grade is D.');
end

end

function myfun_print_line()
disp('=======================================================');
end
