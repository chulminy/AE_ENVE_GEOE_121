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

