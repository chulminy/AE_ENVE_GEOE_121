# Module 04: Loop Statement

## Table of Contents
- [**M04001. Word Finder Puzzle (★★★)**](#m04001-word-finder-puzzle)
- [**M04002. Bus Fare (★★★)**](#m04002-bus-fare)
- [**M04003. Value Replacement using a loop statement (★)**](#m04003-value-replacement-using-a-loop-statement)
- [**M04004. Element-wise Operations with a for-loop Statement (★)**](#m04004-element-wise-operations-with-a-for-loop-statment)
- [**M04005. Are these two variables the same? (★★)**](#m04004-are-these-two-variables-the-same?)
- [**M04006. Candy Store (★★)**](#m04006-candy-store)
- [**M04007. Built-in Functions: diag and strcmp (★)**](#m04007-built-in-functions:-diag-and-strcmp)
- [**M04008. Word Puzzle Solver - Multiple Words (★★★★)**](#m04008-word-puzzle-solver-multiple-words)
- [**M04009. Alphabet Character Manipulation (★★)**](#m04009-alphabet-character-manipulation)
- [**M04010. Repeating array elements (★★)**](#m04010-repeating-array-elements)
- [**M04011. Coop Salaries (★★★)**](#m04011-coop-salaries)
- [**M04012. (Advanced) Candy Store (★★★)**](#m04012-advanced-candy-store)
- [**M04013. Tensile Stress (★★)**](#m04013-tensile-stress)

## M04001. Word Finder Puzzle (★★★)

I went to a Mel's diner with my daughter and saw an interesting word finder puzzle. 
Here is a sample. 

![banana_puzzleimage](https://user-images.githubusercontent.com/64098253/90952552-90f9a900-e432-11ea-8b76-1ee9f845b8ab.png)

You are going to write a script to find a word from a puzzle. In general, this game is designed for searching multiple words.
However, in this problem, you can write a program to find only one word, 'banana'.
I wrote a code to create a word puzzle and insert 'banana' at a random column or row locations. 
This means, 'banana' is not located at a diagonal direction. 
You need to create a variable named 'word_loc' that contains a 6 x 2 matrix. 
Each row of 'word_loc' contains the location of each character of 'b','a', 'n', 'a', 'n', 'a' in order. 
Column 1 of 'word_loc' is the row location of the elements location, and column 2 of 'word_loc' is the column location of the elements location.
Note that you need to use a MATLAB editor to solve this problem using debugger. Please copy the template codes to your editor. 

**Solution**
Please watch this:[**https://youtu.be/tNU7PFt6RzU?t=2430**](https://youtu.be/tNU7PFt6RzU?t=2430)

## M04002. Bus Fare (★★★)

Write a script to estimate the bus fare for any one person. Adults aged 18 to 59 cost $5, seniors aged 60 and older cost $3, youth aged 5 years to 
17 years old cost $2 and children under 5 are free.
Also, here are the discount offers:
Having a student ID receive a 15% discount (for all days), 
Youth travelling on schooldays (Monday to Friday) recieve a 20% discount
Seniors travelling on Senior's Day (Tuesday's) recieve a 10% discount.
Note that the discount offer can combined. For example, a senior adult having a student id will receive 25% discount. 
Values for age are provided in ''ages', and the day is given as a number between 1 and 7 as 'days'. The first day of the week (day 1) is a Monday. 
'ids' is 1 if the passenger has a valid student ID, and 0 otherwise. 
'bus_data' contains all these three variables and you need to use 'bus_data' to solve this problem. 
The fare for each passessenger in 'bus_data' should be contined in 'fare_vals'.  Each fare in 'fare_vals' will be evaluated in the test in the MATLAB Grader.

**Solution**
Please watch this:[**https://youtu.be/tNU7PFt6RzU?t=1343**](https://youtu.be/tNU7PFt6RzU?t=1343)

## M04003. Value Replacement using a loop statement (★)

Please write a script to do the following operation using a loop statement.
(a) A column vector named 'vec1' is given: 

```matlab
vec1 = randi(100,50,1);
```
If the values in ‘vec1' are larger than 0 and less than 50, replace the values with 10. Otherwise, replace them with 5. 

(b) A matrix named 'mat1' is given: 

```matlab
mat1 = randi(100,50,10);
```
 If the values in ‘mat1' are larger than 0 and less than 50, replace the values with 10. Otherwise, replace them with 5. 
 
**Solution**
Please watch this:[**https://youtu.be/d-jmA0pK97c?t=20**](https://youtu.be/d-jmA0pK97c?t=20)

## M04004. Element-wise Operations with a for-loop Statement (★)

Element-wise operations work by doing whatever operation is specified to each element in a matrix. This can also be done using a for loop.

```matlab
row1 = randi(100);
col1 = randi(100);
mat1 = randi(20,row1,col1);
```
(a) Create a new matrix 'mat2' with every element in 'mat1' multiplied by 3
(b) Create a new matrix 'mat3' with every element in 'mat1' having 6 added
(c) Create a new matrix 'mat4' which is element by element multiplication on elements of 'mat1' and 'mat2'
(d) Create a new matrix 'mat5' which is element by element addition of elements of 'mat1', 'mat2', 'mat3'. 

**Solution**
Please watch this:[**https://youtu.be/d-jmA0pK97c?t=2425**](https://youtu.be/d-jmA0pK97c?t=2425)


## M04005. Are these two variables the same? (★★)

You are going to write a code to check if the given two variables are identical or not. 
(a) Write a script if two numeric vectors ('nvec1' and 'nvec2') are identical using a for-loop (Do not use any buit-in function)
If they are the same, assign logical(1) to 'lg_a'. Otherwise assign logical(0). 
```matlab
numeric_mat = [1 2 3 4 5; 2 3 4 5 6];
nvec1 = numeric_mat(randi(2), :);
nvec2 = numeric_mat(randi(2), :);
```
(b) Write a script if two character vectors ('cvec1' and 'cvec2') are identical using a for-loop (Do not use any built-in function)
If they are the same, assign logical(1) to 'lg_b'. Otherwise assign logical(0). 
```matlab
char_mat = ['MATLAB'; 'Noreen'];
cvec1 = char_mat(randi(2), :);
cvec2 = char_mat(randi(2), :);
```
(c) Evaluate (a) and (b) using a built-in function called "isequal". 
https://www.mathworks.com/help/matlab/ref/isequal.html
Assign the test result to 'lg_cn' and 'lg_cc', respectively. 
For instance, you need to compute 'lg_cn' using 'isequal' and it is the same with the value in 'lg_a'/ 

**Solution**
```matlab
numeric_mat = [1 2 3 4 5; 2 3 4 5 6];
nvec1 = numeric_mat(randi(2), :);
nvec2 = numeric_mat(randi(2), :);

char_mat = ['MATLAB'; 'Noreen'];
cvec1 = char_mat(randi(2), :);
cvec2 = char_mat(randi(2), :);

%(a)
n_num = numel(nvec1);
lg_a = logical(1);
for ii=1:n_num
    if nvec1(ii) ~= nvec2(ii)
       lg_a = logical(0); 
    end
end

%(b)
n_char = numel(cvec1);
lg_b = logical(1);
for ii=1:n_num
    if cvec1(ii) ~= cvec2(ii)
       lg_b = logical(0); 
    end
end

%(c)
lg_cn = isequal(nvec1, nvec2);
lg_cc = isequal(cvec1, cvec2);
```

## M04006. Candy Store (★★)
Noreen owns a candy store, and she did a promotion on May 2. If customers applied for membership cards on that day, they would have a chance to win a prize. 
3000 poeple applied for a membership card.
The prize will be awarded to only three customers by order of application. The receivers are chosen based on their membership card number. 
The card number is 10 digits. To win the prize:
'3' appears at the third and fifth indexes (locations) of the card number. 
For example, the person whose card number is either '1235342456' or '1235342313' will receive the prize if people who apply for the card application prior 
to the person do not take three of prizes. 
The following numbers do not satisfy the above conditions: '1212312331', '1111312168', '1231095869'
A 3000 x 10 matrix named 'card_num_all' is randomly generated and each row has a card number.

```matlab
card_num_all = randi(10, 3000, 10)-1; % a 3000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 3); % index of receivers
```

Write a script to find the index of prize receivers and assign it value to 'priz_rs' in order, which is a 1 x 3 vector. 
In this problem, you must use a 'break' command so that the execuation is terminated once you find all three receievers. 
If you can't find three receivers (not feasible probabilistically), leave the element(s) as zero(s). 

**Solution**
Please watch this:[**https://youtu.be/tNU7PFt6RzU**](https://youtu.be/tNU7PFt6RzU)

## M04007. Built-in Functions: diag and strcmp (★)
In this problem, we will be recreating MATLAB built-in functions using for/while loops! You must use a loop statement without using the corresponding built-in functions. 
(a) diag(): A n x n matrix named 'mat1' is given. Please read values at a diagonal member and assign its value to a 1 x n row vector named 'vec_a'. 
For example, if 'mat1' is [1 2 3; 4 5 6; 7 8 9], 'vec_a' becomes [1 5 9]. 

(b) strcmp(a,b): This function is to compare two vectors to check to see if they're equal (very similar to the isequal function), and either a logical(0) or 
logical(1) is assigned if theyre different or the same. 'ch_vec1' and 'ch_vec2' are given and they are the same length. Please compare these two vectors to see if 
they are the same or not. Its result (logical value) is assigned to 'logi_b'. Note that you assume that you do not know the values in 'ch_vec1' and 'ch_vec2'. 

**Solution**
Please watch this:[**https://youtu.be/d-jmA0pK97c?t=860**](https://youtu.be/d-jmA0pK97c?t=860)

## M04008. Word Puzzle Solver - Multiple Words (★★★★)

In this problem, you will solve an advanced word puzzle problem, similar to tthe one in the tutorial. However, this time your script must be able to solve for
the locations of mutliple words! The words you will search for are given in a character array called 'words'. Similar to in Lab 05, the words are inserted either 
horizontally or vertically. The word will also not read backwards (down to up or right to left). 

```matlab
word = ['textbook'; 'backpack'; 'overhead'; 'maximize'; 'popinjay'];
```

Write a script that outputs 'word_loc', which is a 8x2x5 matrix. word_loc(:,:,ii) is a 8 x 2 matrix where the first and second columns contain the row and column 
locations of characters in a words(ii,:), respectively. 
For example, word_loc(1,2,2) indicates that the column location of 'b' in 'backpack'. Another example is word_loc (3,1, 4) indciates that the row location of 'x' in 'maximize'. 
The code for priniting the words that you found is in the learner template so you can check your answer. 

**Solution**

```matlab
words = ['textbook'; 'backpack'; 'overhead'; 'maximize'; 'popinjay'];
n_word = size(words, 1);
n_char = size(words, 2); % same # of characters in all words

word_db = double(words);

puzzle_size = 20;
puzzle = CreateWordPuzzle(puzzle_size, words);


% print the puzzle
fprintf('TEST PUZZLE \n \n'); 
disp(char(puzzle));
fprintf('\n');

% find a word location
word_loc = zeros(n_char, 2, n_word);
for ii = 1:n_word
    word_test = words(ii, :);
    
    for jj = 1:puzzle_size
        test_row = strfind(char(puzzle(jj, :)), word_test); % search rows
        test_col = strfind(char(puzzle(:, jj))', word_test); % search a column
        if ~isempty(test_row)
            word_loc(:,1,ii) = jj;
            word_loc(:,2,ii) = test_row:(test_row+n_char-1);
            break
        elseif ~isempty(test_col)
            word_loc(:,1,ii) = test_col:(test_col+n_char-1);
            word_loc(:,2,ii) = jj;
            break
        end
    end
end

% printing the words that you found
fprintf('The words that you found are: \n')
for ii=1:n_word
    char_found = puzzle(word_loc(:,1,ii) + (word_loc(:,2,ii)-1)*puzzle_size);    
    fprintf('%s \n', char(char_found'));
end


% Generating a puzzle
function puzzle = CreateWordPuzzle(puzzle_size, word_set)

puzzle = zeros(puzzle_size, puzzle_size);
word_char_seq = [];

% assign word set
n_word = size(word_set,1);
for ii=1:n_word
    word = char(word_set(ii,:));
    word_char_seq = [word_char_seq word];
    len_word = numel(word);
    while 1
        idx = randi(puzzle_size);
        if randi([0 1])
            % row vector
            row_vec = puzzle(idx,:);
            cs_row_vec = conv(~row_vec, ones(1, numel(word)),'valid');
            logi_cs_row = (cs_row_vec == numel(word));
            if any(logi_cs_row)
                loc = find(logi_cs_row);
                str_loc = loc(randperm(numel(loc),1));
                puzzle(idx,str_loc:(str_loc+len_word-1)) = word;
                break;
            end
        else
            % column vector
            col_vec = puzzle(:, idx);
            cs_col_vec = conv(~col_vec, ones(1, numel(word)),'valid');
            logi_cs_col = (cs_col_vec == numel(word));
            if any(logi_cs_col)
                loc = find(logi_cs_col);
                str_loc = loc(randperm(numel(loc),1));
                puzzle(str_loc:(str_loc+len_word-1), idx) = word';
                break;
            end
        end
    end
end

char_a = 97;
char_z = 122;
char_array = char_a:char_z;
non_word_char = char_array(~ismember(char_array, unique(word_char_seq)));

emty_puzzle = ~puzzle(:);
puzzle(emty_puzzle) = ...
    non_word_char(randi(numel(non_word_char), [sum(emty_puzzle), 1]))';

end
```

## M04009. Alphabet Character Manipulation (★★)

```matlab
n = randi(10);% a randomly generated number ranging from 1 to 10
char_vec = char(randi([60 122],1,n)); % a 1xn charater vector
vowels = 'aeiouAEIOU';
```
(a) Write a script to check if 'char_vec' contains only lower case letters? Assign the result to 'only_lower'.
(b) Write a script to check if 'char_vec' contains only alphabet? Assign the result to 'only_alp'.
(c) Write a scipt to check how many vowels are contained in 'char_vec'? Assign the result to 'num_v'.

**Solution**
```matlab
n = randi(10);% a randomly generated number ranging from 1 to 10
char_vec = char(randi([60 122],1,n)); % a 1xn charater vector
vowels = 'aeiouAEIOU'; % giveb code
% write your code here

%(a)
only_lower = true;
for ii=1:n
    test_char = char_vec(ii);
    
    if ~and('a' < test_char, test_char < 'z');
        only_lower = false;
        break;
    end
end

% option 1
% lower_list_db = 97:122;
% n_list = numel(lower_list_db);
% n_lower = 0;
% for ii = 1:n
%     test_char_db = char_vec(ii);
%     for jj = 1:n_list
%         test_lower_db = lower_list_db(jj);
%         if test_char_db == test_lower_db
%             n_lower = n_lower + 1;
%         end
%     end
% end
% only_lower = n == n_lower;



%(b)
only_alp = true;
for ii=1:n
    test_char = char_vec(ii);
    
    cond1 = and('A' < test_char, test_char < 'Z');
    cond2 = and('a' < test_char, test_char < 'z');
    
    if ~or(cond1, cond2)
        only_alp = false;
        break;
    end
end

% option 2
% alp_list_db = [65:90 97:122];
% n_list = numel(alp_list_db);
% n_alp = 0;
% for ii = 1:n
%     test_char_db = double(char_vec(ii));
%     for jj = 1:n_list
%         test_alp_db = alp_list_db(jj);
%         if test_char_db ==  test_alp_db
%             n_alp = n_alp + 1;
%         end
%     end
% end
% only_alp = n == n_alp;

%(c)
n_vow_list = numel(vowels);
num_v = 0;
for ii = 1:n
    test_char = char_vec(ii);
    for jj = 1:n_vow_list
        if test_char == vowels(jj)
            num_v = num_v + 1;
        end
    end
end
```

## M04010. Repeating array elements (★★)

For loops are very useful in understanding how to maniplate vectors and matricies on an element-by-element basis, however, MATLAB provides enough basic functionlity where for-loops are not nessesary to get the same results. 

Given a row vector Q, make vector H, where the length of Q is tripled and a copy of each element is triple. For example if Q=[1 7 9], H=[1 1 1 7 7 7 9 9 9].
(a) Use a for-loop to generate H and assign it to 'H1'.
(b) Solve the same question but without using a loop statement. Genereate H and assign it to 'H2'. 
Hint: exploit vector concatenation and linear indexing ideas.

Note that there is a function called 'repelem' is designed for perfoming this operation. However, please do not use this function in this question.

**Solution**

```matlab
n=randi([1 10]);
Q=randi([1 25],1,n);

% (a)
H1 = [];
for ii=1:n
    H1 = [H1 ones(1,3)*Q(ii)]; % joining two of the same elements together
end

% (b)
H2 = [Q;Q;Q];
H2 = H2(1:3*n);
```

## M04011. Coop Salaries (★★★)

ByteDance always hires undergraduate university students for coops. There are four departments are hiring coop students, including the IT, HR, marketing, and 
finance departments. 
Thw company hires 20 coop students for summer 2020. Write a script to estimate the average hourly salary rate for any one undergraduate student hired in summer 2020. 
They pay the first-year and the second-year students $16 an hour, the third-year students $22 an hour, and the fourth-year students $24 an hour. 
Your salary would be raised if you meet the following conditions:
This company has close cooperation with the University of Waterloo. If you have UW student ID, your hourly salary can be raised by 10%.
If you can use MATLAB language and you are hired by the IT department, your hourly salary can be raised by 5%. 
If you are doing a minor in business, and you are either in the marketing department or the finance department, your salary can be raised by 8%.
Note that :
the conditions can be combined. For example, a UW student that knows the MATLAB language is hired in the IT department, this student's salary can be raised by 15%.
'ids' = 1 if the student has a UW student ID, and 0 otherwise.
'mat_language' = 1 if the student knows the 'MATLAB' language, and 0 otherwise.
 business’ = 1 if the student is doing a minor in business, and 0 otherwise.
Assign the estimated hourly salary of any 20 coop student to a variable called 'salary_vals', which is a 20 x 1 column vector.

**Solution**
```matlab
year = randi([1 4],20,1); % a 20 x 1 column vector representing which year the student is in
department  = randi([1 4], 20, 1); % a 20 x 1 column vector representing which department the student is in
% 'department'= 1: the IT department
% 'department'= 2: the HR department
% 'department'= 3: the marketing department
% 'department'= 4: finance department
ids = randi(2,20,1)-1; % a 20 x 1 column vector with values of either 0 or 1
mat_language = randi(2,20,1)-1; % a 20 x 1 column vector with values of either 0 or 1
business = randi(2,20,1)-1; % a 20 x 1 column vector with values of either 0 or 1
coop_data = [year department ids mat_language business];
clearvars year department ids mat_language business

n_coop = size(coop_data,1); % # of rows: See this syntax of the 'size' function
salary_vals = zeros(n_coop,1); % your output variable that include hourly salary for all coop students
for ii = 1:n_coop
    test_year = coop_data(ii,1);
    test_department = coop_data(ii,2);
    test_ids = coop_data(ii,3);
    test_mat_language = coop_data(ii,4);
    test_business = coop_data(ii,5);
    
    % write your script here
    % base slary
    if (test_year == 1) || (test_year == 2)
        base_sal = 16;
    elseif test_year == 3
        base_sal = 22;
    else
        base_sal = 24;
    end
    
    % determine if the student is in the marketing or the financa department
    is_mar_fin = (test_department == 3) || (test_department == 4);
    
    raise = 0;
    % raise: id
    if test_ids == 1
        raise = 0.1;
    end
    
    %raise: skills
    if (test_department == 1) && (test_mat_language == 1)
        raise = raise + 0.05;
    elseif (is_mar_fin) && (test_business == 1)
        raise = raise + 0.08;
    end
    
    salary_vals(ii) = base_sal*(1+raise);
    
end
```

## M04012. (Advanced) Candy Store (★★★)

Noreen owns a candy store, and she did a promotion on May 2. If customers applied for membership cards on that day, they would have a chance to win a prize. 10000 
poeple applied for a membership card.
The prize will be awarded to only ten customers by order of application. The receivers are chosen based on their membership card number. 
The card number is 10 digits. To win the prize, the card number satisfy the following conditions:
'6' appears at the second and fifth indexes (locations) of the card number. 
The first and last digits are not 3. 
The second last number is less than 5. 
For example, the person whose card number is either '1623612122' or '6623612149' will receive the prize if all 10 prizes were not taken by the other people registered
before this person.
A 10000 x 10 matrix named 'card_num_all' is randomly generated and each row has a card number. 
```matlab
card_num_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 10); % index of receivers
```
Write a script to find the index of prize receivers and assign it value to 'prize_rs' in order, which is a 1 x 10 vector. 
In this problem, you must use a 'break' command so that the execuation is terminated once you find all ten receievers. 
If you can't find ten receivers (not feasible probabilistically), leave the element(s) as zero(s). 

**Solution**

```matlab
card_num_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 10); % index of receivers
% write your code here

num_id = 10000;

count_pz = 0;
for ii = 1:num_id
    test_id = card_num_all(ii,:);
    
    cond1 = and(test_id(2)==6 , test_id(5)==6);
    cond2 = and(test_id(1)~=3 , test_id(end)~=3);
    cond3 = test_id(end-1)<5;
    
    
    if cond1 && cond2 && cond3
        count_pz = count_pz + 1;
        priz_rs(count_pz) = ii;
    end
    
    if count_pz == 10;
        break
    end
end
```

## M04013. Tensile Stress (★★)

Please write a script that determines a tensile stress when tensile strain data and materials are given. 
You need to use a switch statement (Avoid using if-else statement). 
Tensile stress can be obtained from the product of strain and a tensile modulus of a material . 
A tensile modulus for each material is given as follows: 

![banana_puzzleimage](https://user-images.githubusercontent.com/64098253/90952552-90f9a900-e432-11ea-8b76-1ee9f845b8ab.png)
![image](https://user-images.githubusercontent.com/64098253/90953265-e2586700-e437-11ea-8eca-82b804d57dbe.png)

Assume that 100 strain data measurements are made from different materials each time. The data are created from the following code:

```matlab
num_data = 100; % # of strain data
num_material = 6; % # of material
material_char = ['c', 'p', 'w', 's', 'g', 'a'];
% 'c': Concrete, 'p': Coppper, 'w': Pine wood, 's': Steel, 'g': Gold, 'a': Aluminum
strain_data = randi(10000, num_data, 1); % 'num_dat' number of strain values are randomly generate
material_data = zeros(num_data,1);
for ii=1:num_data
   material_data(ii) = material_char(randi(num_material)); % material initials are stored.
end
tensile_stress = zeros(num_data,1); % output tensile stress. 
```
'material_data' contain characters that indicate the materials for given measurements. 
You will assign tensile stress for each measurement to 'tensile_stress'. 'tensile_stress' is a 100 x 1 column vector.
You do not need to consider units for the tensile modulus and strain. 
Note that tensile stress is tensile modulus times strain. 

**Solution**

```matlab
num_data = 100; % # of strain data
num_material = 6; % # of material
material_char = ['c', 'p', 'w', 's', 'g', 'a'];

% 'c': Concrete, 'p': Coppper, 'w': Pine wood, 's': Steel, 'g': Gold, 'a': Aluminum
strain_data = randi(10000, num_data, 1); % 'num_dat' number of strain values are randomly generate
material_data = zeros(num_data,1);
for ii=1:num_data
   material_data(ii) = material_char(randi(num_material)); % material initials are stored.
end
tensile_stress = zeros(num_data,1); % output tensile stress. 

% solution
for ii = 1:num_data
    material_test = material_data(ii);
    strain_test = strain_data(ii);
    switch material_test
        case 'c'
            stress_test = strain_test * 17;
        case 'p'
            stress_test = strain_test * 117;
        case 'w'
            stress_test = strain_test * 9;
        case 's'
            stress_test = strain_test * 180;
        case 'g'
            stress_test = strain_test * 74;
        case 'a'
            stress_test = strain_test * 40;
    end
    tensile_stress(ii) = stress_test;
end
%second option:
%material_data_char=char(material_data);
%modulus=tensile_stress;
%for i=1:num_data;
    %switch material_data_char(i)
        %case 'c'
            %modulus(i)=17;
        %case 'p'
            %modulus(i)=117;
        %case 'w'
            %modulus(i)=9;
        %case 's'
            %modulus(i)=180;
        %case 'g'
            %modulus(i)=74;
        %case 'a'
           %modulus(i)=40;
    %end
%end
%tensile_stress=modulus.*strain_data
```


