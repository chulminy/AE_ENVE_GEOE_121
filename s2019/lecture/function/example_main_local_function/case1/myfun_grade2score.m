function score_range = myfun_grade2score(grade)
% This function informs a score range of your grade. The output score_range
% is a 1 x 2 vector including the minimum and maximum scores that can be
% obtained given the grade. 

switch grade
    case 'A'
        score_range = [90 100];
    case 'B'
        score_range = [80 70];
    case 'C'
        score_range = [70 80];
    case 'D'
        score_range = [70 0];
    otherwise
        disp('We do not have a such grade.');
end

