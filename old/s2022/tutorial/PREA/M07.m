% See PREA (M06)

% Question 1
% Create a function named 'Count90' that counts the number of students whose grade is more than or equal to 90. 
% function num_st = Count90(grade)
% An input named 'grade' is a 1 x 300 row vector containing student grades. 
% An output named 'num_st' is the number of students whose grades in 'grade' is more than or equal to 90. 
grade1 = randi([50 100], 1, 300); % a 1 x 300 row vector containing student grades
num_st1 = Count90(grade1);

% Question 2
% Create a function named 'EvenMat' that takes one input and one output.
% function mat_new = EvenMat(mat)
% An input named 'mat' is a matrix that contains integers. 
% You need to replace all even numbers in 'mat' to 100 and assign the resulting matrix to the output variable named 'mat_new'. 
mat1 = randi([50 100], 100, 100); % a 100 x 100 matrix 
mat_new1 = EvenMat(mat1);

mat2 = randi([50 100], 20, 20); % a 20 x 20 matrix 
mat_new2 = EvenMat(mat2);

% Question 3
% Create a function named 'Count80_90' to count the number of students whose grade is less than or equal to 90 and larger than 80. 
% function num_st = Count80_90(grade)
% An input named 'grade' is a row vector containing student grades (unknown size). 
% An output named 'num_st' is the number of students whose grades in 'grade' is less than or equal to 90 and larger than 80.
grade2 = randi([50 100], 1, 300); % a 1 x 300 row vector containing student grades
num_st2 = Count80_90(grade2);

grade3 = randi([50 100], 1, 500); % a 1 x 300 row vector containing student grades
num_st3 = Count80_90(grade3);

% Question 4 
% Create a function named 'Count_eE' to count the number of 'e' and 'E' in the input sequence. 
% function num_eE = Count_eE(seq)
% An input character vector is stored in 'seq'. A number of 'e' and 'E' in 'seq' are stored in an output variable named 'num_eE'. 

char_seq1 = 'Ae Cive Evne Geoe Eng';
num_eE1 = Count_eE(char_seq1);

char_seq2 = 'Matlab is a really fun and interesting!';
num_eE2 = Count_eE(char_seq2);

function num_st = Count90(grade)
% design your function

num_st = sum(grade>=90);

end

function mat_new = EvenMat(mat)
% design your function

lg_mat1 = rem(mat,2)==0;
mat(lg_mat1) = 100;
mat_new = mat;

end

function num_st = Count80_90(grade)
% design your function

lg_grade = and(grade<=90, grade>80);
num_st= sum(lg_grade);

end

function num_eE = Count_eE(seq)
% design your function

num_eE = sum(or(seq == 'E', seq == 'e'));

end
