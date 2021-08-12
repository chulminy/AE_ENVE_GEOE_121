my_score = 94;
my_grade = 'A';

my_score_test = myfun_score2grade(my_score);
my_grade_test = myfun_grade2score(my_grade);

my_score_test
my_grade_test

function grade = myfun_score2grade(score)
% This function converts your score into a grade. 

if score>90
    grade = 'A';
elseif and(score>=80, score<90)
    grade = 'B';
elseif and(score>=70, score<80)
    grade = 'C';
else
    grade = 'D';
end

end

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

end