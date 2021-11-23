# Homework and Tutorial Problems 

**Last updated:** 2021-08-14

## Problem List
- [P001-M02004: Assignment (=) and equality (==)](#P1)
- [P002-M02012: Concatenation of values with different types](#P2)
- [P003-M02026: Incompatible array size](#P3)
- [P004-M02031: Why deleting press1, 2, and 3](#P4)
- [P005-M03006: Switch statement](#P5)
- [P006-M03009: Concatenation and Linear Indexing](#P6)
- [P007-M04011: Why do we use a loop statement](#P7)
- [P008-M05007: How to solve a diagonal word puzzle?](#P8)
- [P009-M05028: Nested loop statement](#P9)
- [P010-M06017: Improving the script](#P10)
- [P011-M07011: What's lg_vec + '0'](#P11)
- [P012-M09004: Using the 'find' function](#P12)
- [P013-M11009: What does 48 means? ](#P13)
- [P014-M03001: The "and" Built-In Function](#P14)
- [P015-M11002: Error: "Conversion to cell from double is not possible"](#P15)
- [P016-M06010: How to compute max and min values?](#P16)
- [P017-M04008: 3D word_loc variable](#P17)

### P001-M02004: Assignment (=) and equality (==) <a name="P1"></a> 

**Question:** For part d) of this tutorial question, when I try removing the 10th element of vec1, I use vec1(10) == []. It then tells me this creates a "0x0 empty logical array". I was just wondering what this means. 

**Answer:** '==' is a relational operator that checks for equality and returns a logical value. In your code, you are trying to check if the 10th element of vec1 denoted by vec1(10) is equal to []. 

The assignment operator is '=' and the syntax for it is: variable = expression. 

### P002-M02012: Concatenation of values with different types <a name="P2"></a> 

**Question:** In question e, it asks for the character but combining numbers inside. I tried putting brackets to make it a vector, but it does not work. 
![](../img/QnA_P4.png)

**Answer:** I think you can keep things simple like using "end" instead of putting so many numbers. An array is a placeholder to store a set of values of the SAME TYPE! Your last line is trying to store values with different types (char and numeric). In this case, the numeric values are implicitly changed to corresponding character values. Regardless of its possibility, I'm not recommending such syntax. On a side note, here are some experiments to understand how the last line works: 

![](../img/QnA_P4_2.png)

### P003-M02026: Incompatible array size  <a name="P3"></a> 
**Question:** For part (a), the Matlab is kept saying that the arrays have incompatible sizes and I don't really get it.  

**Answer**: If you are trying to perform element-wise multiplication on two arrays, the arrays need to be the same size. If the two arrays you are trying to multiply are of different sizes, you will get the error message that the arrays have incompatible sizes. Hope this helps!  

### P004-M02031: Why deleting press1, 2, and 3 <a name="P4"></a> 

**Question:** I am confused that why the given code deleted the variables of press1 press2 &press3. And if I copied from the code again to make the variable, the values are not the original generations. How should I start the question?  

**Answer**:For this question, the code that is provided to you clears the values of 'press1' 'press2' and 'press3' (so we cannot use these variables to solve the question). This is because these three matrices are concatenated in the horizontal direction into a matrix called 'data_press' , you will need to solve this problem using 'data_press' rather than 'press1' 'press2' and 'press3'. For example, when you process data in Exel, you will process data like 'data_press', not individual press X. This example is to practice data processing or analysis of table data.

### P005-M03006: Switch statement  <a name="P5"></a> 

**Question:** I eventually solved M03006, however I was a bit confused at first. When using switch statements can "case" only be followed by a letter such as 'a', as we saw in both the lecture grade example and this question? 

Or can it be followed by any expression, such as "material_data = 'a'"? I'm just wondering as we haven't seen any examples that use that form. 

**Answer:**  The syntax of switch statements has to be as follows: 
```matlab

switch <switch expression> 

            case <case expression 1> 

                    action 1 

            case <case expression 2> 

                    action 2 

end 
```
You call the array "material_data" in the switch expression, and all the case expressions correspond to characters assigned to "material_data".  You only put expressions (an expression means there's no equal sign) in the case statement, therefore "material_data == 'a'" is incorrect syntax. Essentially, the equal sign is already implied in the switch statement. 

### P006-M03009: Concatenation and Linear Indexing <a name="P6"></a> 

**Question:**  I'm not sure how to approach this question. Should I be using a selection statement to solve or should I be referring to M02013-Creating Mirrored Matrices?  

**Answer:** This example gives you an idea:

![](../img/QnA_P6.png) 

### P007-M04011: Why do we use a loop statement <a name="P7"></a> 

**Question:** Hi! Can someone please explain a bit more what this part of the code does? Why do we include the number nest to the ii? The 1 or the 2 when it says (ii,1) or (ii,2). 

![](../img/QnA_P7.png) 

**Answer:** A short answer is that coop_data includes information of 20 coop students. We need to design a loop statement to read the record for each student to test his or her salary. 

### P008-M05007: How to solve a diagonal word puzzle? <a name="P8"></a> 

**Question:** I was wondering how the code would look for tutorial if there was a possibility of finding the word banana diagonally. 

**Answer:** You can design the solution using a loop statement but I use 'diag' function. Here is how diag function work:

```matlab

>> alpha_low = 'a':'z'; 
>> puzzle = alpha_low(randi(23, 6,6)) 

% puzzle = 6×6 char array 

'fjffbl' 
'dejcgn' 
'fungsf' 
'kwghak' 
'hknjvw' 
'vcqlqm' 

>> diag(puzzle, 0)' 

ans = 

'fenhvm' 

>> diag(puzzle, 1)' 

ans = 

'jjgaw' 

>> diag(puzzle, -1)' 

ans = 

'dugjq' 

>> diag(puzzle, 2)' 

ans = 

'fcsk' 

>> diag(puzzle, 5)' 

ans = 

'l' 

>> diag(puzzle, -5)' 

ans = 

'v' 

end 
``` 

You are going to access characters in diagonal elements using this function. Then, you can solve it in the same way. 

### P009-M05028: Nested loop statement <a name="P9"></a> 

**Question:** Hello! I'm struggling to find a way to identify repeated subsets in this question.  I've got a script that does the basic principle of the question and addresses the "no 5+5" rule, but I can't come up with a way to identify situations when I've got a repeated subset and exclude those from the loop.  Is there an easy way to do that? Or to remove repeated elements from the vector before running it thru a loop?  
![](../img/QnA_P8.png)  

**Answer:** How about changing the loop range? then, you don't need to have the second condition statement. 
```matlab

for ii=1:n 

     for jj=ii+1:n 

          DO SOMETHING 

    end 

end 
```
Also, in_vec is generated from randperm so there is no overlapped value. If there is repeating element, how about this?
  
```matlab

if and((in_vec(ii) + in_vec(jj) == sum_val),  (in_vec(ii) ~= in_vec(jj)))  

end 
``` 

### P010-M06017: Improving the script <a name="P10"></a> 

**Question:**  My solution method was very inefficient. The method I used was the following code, but I had to do this for each column:

![](../img/QnA_P10.jpg) 

I'm just wondering if you could give me advice on how to make the code more efficient or point me in the direction of an example of with a similar solution method. 

**Answer:** This is a very good solution. Your solution is the same as my solution. You did it rightly and this is what I expect. I think you should repeat it in each column. There is no more shortcut to do it without loop statement at my end.

### P011-M07011: What's lg_vec + '0' <a name="P11"></a> 

**Question:** Why did you add lg_vec + '0' to the char in the last line? 

**Answer:** The goal is to make a logical vector to a character (numeric) vector. 

```matlab
lg_vec = [1 1 1 1 0 1]; 
How to make them ['1', '1' '1' '1' '0' '1'] ? 
```

If you add '0' to lg_vec,  '0' becomes an equivalent numeric value, which is 48. lg_vec + 48 becomes [49 49 49 49 48 49]. Then, char([49 49 49 49 48 49]) becomes ['1', '1' '1' '1' '0' '1']. I know this is very tricky. You can just consider it as a simple trick to convert a logical vector to a character numeric vector, but to do so you have to convert it to a numeric vector first.  

### P012-M09004: Using the 'find' function <a name="P12"></a> 

**Question:** After referring to M07031, I am a bit confused on the code. May you please explain what the highlighted part of the code is doing?

![](../img/QnA_P12_1.png) 

**Answer:** The function needs the high number as an output. 'card_sum_new' is a vector that contains numeric values. If the value is three, that's number (column location) is considered as three of kinds. find(card_sum==3) gives you the card numbers of three of kinds. The problem is ACE (1) is the highest number so we need to consider it. Thus, we make card_sum_new = [card_sum card_sum(1)]; 

When we do 'card_sum_new == 3',  our goal is to find the last location of 1 because that's the highest number.  

high_num = find(card_sum_new ==3, 1, 'last')  

This gives us the last location of 1. 

Here is the sample usage of the above find syntax: 

![](../img/QnA_P12_2.png)

### P013-M11009: What does 48 means? <a name="P13"></a> 

**Question:**  I've attached my working code for this question below. I was able to figure out that the condition for the if statement had to be "double(char_vec(ii)) - 48 > 5", and I'm a little confused about why I needed to subtract 48. Could someone clarify why this is necessary?
```matlab

num_count = 0; 

for ii = 1:n 

    if double(char_vec(ii)) - 48 > 5 

        num_count = num_count + 1; 

    end 

end 
```

**Answer:** The given input is a character vector, not a numeric value. Thus, to compare the digit in a character vector with 5, you need to convert 'char_vec' to a set of numeric digit. However, if you run double('0'), it's not 0 because the equivalent numeric value of a '0' character is 48. And the equivalent numeric values of digits are continuous, increased by 1. Thus, for example, if you subtract 48 from char('1'), it gives you 1. 

The other numbers are similar; 
* char('2')-48 gives you 2.  
* char('3')-48 gives you 3. 

![](../img/QnA_P13.png)


### P014-M03001: The "and" Built-In Function <a name="P14"></a> 

**Question:** For the Module 3 "income tax" practice, the professor's answer included a elseif "and" and then tested the range of the income tax. I'm not sure if this was explained in an earlier chapter and I forgot or if it is new, but could someone explain to me when you would write and when testing range and why we use it?

**Answer:** The "and(a,b)" function is the exact same as "&" or "&&". The function is mainly used ensuring that 2 conditions are present. For example, if we want to check to see if a number is in between a range, we use the "and(a,b)" function where a  is the first condition that defines the lower end of a range and b is the second condition that defines the upper end of a range. 

The way used the "and" function in his example, he used it to check if 2 specific conditions were present in order to issues a tax due. The first condition was to check to see if the money was greater than or equal to the lower end of the taxable income range, while the second condition was checking to see if the taxable income was less than or equal to the higher end of the taxable range. Therefore by using the "and" function he is able to define a range to check and see if the income received is within a certain taxable range.

### P015-M11002: Error: "Conversion to cell from double is not possible <a name="P15"></a> 

**Question:** For the error "conversion from cell to double is not possible" what would I have to do to fix this?

![16](../img/16.png)

**Answer**: Good question. 

word_loc(kk) is to refer to the "cell" element, not the value space. 
Thus, you need to assign a cell, not the value. 

```matlab
word_loc{kk} = test_loc;
```
OR 

```matlab
word_loc(kk) = {test_loc};
```
Note that Parentheses () are used to index into an array whereas curly brackets {} are used to index to a specific cell array element by enclosing all indices in them. 

### P016-M06010: How to compute max and min values?<a name="P16"></a> 

**Question:** For the COOP Decisions question, b), where it asked for best employer average-it required either the maximum or the minimum value (depending on the variable) of a column.I initially wrote varindex = find(max(coop_factors ( : , x))), where varindex is the index of the desired value (max or min of each column), and x is column that it is searching in. I expected max(coop_factors ( : , x)) to give the max value of each column, and find(...) would then provide the index (row number) of that value- this didn't end up working, and instead, it just returned a value of 1, regardless of the actual desired data. I initially thought this was because the find function was working with 2 dimensions, and my query was only limited to 1 dimension, however, [val, index] = max (coop_factors ( :, x ) ) worked perfectly fine, returning just the row number index (as desired)- what am I missing? 

**Answer**: max(coop_factors(:,x)) gives your a single maximum number. Thus, you will always get 1 because the first value is the first and last non-zero value. 

I guess you are trying to do like

```matlab
varindex = find(coop_factors == max(coop_factors(:,x));
```
However, as you already mentioned, 
```matlab
[val, index] = max(coop_factors(:,x))
```
does the same operation so there is no reason to use find function.

Regarding the code above, if you are referring the row, you need to have a loop structure. 

Instead, you can use the following script to vectorized your code:
```matlab
[val, index] = max(coop_factors);
```
### P017-04008: 3D word_loc variable <a name="P17"></a> 

**Question:** I don't understand how this is possible, I thought the order in brackets was (row, column, layer), but in the description it says: "word_loc(1,2,2) indicated the column location of 'b' in 'backpack'. Another example is word_loc(3,1,4) indicates the row location of 'x' in 'maximize'. From reading the location in the brackets I would think it was saying 'b' in backpack was in the 1st row, 2nd column, and 2nd layer, which is untrue because it is actually (2,1,1).

I also don't understand why this matrix has 5 layers? It says "the script that outputs 'word_loc', which is a 8x2x5 matrix." what are the 5 layers for?

And also some clarification for what "word_loc(:,:,ii) is a 8x2 matrix where the 1st and 2nd columns contain the row and column locations of the characters in a words(ii,:), respectively" means. This is very confusing, I can't understand or picture what this means?

**Answer**: Please see my description and then you will get the idea. 
![image3](../img/Module_4.jpg)
