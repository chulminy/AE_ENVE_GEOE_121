# Quiz 2

## Table of Contents
- [**Summary**](#summary)
- [**Group 1**](#group-1)
- [**Group 2**](#group-2)

## Summary (will be updated)


## Group 1 
### Create Sequences 
```matlab
n = randi([4 20], 1); % n is a randomly generated number ranging from 4 to 20
mat1 = randi([10 100], n);
mat2 = randi([10 100], n);
```
a) Create a mirrored row vector named 'vec1' where the second last element (n-1) is repeated n-2 times on both side of the middle element. (Note that if n is 4 then vec1 = [1 2 3 3 4 3 3 2 1] or if n is 5 then vec1 = [1 2 3 4 4 4 5 4 4 4 3 2 1])

b) Create a 1 x n row vector named 'vec2' which has the sequence 2x3, 4x4, 6x5,8x6..., (2xn)x(n+2). 

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

### Candy Store 
Noreen owns a candy store, and she did a promotion on July 2. If customers applied for membership cards on that day, they would have a chance to win a prize. 10000 poeple applied for a membership card. The prize will be awarded to only Five customers by order of application. The receivers are chosen based on their membership card number. 

The card number is 10 digits. To win the prize, the card number satisfy the following conditions:
1. No '5' appears at all digitis. 
1. The sum of all digits is less than 40. 
1. The largest digit is less than or equal to 8. 

Here are some examples:

The card numbers that **satisfy the conditions **are 
- 1234617812 
- 3212613212
- 6812143642

The card numbers that **do not satisfy the conditions** are 
- 1235617812 (not satisfying the first condition)
- 3212913212 (not satisfying the third condition)
- 6832743942 (not satisfying the second and third conditions)

A 10000 x 10 matrix named 'card_num_all' is randomly generated and each row represents a card number. 
```matlab
card_num_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 5); % index of receivers
```

Write a script to find the index of prize receivers and assign it value to 'priz_rs' in order, which is a 1 x 5 vector. In this problem, you must use a 'break' command so that the execution is terminated once you find all five receivers. If you can't find five receivers (not probabilistic ally feasible), leave the element(s) as zero(s). 

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

### Bulls and Cows

UW Bulls and Cows is a mind game, developed by Noreen. In the game, a random, 3-digit even number (Possible digits are 0, 2, 4, 6, 8) is chosen, called a true number, and its values are compared to those of a test number. All rules are exactly the same as the original Bulls and Cows game that we studied in the lecture except the digits used and the number of digits evaluated. All three digits of the number are different. If any digit in the test number is the exact same value and in the exact same position as any digit in the true number, this is called a bull. If the digit is present in both the trial number and chosen number but is not in the same location, this is called a cow. 

Please note that both the test number and true number have every digit element separated into an array element. For example if the test number is 024, 'test_num' is actually [0,2,4]. A true number named as 'true_num' is given and a test number named as 'test_num' is also given. Please write a script to evaluate bulls and cows of a test number. The resulting bulls and cows are assigned to 'bulls' and 'cows'. 

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

### Alphabet Character Manipulation

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

### Making the Change: Bills Only 
<img src="bills_only.PNG" width="800">

You are making a script for a telling machine. If the money value is provided, your script computes the number of bills or coins that are equivalent to the input money value. Always use bigger bills or coins first if it is possible. For this specific tellling machine, it only provides 5 different types of Canadian dollars bills shown above. Thus, you need to round off the input money value in such a way that the money value is converted to the closest multiple of 5.  For example, 

$232 → $230
$538 → $540
$137 → $135
$32 → $30

Then, you need to compute the number of bills needed to reach the given money value. 

The output of your script is a 1 x 5 row vector named 'cad_change' that includes the number of bills in the order above. For example, when $232 dollars are provided as an input amount, the bills needed are:

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

cad_vec = [100 50 20 10 5];
rem_money = round(money/5)*5;
for ii=1:5
    cad_change(ii) = fix(rem_money/cad_vec(ii));
    rem_money = rem_money - cad_change(ii) * cad_vec(ii);
end

fprintf('The input dollar is %d \n', money);
fprintf('The number of Canadian bills/coins are \n');
fprintf('100: %d, 50: %d, 20: %d, 10: %d, 5: %d \n',cad_change);
```

### Simple Word Puzzle
You are going to write a script to find a single word of 'banana' from a character vector named 'word_seq'. You need to create a 1 x 6 row vector named 'word_loc' that contains the location of each character in the word 'banana'. 'banana' is placed from left to right and at random location (six consecutive locations) in 'word_seq', which is a 1 x 30 row vector. 

For example, 'word_seq' is  

<img src="vector_puzzle.png" width="500">
 
Then, 'word_loc' becomes [3 4 5 6 7 8]. Note that there are only lowercase letters. 


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

## Group 2 
### Create Sequence
```matlab
n = randi([5 20], 1); % n is a randomly generated number ranging from 5 to 20
mat1 = randi([10 100], n);
mat2 = randi([10 100], n);

```
a) Create a (3n-3) x 1 column mirrored vector named 'vec_a' in which n is repeated (n-1) times. n is the middle of the mirrored vector. 
 (Note that n is repeated for n-1 times in the middle. e.g., if n is 4 then vec4 = [1; 2; 3; 4; 4; 4; 3; 2; 1] or if n is 5 then vec4 = [1; 2; 3; 4; 5; 5; 5; 5; 4; 3; 2; 1])

b) Create a 1 x n row vector named 'vec_b', which has the sequence: nx3, (n-1)x4, (n-2)x5, (n-3)x6..., 2x(n+1), 1x(n+2).

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

### Candy Store

Noreen owns a candy store, and she did a promotion on July 2. If customers applied for membership cards on that day, they would have a chance to win a prize. 10000 poeple applied for a membership card. The prize will be awarded to only Seven customers by order of application. The receivers are chosen based on their membership card number. 

The card number is 10 digits. To win the prize, the card number must satisfy the following conditions:

1. There is no '7' that appears at any digit. 
1. The sum of all digits is greater than 30. 
1. The smallest digit is greater than or equal to 2. 
 
Here are some examples:

The card numbers that satisfy these conditions are 
- 2234635832 
- 3232623282
- 6862943642
 
The card numbers that do not satisfy the conditions are 
- 1235617812 (not satifying the first and third conditions)
- 2222332223 (not satifying the second condition)
- 2232143142 (not satifying the second and third conditions)

A 10000 x 10 matrix named 'card_num_all' is randomly generated and each row represents a card number. 

```matlab
cardnum_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
prize_rs = zeros(1, 7); % index of receivers
```

Write a script to find the index of prize receivers and assign it value to 'prize_rs' in order, which is a 1 x 7 vector. In this problem, you must use a 'break' command so that the execution is terminated once you find all seven receivers. If you can't find seven receivers (not probabilistically feasible), leave the element(s) as zero(s). 

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

### Bulls and Cows 
UW Bulls and Cows is a mind game, developed by Noreen. In the game, a random, 3-digit odd number is chosen (with possible digits of 1, 3, 5, 7, 9), called a true number, and its values are compared to those of a test number.All rules are exactly the same as the original Bulls and Cows game that we studied in the lecture except the digits used and the number of digits evaluated. All three digits of the number are different. If any digit in the test number is the exact same value and in the exact same position as any digit in the true number, this is called a bull. If the digit is present in both the trial number and chosen number but is not in the same location, this is called a cow. 

Please note that both the test number and true number have every digit element separated into an array element. For example if the test number is 173, 'test_num' is actually [1,7,3]. A true number named as 'true_num' is given and a test number named as 'test_num' is also given. Please write a script to evaluate bulls and cows of both of the test number. The resulting bulls and cows are assigned to 'bullz' and  'cowz'. 

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

### Alphabet Character Manipulation

The following variables are created in advance using 'randi' and will be used for solving questions. 


```matlab
char_vec_ran = char(randi([65 90], 150, 1)); % a 150 x 1 randomly generated character vector
vowel_vec ='AEIOU'; 
alp_vec = char(65:90); % 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
```

Note 'char_vec_ran', 'vowel_vec', and 'alp_vec' only contain uppercase letters. 

(a) Write a script to check how many vowels are contained in 'char_vec_ran' and assign the resulting count to 'num_v'. 

(b) Write a script to find the character that appears the most in 'char_vec_ran' and assign the corresponding character to 'max_char'. If the characters that appear the most are more than one, return the earlier character. (e.g., 'B' is earlier than 'C'). 


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

### Making the Change: Many Money Values
<img src="coin_paper_money.PNG" width="800">

You are making a script for a telling machine. If the money value is provided, your script computes the number of bills or coins. 
Always use bigger bills or coins first if it is possible. The tellling machine has seven Canadian different bills/coins above. 
For example, when 232 dollars is provided as an input amount, the bills/coins needed are $100x 2, $20 x 1, $10x1, $2 x 1.

20 different money values are provided as an input. A 1 x 20 input money value vector named 'money' is randomly generated. You must find how many bills and coins are needed for each money value. The output of your script is a 1 x 7 matrix named 'cad_change' that includes the summed number of bills/coins for all 20 money values in the order: ($100, $50, $20, $10, $5, $2, $1). 

For example, suppose that there are two money values are inputted, 121 and 68. The bills and coins required for each of the money values are:

$151:  $100 x 1, 50 x 1,  $1 x 1
$68:  $50 x 1, $10 x 1, $5 x 1, $2 x 1, $1 x 1. 

The bills required to make up the money values are then summed into each respective bill category in 'cad_change'. Thus, 'cad_change' becomes [1 2 0 1 1 1 2].

**WARNING**: Do not sum up all the elements in 'money' and then solve for the bills needed to produce that result. You will automatically get the question wrong. This will be the result if you do so:

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

### Simple Word Puzzle

You are going to write a script to find a single word of 'milkshake' from a character vector named 'word_seq'. You need to create a  9 x 1 column vector named 'word_location' that contains the location of each character letter in the word 'milkshake'. Only one word ('milkshake') is be placed from top to bottom at a random location in 'word_seq', which is a 40 x 1 column vector. Note that there are only lowercase letters. 


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
