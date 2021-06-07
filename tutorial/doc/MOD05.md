# Module 5: Built-in Functions

## Table of Contents
- [**M05001. Rounding Error Analysis (★)**](#m05001-rounding-error-analysis)
- [**M05002. Baseball Stats (★★)**](#m05001-rounding-error-analysis)
- [**M05003. Built-In Functions (★)**](#m05003-built-in-functions)
- [**M05004. Find Second Maximum (★★★)**](#m05003-find-second-maximum)
- [**M05005. Course Grading (★★★)**](#m05005-course-grading)
- [**M05006. Baseball Stats 2 (★★)**](#m05006-baseball-stats-2)
- [**M05007. Word Finder Puzzle - Backward (★★★★)**](#m05007-word-finder-puzzle-backward)
- [**M05008. Equipment Purchasing (★★★)**](#m05008-equipment-purchasing)
- [**M05009. Matrix with forward and backward rows (★★)**](#m05009-matrix-with-forward-and-backward-rows)
- [**M05010. Making the Change (★★★)**](#m05010-making-the-change)
- [**M05011. Sorting by Distance (★★)**](#m05011-sorting-by-distance)
- [**M05012. Bulls and Cows (★)**](#m05012-bulls-and-cows)
- [**M05013. Simple Word Puzzle (★★★)**](#m05013-simple-word-puzzle)
- [**M05014. Candy Store (★★)**](#m05014-candy-store)
- [**M05015. Create Sequences (★)**](#m05015-create-sequences)
- [**M05016. Alphabet Character Manipulation (★★★)**](#m05016-alphabet-character-manipulation)
- [**M05017. Making the Change: Many Money Values (★★★)**](#m05017-making-the-change:-many-money-values)
- [**M05018. Making the Change: Bills Only (★★★)**](#m05018-making-the-change:-bills-only)
- [**M05019. Create Sequence (★)**](#m05019-create-sequence)
- [**M05020. Alphabet Character Manipulation (★★★)**](#m05020-alphabet-character-manipulation)
- [**M05021. Candy Store (★★)**](#m05022-candy-store)
- [**M05022. Simple Word Puzzle (★★★)**](#m05022-simple-word-puzzle)
- [**M05023. Bulls and Cows (★)**[(#m05023-bulls-and-cows)

## M05001. Rounding Error Analysis (★)

```matlab
mat1 = (rand(7,4)- 0.5)*200;
mat1 = round(mat1,4); % round values to the nearest 4 decimal digits
```

You need to write a script that creates a variable named:
(a) 'mat2', which is copied from 'mat1'. The first column of 'mat2' is rounded towards negative infinity. 'mat2' is a 7 x 4 matrix.
(b) 'mat3', which is copied from 'mat2'. The second column of 'mat3' is then rounded to the nearest integer toward zero. 'mat3' is a 7 x 4 matrix.
(c) 'mat4', which is copied from 'mat3'. The third column of 'mat4' is then rounded to positive infinity. 'mat4' is a 7 x 4 matrix.
(d) 'round_error', which contains the absolute value of the difference between elements in 'mat1' and 'mat4'. 'round_error' is a 7 x 4 matrix.
For example, 'mat1' and 'mat4' are [1.1 -2.1;-1.1 2.2] and [1 -2;-1 2], 'round_error' becomes [0.1 0.1;0.1 0.2].
(e) 'error_means', which determines the mean of each row of 'round_error'. 'error_means' is a 7 x 1 column vector.
(f) 'error_sum', which determines the sum of all values in 'round_error'. 'error_sum' is a scalar.
(g) 'error_max', which determines the maximum value in each row of 'round_error'. 'error_max' is a 7 x 1 column vector.
(h) 'error_min', which determines the minimum value in each column of 'round_error'. 'error_min' is a 1 x 4 row vector.

**Solution**
Please watch this:[**https://youtu.be/wqQB_Xti4CU?t=5**](https://youtu.be/wqQB_Xti4CU?t=5)

## M05002. Baseball Stats (★★)

![image](https://user-images.githubusercontent.com/64098253/90951228-ec259e80-e426-11ea-996e-0f40663289ee.png)

```matlab
stat_1B = randi([65 88],4,1);
stat_2B = randi([20 45],4,1);
stat_3B = randi([0 8],4,1);
stat_HR = randperm(100, 4)'; % there is no same Home Run number.
stat_SO = randi([60 95],4,1);

stats = [stat_1B stat_2B stat_3B stat_HR stat_SO];
stats = [sum(stats,2) stats]; % add AB in the first column

clearvars stat_1B stat_2B stat_3B stat_HR stat_SO
```
The matrix 'stats' gives the information shown above about four baseball players performance over the course of a season. The data is represented by a dash (-) in the table above. 
Each row corresponds to a different player, and each column corresponds to a different statistic about the players performance.
'stats' is a 4 x 6 matrix. You need to make variables and index 'stats' to answer the following questions. 

(a) A single, double, triple and home run all count as hits. Create a variable named 'hits_a', which calculates the amount of hits each player has from the data in 'stats'. 'hits_a' is a 4 x 1 column vector.
For example, if a row of 'stats' is [100 10 5 2 1 30], the corresponding row of 'hits_a' becomes 18. 
Please solve this problem using loop statements without using built-in functions. 

(b) You are going to solve the same problem of (a) using built-in functions without using loop statement 
The values should be assigned to 'hits_b' and it is a 4 x 1 column vector. 

(c) A batting average is that the amount of hits each player has divided by the total number of batting attempts (At Bats or AB). 
Create a 1 x 4 row vector named 'bat_avg' from the data in 'stats', which includes the batting average of each player.
Please do not use loop statements. 

(d) Create a variable 'hr_max' for the maximum number of home runs in 'stats'.
Please do not use loop statements. 

(e) Create a variable 'hr_leader' for the Player number who has the most home runs in the data 'stats'.
For example, if Player 2 has the most home runs, 'hr_leader' = 2
Please do not use loop statements. 

(f) You are going to solve the same problem of (d) and (e) without using built-in functions. The resulting values are assigned to 'hr_max_f' and 'hr_leader_f'. 
Please use a loop statements. 

**Solution**
Please watch this:[**https://youtu.be/wqQB_Xti4CU?t=440**](https://youtu.be/wqQB_Xti4CU?t=440)

## M05003. Built-In Functions (★)

```matlab
mat2 = randi([-100 100],4,5);
mat_new = randi([-100 100],20,20);
```
You need to write a script that creates a variable named:
(a) 'vec1', which is a 1 x 5 row vector and contains the maximum values in each column of 'mat2'.
(b) 'vec2', which is a 1 x 4 row vector and contains the minimum values in each row of 'mat2'.
(c) 'val1', which is a scalar variable and contain the maximum value of all values in 'mat2'.
(d) 'val2', which is a scalar variable and contains the row index where the minimum value of the first column of 'mat2' is located.
For example, the first column of 'mat2' is [1;2;3;0], 'val2' is 4.
(e) 'vec3', which is a 4 x 1 column vector and calculates the sum of all values in each rows of 'mat2'. 
For example, 'mat2' is [1 2; 3 4; 5 6], 'vec3' becomes [3;7;11]. 
(f) 'val3', which is a scalar variable and contains the sum of the first column of 'mat2'.
(g) 'val4', which is a scalar variable and contains the sum of all values in 'mat2'.
(h) 'val5', which is a scalar variable and contains the sum of all diagonal elements in 'mat_new'. 
For example, if 'mat_new' is [1 2 3; 4 5 6;7 8 9], 'val5' becomes 1 + 5 + 9 = 15. 
(i) 'vec4', which is a 1 x 5 row vector and contains the median of each column in 'mat2'.
(j) 'val6', which is a scalar variable and contains the mean of all values in 'mat2'.
(k) 'mat3', which is copied from 'mat2'. All columns are then sorted, with the highest value in the top row and lowest in the bottom row.
For example, if 'mat2' is [1 2 3; 4 5 6; 7 8 9], 'mat3' becomes [7 8 9;4 5 6; 1 2 3].
(l) 'mat4', which is copied from 'mat2'. The third row is then sorted from the lowest on the left to the highest on the right.
For example, if 'mat2' is [2 3 1; 6 5 4; 9 8 7], 'mat4' becomes  [2 3 1; 6 5 4; 7 8 9].

**Solution**
Please watch this:[**https://youtu.be/wqQB_Xti4CU?t=1330)

## M05004. Find Second Maximum (★★★)

```matlab
vec1 = randi([-20 20],1,100); % a 1x100 randomly generated vector with numbers raging from -20 to 20
```
Please write a script to find the second maximum element of 'vec1'. The second maximum element is assigned to the variable named 'max2'. 
For example, when 'vec1' is [1 3 10 2 10 9 3 9], 'max2' becomes 9 (Note that it is not 10). 
Hint: Use a sort function for this problem.

**Solution**
Please watch this:[**https://youtu.be/wqQB_Xti4CU?t=1890**](https://youtu.be/wqQB_Xti4CU?t=1890)

## M05005. Course Grading (★★★)

This program is to compute grades of students in a course.  Assume that there are 7 students in a class and they took 5 exams during the course. 
The weights of the exams that contribute the final grade are 10%, 15%, 20%, 25%, and 30% in order. 

```matlab
ex1 = randperm(61,7)+38+rand(1,7); % generate exam scores of 7 students for exam1 without overlap. 
ex2 = randperm(61,7)+38+rand(1,7); % generate exam scores of 7 students for exam2 without overlap. 
ex3 = randperm(61,7)+38+rand(1,7); % generate exam scores of 7 students for exam3 without overlap. 
ex4 = randperm(61,7)+38+rand(1,7); % generate exam scores of 7 students for exam4 without overlap. 
ex5 = randperm(61,7)+38+rand(1,7); % generate exam scores of 7 students for exam5 without overlap. 

score = [ex1;ex2;ex3;ex4;ex5]; 
clearvars ex1 ex2 ex3 ex4 ex5
```
A variable named 'score' is a 5 x 7 matrix and contains scores for each exam and each student. 
For instance, score(3,4) is a score of the third exam for student 4 and let's say that ID of this student is 4.  
Another example, score(2,1) is a score of the second exam for a student having ID 1. 
'score' is randomly generated and it ranges from 40 to 100. 
'score' is generated using 'randperm' so there is no identical score within each exam. 

Please write a script to answer the following question. 
(a) create a variable named 'st_score_a' that contains a student grade who scored the highest in the second exam.
(b) create a variable named 'st_id_b' that contains a student ID. This student scored the lowest in the third exam.
(c) create a variable named 'num_c' that contains the number of students who get a score more than 60 in the fifth exam. 
(d) create a variable named 'st_score_d' that contains a student score. This score is the closest to the average score of the fourth exam. 
For example, assume that scores for the fourth exam are 91, 41, 92, 71, 43, 100, and 44. The average becomes 68.86. Thus, 'st_score_d' is 71. 
You can assume that there is only one closest number.
(e) create a variable named 'weight_score_e' that contains a 7 x 1 vector and its elements are the final scores. 
The final score for each student can be computed by the weighted summation of all scores. For example, assume that a student got 40, 50, 60, 70, and 90 from the exam in order. 
The final score becomes 40*0.1 + 50*0.15 + 60*0.2 + 70*0.25 + 90*0.3 = 68. You will compute the final score for all students and their values are assigned to 'weight_score_e' in order. 
(f) create a variable named 'weight_modified_score_f' that contains a 7 x 1 vector and its elements are the modified final scores. 
In 'score', a score less than or equal to 50 is considered as 0 and a score more than or equal to 90 is 100. The final score is computed with the same way that you did in (e). 
For example, assume that a student got 40, 50, 60, 70, and 90 from the exam in order. The final score becomes 0*0.1 + 0*0.15 + 60*0.2 + 70*0.25 + 100*0.3 = 59.5.

**Solution**
Please watch this:[**https://youtu.be/cepQyvVi3CM?t=5**](https://youtu.be/cepQyvVi3CM?t=5)

## M05006. Baseball Stats 2 (★★)

![image](https://user-images.githubusercontent.com/64098253/90951228-ec259e80-e426-11ea-996e-0f40663289ee.png)

```matlab
stat_1B = randperm(200, 4)';
stat_2B = randperm(100, 4)';
stat_3B = randperm(30, 4)';
stat_HR = randperm(40, 4)';
stat_SO = randperm(100, 4)'; 
% there is no same stat between players;

stats = [stat_1B stat_2B stat_3B stat_HR stat_SO];
stats = [sum(stats,2) stats]; % add AB in the first column

clearvars stat_1B stat_2B stat_3B stat_HR stat_SO
```
The matrix 'stats' gives the information shown above about four baseball players performance over the course of a season. The data is represented by a 
dash (-) in the table above. 
Each row corresponds to a different player, and each column corresponds to a different statistic about the players performance. 'stats' is a 4 x 6 matrix. 
You need to use 'stats' to answer the following questions. 

(a) Create a variable 'so_stats', which is a 1 x 2 row vector. 
The first element is the minimum number of strikeouts in 'stats', and the second element is the index of the player with the fewest strikeouts in 'stats'. 
For example, if the fewest number of strikeouts is 64 and the player is Player 1, 'so_stats' = [64 1]

(b)  A single, double, triple and home run all count as hits. 
Create a vector 'hits_sorted', which sorts the total hits of each player in descending order from top to bottom. 'hits_sorted' is a 4 x 1 column vector.

(c) Create a matrix 'stats_hrsorted', which is to sort player's stats by having the players with the most home runs at the top, and the player with the fewest 
at the bottom.  'stats_hr_sorted' is a 4 x 6 matrix.
Hint: Please find 'sortrows' in MATLAB.

(d) Create a variable 'stats_max', which lists the maximum number of Singles, Doubles, Triples and Home Runs in the matrix 'stats'. 'stats_max' is a 1 x 4 row 
vector.

(e) Create a variable 'stats_leaders', which lists the players who lead in each category in question (d). 'stats_leaders' is a 1 x 4 row vector.

(f) Create a variable, 'total_bases'. which calculates the total bases each player has successfully reached. A single counts as 1, a Double counts as 2, a Triple 
counts as 3 and a Home Run counts as 4. 'total_bases' is a 4 x 1 column vector.


**Solution**

```matlab
stat_1B = randperm(200, 4)';
stat_2B = randperm(100, 4)';
stat_3B = randperm(30, 4)';
stat_HR = randperm(40, 4)';
stat_SO = randperm(100, 4)'; 
% there is no same stat between players;

stats = [stat_1B stat_2B stat_3B stat_HR stat_SO];
stats = [sum(stats,2) stats]; % add AB in the first column

clearvars stat_1B stat_2B stat_3B stat_HR stat_SO

% (a)
[strikeouts, strikeout_ind] = min(stats(:,6));
so_stats = [strikeouts strikeout_ind];

% (b)
hits = sum(stats(:,2:5), 2);
hits_sorted = sort(hits, 'descend');

% (c)
stats_hrsorted = sortrows(stats, 5, 'descend');

% (d)
stats_max = max(stats(:,2:5));

% (e)
[~, stats_leaders] = max(stats(:,2:5));

% (f)
bases_value = 1:4;
total_bases = stats(:,2:5) * bases_value';
```
## M05007. Word Finder Puzzle - Backward (★★★★)
I went to a Mel's diner with my daughter and saw an interesting word finder puzzle. 
Here is a sample. 

![banana_puzzleimage](https://user-images.githubusercontent.com/64098253/90951573-0ad96480-e42a-11ea-81d3-2c4f142a0c3a.png)

You are going to write a script to find a word from a puzzle. In general, this game is designed for searching multiple words.
However, in this problem, you can write a program to find only one word, 'banana'.
I wrote a code to create a word puzzle and insert 'banana' at a random column or row locations. 
This means, 'banana' is not located at a diagonal direction. 

Different from the previous problem in TUT04,  the word can be read either down to up or up to down, or either right to left or left to right. 

You need to create a variable named 'word_loc' that contains a 6 x 2 matrix. 
Each row of 'word_loc' contains the location of each character of 'b','a', 'n', 'a', 'n', 'a' in order. 
Column 1 of 'word_loc' is the row location of the elements location, and column 2 of 'word_loc' is the column location of the elements location.
Note that you need to use a MATLAB editor to solve this problem using debugger. Please copy the template codes to your editor. 

**Solution**

```matlab
word = 'banana';
n_word = numel(word);
word_db = double(word);

puzzle_size = 10;
puzzle = CreateWordPuzzle(puzzle_size, word);
disp('==Puzzle==');
disp(char(puzzle));

% find a word location
word_loc = zeros(numel(word),2);

% search columns
isRun = true;
for ii=1:puzzle_size
    col_vec = puzzle(:,ii);
    row_vec = puzzle(ii,:);
 
    for jj=1:(puzzle_size-n_word+1)
        test_loc = jj:(jj+n_word-1);
        
        test_word = col_vec(test_loc);
        if isequal(word_db, test_word')
            word_loc(:,2) = ii;
            word_loc(:,1) = test_loc;
        elseif isequal(fliplr(word_db),test_word')
            word_loc(:,2) = ii;
            word_loc(:,1) = fliplr(test_loc)';
        end
        
        test_word = row_vec(test_loc);
        if isequal(word_db, test_word)
            word_loc(:,1) = ii;
            word_loc(:,2) = test_loc;
        elseif isequal(fliplr(word_db),test_word)
            word_loc(:,1) = ii;
            word_loc(:,2) = fliplr(test_loc)';
        end
    end
end

% evaluate your answer
char_int = puzzle(word_loc(:,1) + (word_loc(:,2)-1)*puzzle_size);
fprintf('The word that you found is %s.\n',char(char_int'))

function puzzle = CreateWordPuzzle(puzzle_size, word)

puzzle = zeros(puzzle_size, puzzle_size);

% assign word set
n_word = numel(word);

is_forward = rand < 0.5;
word = is_forward*fliplr(word) + ~is_forward*word;

idx = randi(puzzle_size);
if randi([0 1])
    % cokumn vector
    str_idx = randi(puzzle_size-n_word+1);
    puzzle(str_idx:(str_idx+n_word-1),idx) = word';
else
    % row vector
    str_idx = randi(puzzle_size-n_word+1);
    puzzle(idx, str_idx:(str_idx+n_word-1),:) = word;
end

char_a = 97;
char_z = 122;
char_array = char_a:char_z;
non_word_char = char_array(~ismember(char_array, unique(word)));

emty_puzzle = ~puzzle(:);
puzzle(emty_puzzle) = ...
    non_word_char(randi(numel(non_word_char), [sum(emty_puzzle), 1]))';
end
```

## M05008. Equipment Purchasing (★★★) 

![image](https://user-images.githubusercontent.com/64098253/90951675-cdc1a200-e42a-11ea-8320-f2f43ada76d0.png)

```matlab
num_PG = randi([3 15],5,1);
num_GV = randi([2 6],5,1);
num_CM = randi([50 140],5,1);
num_B = randi([75 150], 5,1);
num_P = randi([0 4],5,1);
num_V = randi([0 3],5,1);
num_GS = randi([10 45],5,1);

ann_purchases = [num_PG num_GV num_CM num_B num_P num_V num_GS];
clearvars num_PG num_GV num_CM num_B num_P num_V num_GS

equip_costs = [15 200 5 5 95 175 3];
```
The matrix 'ann_purchases' gives how many of each type of equipment has been purchased each year over 5 years. 
Each row of 'ann_purchases' corresponds to a different year, and each column corresponds to a different piece of equipment. 
The costs of the equipment is provided in 'equip_costs', a 1 x 7 row vector. The first element of 'equip_costs' is the price of a 
Pressure Gauge, and the last element is the price of a Gyroscope Sensor.

Write a script that creates a variable named:
(a) 'min_cm', which contains the fewest number of Concrete Moulds purchased during five years.
(b) 'max_v', which contins the largest number of Venturi meter's purchased during five years.
(c) 'min_yr_b', which contains the year when the fewest Batteries were purchased during five years.
Note that if there are more than two minimum numbers, please assign the earliest year. 
For example, the fewest Batteries are purchased year 1 and year 2. You need to assign 1. 
(d) 'max_purchases_ind', which contains the year of when the highest number of every purchase. 
'max_purchases_ind' is a 1 x 7 row vector. If the maximum items purchased is the same in multiple years, return the lowest year number that has the maximum items purchased.
Note that if there are more than two maximum numbers in each item, please assign the earliest year in each item. 
(e) 'max_yr', which contains the year with the maximum total number of items purcahsed during five years. 
For example, 'ann_purchases' is [1 1 1 3; 1 1 2 4;2 2 2 3], 'max_purchase_yr' become 3 because year 1: 6, year 2: 8, year 3: 9. 
Note that if there are more than two maximum numbers, please assign the earliest year. 
(f) 'is_more_than_1200' which contains logical(1) if the total number of items purchased during five years are more than 1,200. Otherwise, 
assign logical(0) to 'is_more_than_1200'. 

We are going to compute the cost using the price for each equipmented provided in 'equip_costs'. 
(g) Create a variable named 'total_cost' which is a 5 x 1 column vector and determines the total cost of equipment in each year. Use the 
'equip_cost' vector and 'ann_purchases' array to calculate the total cost.
(h) Ever since year #3, all equipment prices have been increased by 10%. Compute 'total_cost_re' which is a 5 x 1 column vector and determines the revised total cost. 
(i) HST for all equipment is 13% except for Batteries. Batteries are tax free. Compute a scalar variable named 'total_hst', which is the total
HST for all 5 years (Note: total tax does not mean total price). Use the original 'equip_costs' array, and not the one used in question (h). 

**Solution**
```matlab
num_PG = randi([3 15],5,1);
num_GV = randi([2 6],5,1);
num_CM = randi([50 140],5,1);
num_B = randi([75 150], 5,1);
num_P = randi([0 4],5,1);
num_V = randi([0 3],5,1);
num_GS = randi([10 45],5,1);

ann_purchases = [num_PG num_GV num_CM num_B num_P num_V num_GS];
clearvars num_PG num_GV num_CM num_B num_P num_V num_GS

equip_costs = [15 200 5 5 95 175 3];
% (a)
min_cm = min(ann_purchases(:,3));

% (b)
max_v = max(ann_purchases(:,6));

% (c)
[~,min_yr_b] = min(ann_purchases(:,4));

% (d)
[~, max_purchases_ind] = max(ann_purchases);

% (e)
sum_items = sum(ann_purchases, 2);
[~, max_yr] = max(sum_items);

% (f)
total_items = sum(ann_purchases, 'all');
is_more_than_1200 =  total_items > 1200;

% (g)
total_cost = ann_purchases*equip_costs';

% (h)
total_cost_year345 = ann_purchases(3:5,:)*equip_costs'*1.1';

total_cost_re = [total_cost(1:2,:);total_cost_year345];

% (i)
hst_vec = equip_costs'*0.13;
hst_vec(4) = 0;
total_hst = sum(ann_purchases*hst_vec);

% (g) 'equip_cost' which is a 5 x 1 column vector and determines the total cost in each year if pressure gauges and gate valves costed 10% and 20% more respectively.
% (h) 'equip_cost2' which is a 5 x 1 column vector and determines the average annual cost of each year if concrete mould and batteries costed 50% and 30% more respectively.
% (i) 'equip_cost3' which is a 1 x 5 row vector of the years in which each equipment has reached its highest cost if all equipment costed 20% more in the third year.
% (j) 'total_tax_cost' which is a 5 x 1 column vector of the total income each year if tax was 13% on the first year and +2% every following year. 
(Assume that tax is not included in the ann_purchases array)
% (k) 'equip_cost_max' which is the column index that is involved with the item that has the highest total cost.

% copy_ann_purchases=ann_purchases;
% percent_inc=zeros(5,2);
% percent_inc(:,1)=1.1;
% percent_inc(:,2)=1.2;
% copy_ann_purchases(:,[1,2])=copy_ann_purchases(:,[1,2]).*percent_inc;
% equip_cost=sum(copy_ann_purchases,2);
% 
% % (h)
% copy_ann_purchases=ann_purchases;
% percent_inc=zeros(5,2);
% percent_inc(:,1)=1.5;
% percent_inc(:,2)=1.3;
% copy_ann_purchases(:,[3,4])=copy_ann_purchases(:,[3,4]).*percent_inc;
% equip_cost2=mean(copy_ann_purchases,2);
% 
% % (i)
% copy_ann_purchases=ann_purchases;
% copy_ann_purchases(3,:)=copy_ann_purchases(3,:)*1.2;
% [~,equip_cost3]=max(copy_ann_purchases);
% 
% % (j)
% copy_ann_purchases=ann_purchases;
% yearly_tax=(13:2:21)';
% copy_ann_purchases=copy_ann_purchases.*yearly_tax;
% total_tax_cost=sum(copy_ann_purchases,2);
% 
% % (k)
% [~,equip_cost_max]=max(sum(ann_purchases));
```
## M05009. Matrix with forward and backward rows (★★)
Given n, create a nxn matrix in which the integers from 1 to n^2 are placed backward and foward in order (reverse 'S' shape).
Here are the examples:

![sumting](https://user-images.githubusercontent.com/64098253/90951746-82f45a00-e42b-11ea-8d03-fe429d5e5d31.png)


(a) Create a na x na matrix named 'mat_a', which is generated according to the above pattern. 

(b) Create a nb x nb matrix named 'mat_b', which is generated according to the above pattern without using loop statement.

**Solution**

```matlab
na = randi([5 20]);
nb = randi([5 20]);

%(a)
mat_a = reshape(1:na*na, na, na);
mat_a = mat_a';

for ii=2:2:na
    mat_a(ii,:) = fliplr(mat_a(ii,:));
end

% optional 1
% mat_a = zeros(n, n);
% for ii=1:n
%     st = (ii-1)*n + 1;
%     ed = ii*n;
%     
%     if rem(ii,2) == 1
%        mat_a(ii,:) = st:ed; 
%     else
%        mat_a(ii,:) = ed:-1:st; 
%     end
% end

%(b)
mat_b = reshape(1:nb*nb, nb, nb)';
mat_b(2:2:nb,:) = fliplr(mat_b(2:2:nb,:));
```

## M05010. Making the Change (★★★)

![making the change](https://user-images.githubusercontent.com/64098253/90951782-d9619880-e42b-11ea-8c09-a9f57d8183f3.png)

You are making a script for a telling machine. If the money value is provided, your script computes the number of bills or coins. 
Always use bigger bills or coins first if it allows. The tellling machine has seven Canadian different bills/coins above. 
The output of your script is a 1 x 7 row vector named 'cad_change' that includes the number of bills/coins in the order above. 
For example, when 232 dollar is provide as an input dollar, 'cad_change' becomes [2 0 1 1 0 1 0].
Another example, when 68 dollar is provide as an input dollar, 'cad_change' becomes [0 1 0 1 1 1 1].
The input dollar named 'money' is randomly generated. 

**Solution**

```matlab
money = randi([30 500], 1);
cad_change = zeros(1,7);

cad_vec = [100 50 20 10 5 2 1];
rem_money = money;
for ii=1:7
    cad_change(ii) = fix(rem_money/cad_vec(ii));
    rem_money = rem_money - cad_change(ii) * cad_vec(ii);
end

fprintf('The input dollar is %d \n', money);
fprintf('The number of Canadian bills/coins are \n');
fprintf('100: %d, 50: %d, 20: %d, 10: %d, 5: %d, 2: %d, 1: %d \n',cad_change);
```

## M05011. Sorting by Distance (★★)

You need to sort a list of integer numbers according to the difference between the number and the target value.
The vector named 'vec1' is a 1 x 10 row vector and contains random integer values (without repetation). There are no values in 'vec1' that are the same as one another.  
The target value named 't' is given as 3.6. Since the elements in 'vec1' are not repeated, the difference between each element and the target value
(3.6) are different (which means that the difference in values are not repeated).
The values in 'vec1' are sorted in descending order in terms of the absolute value of the difference between t and the corresponding elements in 'vec1'. Please assign 
the sorted values to 'vec1_sort'.  
For instance, if vec1 = [ 1 2 5 7 9 10], then 'vec1_sort' becomes [10 9 7 1 2 5]. 
(Since the absolute distances between t and elements in 'vec1' is [2.6, 1.6, 1.4, 3.4, 5.4, 6.4]. Thus their differences would be sorted in vec 2.)

**Solution**

```matlab
vec1 = randperm(100, 10)-30; % pick 10 values from -29 to 70
t = 3.6;

dist = abs(vec1-t);
[~, id] = sort(dist, 'descend');
vec1_sort = vec1(id);
```

## M05012. Bulls and Cows (★)

UW Bulls and Cows is a mind game, developed by Noreen. In the game, a random, 3-digit even number (Possible digits are 0, 2, 4, 6, 8) is chosen, called a true number, and 
its values are compared to those of a test number. All rules are exactly the same as the original Bulls and Cows game that we studied in the lecture except the digits used 
and the number of digits evaluated. All three digits of the number are different. If any digit in the test number is the exact same value and in the exact same position as 
any digit in the true number, this is called a bull. If the digit is present in both the trial number and chosen number but is not in the same location, this is called a 
cow. Please note that both the test number and true number have every digit element separated into an array element. For example if the test number is 024, 'test_num' 
is actually [0,2,4]. A true number named as 'true_num' is given and a test number named as 'test_num' is also given. Please write a script to evaluate bulls and cows of 
a test number. The resulting bulls and cows are assigned to 'bulls' and 'cows'. 

**Solution**

```matlab
even_num = [0 2 4 6 8];
true_num = even_num(randperm(5,3)); % randomly generate a 1 x 3 vector in which elements are picked among even digits.
test_num = even_num(randperm(5,3)); % randomly generate a 1 x 3 vector in which elements are picked among even digits.

% bulls 
numb = 0; % number of Bull
for ii=1:3
    if true_num(ii) == test_num(ii)
        numb = numb + 1;
    end
end

bulls = numb;

% cows
numc = 0;
for ii=1:3
    for jj=1:3
        if true_num(ii) == test_num(jj)
            numc = numc + 1;
        end
    end
end

cows = numc-bulls;

fprintf('True number is [%d %d %d]. \n', true_num);
fprintf('Test number is [%d %d %d]. \n', test_num);
fprintf('Bulls and Cows that you found are %d and %d \n', bulls, cows);
```

## M05013. Simple Word Puzzle (★★★)

You are going to write a script to find a single word of 'banana' from a character vector named 'word_seq'. 
You need to create a 1 x 6 row vector named 'word_loc' that contains the location of each character in the word 'banana'.
 'banana' is placed from left to right and at random location (six consecutive locations) in 'word_seq', which is a 1 x 30 row vector. 

For example, 'word_seq' is  
![sequence](https://user-images.githubusercontent.com/64098253/90951934-7a048800-e42d-11ea-817c-650f8fa306a9.png)
Then, 'word_loc' becomes [3 4 5 6 7 8].
Note that there are only lowercase letters. 

**Solution**
```matlab
num_seq = 30; % number of characters in 'word_seq'
word_seq = randi([97 122], 1, num_seq); % generate random numeric vectors corresponding to lowercase characters

word_bana = double('banana'); % convert 'banana' to a numeric vector
num_bana = numel(word_bana);

loc_b = randi([1 num_seq-num_bana+1]); % random location of 'b'
word_seq(loc_b:loc_b+num_bana-1) = word_bana; % place 'banana' to 'word_seq'

word_seq = char(word_seq); % conver the numeric word_seq to the character vector

clearvars loc_b

% Your script to find 'word_loc'

word_loc = zeros(1, num_bana);
for ii=1:num_seq-num_bana+1
    test_loc = ii:ii+num_bana-1;
    if isequal(word_seq(test_loc), 'banana')
       word_loc = test_loc; 
    end
end

fprintf('The word sequence is ');
disp(word_seq);

fprintf('The word that you find is ');
disp(word_seq(word_loc));
```
## M05014. Candy Store (★★)

Noreen owns a candy store, and she did a promotion on July 2. If customers applied for membership cards on that day, they would have a chance to win a prize. 10000 poeple applied for a membership card.
The prize will be awarded to only Five customers by order of application. The receivers are chosen based on their membership card number. 
The card number is 10 digits. To win the prize, the card number satisfy the following conditions:

No '5' appears at all digits. 
The sum of all digits is less than 40. 
The largest digit is less than or equal to 8. 

Here are some examples:
The card numbers that satisfy the conditions are 
1234617812 
3212613212
6812143642

The card numbers that do not satisfy the conditions are 
1235617812 (not satisfying the first condition)
3212913212 (not satisfying the third condition)
6832743942 (not satisfying the second and third conditions)

A 10000 x 10 matrix named 'card_num_all' is randomly generated and each row represents a card number. 
```matlab
card_num_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 5); % index of receivers
```
Write a script to find the index of prize receivers and assign it value to 'priz_rs' in order, which is a 1 x 5 vector. 
In this problem, you must use a 'break' command so that the execuation is terminated once you find all five receievers. 
If you can't find five receivers (not probabilistically feasible), leave the element(s) as zero(s). 

**Solution**
```matlab
card_num_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 5); % index of receivers
% write your code here

num_id = 10000;

count_pz = 0;
for ii = 1:num_id
    test_id = card_num_all(ii,:);
    
    cond1 = true;
    for jj=1:10
       if test_id(jj) == 5
           cond1 = false;
           break;
       end
    end
    
    cond2 = sum(test_id) < 40;
    
    cond3 = max(test_id) <= 8;
    
    if cond1 && cond2 && cond3
        count_pz = count_pz + 1;
        priz_rs(count_pz) = ii;
    end
    
    if count_pz == 5
        break
    end
end
```

## M05015. Create Sequences (★) 

```matlab
n = randi([4 20], 1); % n is a randomly generated number ranging from 4 to 20
mat1 = randi([10 100], n);
mat2 = randi([10 100], n);
```
a) Create a mirrored row vector named 'vec1' where the second last element (n-1) is repeated n-2 times on both side of the middle element. 
 (Note that if n is 4 then vec1 = [1 2 3 3 4 3 3 2 1] or if n is 5 then vec1 = [1 2 3 4 4 4 5 4 4 4 3 2 1])
b) Create a 1 x n row vector named 'vec2' which has the sequence 2(3), 4(4), 6(5), 8(6)..., (2*n)*(n+2). 
c) Create a matrix named 'mat_c' which concatenates 'mat1' and 'mat2' in the third dimension.

**Solution**
```matlab
n = randi([4 20], 1); % n is a randomly generated number ranging from 4 to 20
mat1 = randi([10 100], n);
mat2 = randi([10 100], n);

%(a)
vec1=[1:(n-2),ones(1,n-2)*(n-1),n,ones(1,n-2)*(n-1),(n-2):-1:1];

%(b)
vec2=(2:2:2*n).*(3:(n+2));

%(c)
mat_c = mat1;
mat_c(:,:, 2) = mat2;
```

## M05016. Alphabet Character Manipulation (★★★)

Note: refer to the ASCII table when solving this question: https://www.rapidtables.com/code/text/ascii-table.html
The following variables are created in advance using 'randi' and will be used for solving questions. 
```matlab
charvec_ran = char(randi([97 122], 1,200)); % a 1 x 200 randomly generated character vector
vowels ='aeiou'; 
alpha_char = char(97:122); % 'abcdefghijklmnopqrstuvwxyz';
```
Note that 'charvec_ran', 'vowels' and 'alpha_char' only contain lowercase letters. 

(a) Write a script to check how many vowels are contained in 'charvec_ran' and assign the resulting count to 'num_vowels'. 

(b) Write a script to find the character that appears most frequently in 'charvec_ran' and assign the corresponding character to 'max_char'.
If the characters that appear the most are more than one, return the earlier character. (e.g., 'b' is earlier than 'c'). 

**Solution**
```matlab
charvec_ran = char(randi([97 122], 1,200)); % a 1 x 200 randomly generated character vector
vowels ='aeiou'; % vowel characters
alpha_char = char(97:122); % 'abcdefghijklmnopqrstuvwxyz';

n_vec = numel(charvec_ran);
n_vow = 5;

%(a)
num_vowels = 0;
for ii=1:n_vec
    for jj=1:n_vow
        if charvec_ran(ii)==vowels(jj)
            num_vowels = num_vowels + 1;
        end
    end
end
    
%(b)
count_alpha = zeros(1, 26);
n_alpha = numel(alpha_char);
for ii=1:n_vec
    for jj=1:n_alpha
        if charvec_ran(ii) == alpha_char(jj)
            count_alpha(jj) = count_alpha(jj) + 1;
        end
    end
end

[~, I] = max(count_alpha);

max_char = alpha_char(I);
```

## M05017. Making the Change: Many Money Values (★★★)

![making the change](https://user-images.githubusercontent.com/64098253/90952132-2e52de00-e42f-11ea-924f-4f641e9c0291.png)

You are making a script for a telling machine. If the money value is provided, your script computes the number of bills or coins. 
Always use bigger bills or coins first if it is possible. The tellling machine has seven Canadian different bills/coins above. 
For example, when 232 dollars is provided as an input amount, the bills/coins needed are $100x 2, $20 x 1, $10x1, $2 x 1.

20 different money values are provided as an input. A 1 x 20 input money value vector named 'money' is randomly generated. You must find how many bills 
and coins are needed for each money value.
The output of your script is a 1 x 7 matrix named 'cad_change' that includes the summed number of bills/coins for all 20 money values in the order: 
($100, $50, $20, $10, $5, $2, $1). 

For example, suppose that there are two money values are inputted, 121 and 68. 
The bills and coins required for each of the money values are:
$151:  $100 x 1, 50 x 1,  $1 x 1
$68:  $50 x 1, $10 x 1, $5 x 1, $2 x 1, $1 x 1. 
The bills required to make up the money values are then summed into each respective bill category in 'cad_change'.
Thus, 'cad_change' becomes [1 2 0 1 1 1 2].

WARNING: Do not sum up all the elements in 'money' and then solve for the bills needed to produce that result. You will automatically get the question wrong. 
This will be the result if you do so:
$151 + $68 = $219
$219: $100 x 2,  $10 x 1, $5 x 1, $2 x 2
And thus 'cad_change' becomes [2 0 0 1 1 2 0], which is a wrong result!!
Please note the difference between the two example vectors!

**Solution**
```matlab
n_money = 20;
money = randi([30 500], 1, n_money);
cad_change = zeros(1,7);

cad_vec = [100 50 20 10 5 2 1];

for ii=1:n_money
    test_money = money(ii);
    
    rem_money = test_money;
    test_change = zeros(1,7);
    for jj=1:7
        test_change(jj) = fix(rem_money/cad_vec(jj));
        rem_money = rem_money - test_change(jj) * cad_vec(jj);    
    end
    cad_change = cad_change + test_change;
end
```

## M05018. Making the Change: Bills Only (★★★)

![making the chnage no coins](https://user-images.githubusercontent.com/64098253/90952196-af11da00-e42f-11ea-9294-8b2f77c18dba.png)

You are making a script for a telling machine. If the money value is provided, your script computes the number of bills or coins that are equivalent to the input money value. 
Always use bigger bills or coins first if it is possible. For this specific tellling machine, it only provides 5 different types of Canadian dollars bills shown above. 
Thus, you need to round off the input money value in such a way that the money value is converted to the closest multiple of 5.  For example, 
$232 → $230
$538 → $540
$137 → $135
$32 → $30
Then, you need to compute the number of bills needed to reach the given money value. 
The output of your script is a 1 x 5 row vector named 'cad_change' that includes the number of bills in the order above. 
For example, when $232 dollars are provided as an input amount, the bills needed are:
2 x $100
0 x $50
1 x $20
1 x $10
0 x $5
Therefore, 'cad_change' becomes [2 0 1 1 0], which is an amount of $230. 
Another example, when $68 dollars are provided as an input amount, the bills needed are:
0 x $100
1 x $50
1 x $20
0 x $10
0 x $5 
And thus 'cad_change' becomes [0 1 1 0 0], which is an amount of $70. 
The input amount named 'money' is randomly generated. 

**Solution**

```matlab
money = randi([30 500], 1);

cad_change = zeros(1,7); % re-define for re-using the code

cad_vec = [100 50 20 10 5 2 1];
rem_money = money;
for ii=1:7
    cad_change(ii) = fix(rem_money/cad_vec(ii));
    rem_money = rem_money - cad_change(ii) * cad_vec(ii);
end

if cad_change(6)*2+cad_change(7) >=3
    cad_change(5) = cad_change(5) + 1;
end
cad_change(6:7) = [];

fprintf('The input dollar is %d \n', money);
fprintf('The number of Canadian bills/coins are \n');
fprintf('100: %d, 50: %d, 20: %d, 10: %d, 5: %d \n',cad_change);
```
## M05019. Create Sequence (★) 

```matlab
n = randi([5 20], 1); % n is a randomly generated number ranging from 5 to 20
mat1 = randi([10 100], n);
mat2 = randi([10 100], n);
```
a) Create a (3n-3) x 1 column mirrored vector named 'vec_a' in which n is repeated (n-1) times. n is the middle of the mirrored vector. 
 (Note that n is repeated for n-1 times in the middle. e.g., if n is 4 then vec4 = [1; 2; 3; 4; 4; 4; 3; 2; 1] or if n is 5 then vec4 = [1; 2; 3; 4; 5; 5; 5; 5; 4; 3; 2; 1])
b) Create a 1 x n row vector named 'vec_b', which has the sequence: n*3, (n-1)*4, (n-2)*5, (n-3)*6..., 2*(n+1), 1*(n+2).
c) Create a matrix named 'mat_c' which concatenates 'mat1' and 'mat2' in the third dimension.

**Solution**
```matlab
n = randi([5 20], 1); % n is a randomly generated number ranging from 5 to 20
mat1 = randi([10 100], n);
mat2 = randi([10 100], n);

%(a)
vec_a = [1:n-1 ones(1,n-1)*n n-1:-1:1]';

%(b)
vec_b = (n:-1:1).*(3:n+2);

%(c)
mat_c = mat1;
mat_c(:,:, 2) = mat2;
```

## M05020. Alphabet Character Manipulation (★★★)

Note: refer to the ASCII table when solving this question: https://www.rapidtables.com/code/text/ascii-table.html
The following variables are created in advance using 'randi' and will be used for solving questions. 

```matlab
char_vec_ran = char(randi([65 90], 150, 1)); % a 150 x 1 randomly generated character vector
vowel_vec ='AEIOU'; 
alp_vec = char(65:90); % 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
```

Note 'char_vec_ran', 'vowel_vec', and 'alp_vec' only contain uppercase letters. 

(a) Write a script to check how many vowels are contained in 'char_vec_ran' and assign the resulting count to 'num_v'. 

(b) Write a script to find the character that appears the most in 'char_vec_ran' and assign the corresponding character to 'max_char'.
If the characters that appear the most are more than one, return the earlier character. (e.g., 'B' is earlier than 'C'). 

**Solution**

```matlab
char_vec_ran = char(randi([65 90], 150, 1)); % a 150 x 1 randomly generated character vector
vowel_vec ='AEIOU'; 
alp_vec = char(65:90); % 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

n_vec = numel(char_vec_ran);
n_vow = 5;

%(a)
num_v = 0;
for ii=1:n_vec
    for jj=1:n_vow
        if char_vec_ran(ii)==vowel_vec(jj)
            num_v = num_v + 1;
        end
    end
end
    
%(b)
count_alpha = zeros(1, 26);
n_alpha = numel(alp_vec);
for ii=1:n_vec
    for jj=1:n_alpha
        if alp_vec(jj) == char_vec_ran(ii)
            count_alpha(jj) = count_alpha(jj) + 1;
        end
    end
end

[~, I] = max(count_alpha);

max_char = alp_vec(I);
```

## M05021. Candy Store (★★)

Noreen owns a candy store, and she did a promotion on July 2. If customers applied for membership cards on that day, they would have a chance to win a prize. 10000 poeple applied for a membership card.
The prize will be awarded to only Seven customers by order of application. The receivers are chosen based on their membership card number. 
The card number is 10 digits. To win the prize, the card number must satisfy the following conditions:
There is no '7' that appears at any digit. 
The sum of all digits is greater than 30. 
The smallest digit is greater than or equal to 2. 
Here are some examples:

The card numbers that satisfy these conditions are 
2234635832 
3232623282
6862943642

The card numbers that do not satisfy the conditions are 
1235617812 (not satifying the first and third conditions)
2222332223 (not satifying the second condition)
2232143142 (not satifying the second and third conditions)

A 10000 x 10 matrix named 'card_num_all' is randomly generated and each row represents a card number. 

```matlab
cardnum_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
prize_rs = zeros(1, 7); % index of receivers
```

Write a script to find the index of prize receivers and assign it value to 'prize_rs' in order, which is a 1 x 7 vector. 
In this problem, you must use a 'break' command so that the execution is terminated once you find all seven receivers. 
If you can't find seven receivers (not probabilistically feasible), leave the element(s) as zero(s). 

**Solution**

```matlab
cardnum_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
prize_rs = zeros(1, 7); % index of receivers
% write your code here

num_id = 10000;

count_pz = 0;
for ii = 1:num_id
    test_id = cardnum_all(ii,:);
    
    cond1 = true;
    for jj=1:10
       if test_id(jj) == 7
           cond1 = false;
           break;
       end
    end
    
    cond2 = sum(test_id) > 30;
    
    cond3 = min(test_id) >= 2;
    
    if cond1 && cond2 && cond3
        count_pz = count_pz + 1;
        prize_rs(count_pz) = ii;
    end
    
    if count_pz == 7
        break
    end
end
```        

## M05022. Simple Word Puzzle (★★★)

You are going to write a script to find a single word of 'milkshake' from a character vector named 'word_seq'. 
You need to create a  9 x 1 column vector named 'word_location' that contains the location of each character letter in the word 'milkshake'. 
Only one word ('milkshake') is be placed from top to bottom at a random location in 'word_seq', which is a 40 x 1 column vector. 
For example, if 'word_seq' is :

![vertical sequence banana](https://user-images.githubusercontent.com/64098253/90952420-5cd1b880-e431-11ea-8d92-abb827d34163.png)

Then, 'word_location' becomes [2; 3; 4; 5; 6; 7; 8; 9; 10].
Note that there are only lowercase letters. 

**Solution**

```matlab
num_seq = 40; % number of characters in 'word_seq'
word_seq = randi([97 122], num_seq, 1); % generate random numeric vectors corresponding to lowercase characters

word_milk = double('milkshake'); % convert 'milkshake' to a numeric vector
num_milk = numel(word_milk);

loc_b = randi([1 num_seq-num_milk+1]); % random location of 'm'
word_seq(loc_b:loc_b+num_milk-1) = word_milk; % place 'milkshake' to 'word_seq'

word_seq = char(word_seq); % conver the numeric word_seq to the character vector

clearvars loc_b

% Your script to find 'word_location'

word_location = zeros(num_milk, 1);
for ii=1:num_seq-num_milk+1
    test_loc = ii:ii+num_milk-1;
    if isequal(word_seq(test_loc)', 'milkshake')
       word_location = test_loc';
    end
end

fprintf('The word sequence is \n');
disp(word_seq'); % transpose the sequence for a priniting purpose!

fprintf('The word that you found is \n');
disp(word_seq(word_location)'); % transpose the sequence for a priniting purpose!
```    

## M05023. Bulls and Cows (★)

UW Bulls and Cows is a mind game, developed by Noreen. In the game, a random, 3-digit odd number is chosen (with possible digits of 1, 3, 5, 7, 9), called a true 
number, and its values are compared to those of a test number.All rules are exactly the same as the original Bulls and Cows game that we studied in the lecture 
except the digits used and the number of digits evaluated. All three digits of the number are different. If any digit in the test number is the exact same value and 
in the exact same position as any digit in the true number, this is called a bull. If the digit is present in both the trial number and chosen number but is not in the 
same location, this is called a cow. 
Please note that both the test number and true number have every digit element separated into an array element. For example if the test number is 173, 'test_num' is 
actually [1,7,3]. A true number named as 'true_num' is given and a test number named as 'test_num' is also given. Please write a script to evaluate bulls and cows of 
both of the test number. The resulting bulls and cows are assigned to 'bullz' and  'cowz'. 

**Solution**
```matlab
odd_num = [1 3 5 7 9];
true_num = odd_num(randperm(5,3)); % randomly generate a 1 x 3 vector in which elements are picked among odd digits.
test_num = odd_num(randperm(5,3)); % randomly generate a 1 x 3 vector in which elements are picked among odd digits.

% bulls 
numb = 0; % number of Bull
for ii=1:3
    if true_num(ii) == test_num(ii)
        numb = numb + 1;
    end
end

bullz = numb;

% cows
numc = 0;
for ii=1:3
    for jj=1:3
        if true_num(ii) == test_num(jj)
            numc = numc + 1;
        end
    end
end

cowz = numc-bullz;

fprintf('True number is [%d %d %d]. \n', true_num);
fprintf('test number is [%d %d %d]. \n', test_num);
fprintf('Bulls and Cows that you found are %d and %d \n', bullz, cowz);
```
