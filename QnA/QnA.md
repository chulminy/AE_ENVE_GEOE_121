# Question and Answer

**Last updated:** 2020-08-30

## Table of Contents
- [**Module 00. Preliminaries**](#module-00-preliminaries)
- [**Module 01. Basic MATLAB Programming**](#module-01-basic-matlab-programming) 
- [**Module 02. Vectors and Matrices**](#module-02-vectors-and-matrices)
- [**Module 03. Selection Statement**](#module-03-selection-statement) 
- [**Module 04. Loop Statement**](#module-04-loop-statement)
- [**Module 05. Built-in Functions**](#module-05-builtin-functions)
- [**Module 06. Operators**](#module-06-operators)
- [**Module 07. Function**](#module-07-function) 
- [**Module 08. Plotting**](#module-08-plotting)
- [**Module 09. Data Structure**](#module-09-data-structure) 
- [**Module 10. File I/O**](#module-10-file-io)
- [**Module 11. Text Manipulation**](#module-11-text-manipulation) 
- [**Module 12. Symbolic Function**](#module-12-symbolic-function)

## Module 00. Preliminaries


### Using functions not covered in the quizzes
For the exam are we allowed to use built-in functions that we haven't been taught? For example, I learned the function ind2sub, would I be able to use that?

**Answer**:  You can use any MATLAB built-in function at your own risk unless otherwise noted. However, if you misuse or misapply built-in functions that have not been covered in lectures or tutorials, you will not get partial marks for using them. Please do not use a built-in functions that we have not covered in our course if you are unsure of its applications.


### Partial Marks
I am aware that TA's are going in after the fact to grade question. Does this mean that part marks may be awarded to certain answers that the grader did not deem as correct, or are they simply going in to make sure you haven't cheated pr bypassed the proper coding method?

**Answer**: Quiestions will be manually graded agian, and you will receive partial marks. 

## Module 01. Basic MATLAB Programming

### Brackets
I was wondering if there were any "easy" ways to remember when you should use () brackets vs when you should use [] brackets.  If there are any additional resources or tips that you can provide, that would be greatly appreciated!

**Answer**: The best way is to make your own note. You do not need to memorize its usage because you can simply revisit your note or lecture slides. Once you make a summary note, please solve tutorial problems using this note without looking at the solutions. I'm sure that you can't correct the answer although you study them. If you repeat this process, you will get used to their usage. Programming is not a math or science. You can think of learning sports. Once you know the principle of how to do it, you need to do practice and learn by trial and error.


### Rem Function and Type Casting
For rem Function, I started by dividing the variable by each integer, and I know that it wants a whole number as a solution, but I’m not sure how to ensure it’s a whole number and also how to convert that to a logical operator?

**Answer**: you want to use both the rem function and then typecast into a logical type. If you use the rem function first some of your variables may have a non-zero remainder and others may have a zero remainder. You can then typecast these variables into logical type which will get you to "false" for equally divisible variables (zero remainder will become false  in logical type) and "true" for non-equally divisible variables (non-zero remainder will become true in logical type). 
 
 
## Module 02. Vectors and Matrices

### Indexing 
I was wondering when modifying a vector, I am still confused as to why a vector cannot be read by an index that does not yet exist, but it can be extended by referring to elements that do not yet exist? 

**Answer**: Very tricky to answer this question.... "Why a vector cannot be read by an index that does not yet exist" This is because we can't read the thing that doesn't exist. But we can "point out" or "direct" a new location although it does not exist. (It cannot be read because it deos not exist, but we can create it by assigning something to that index).


### Matrix Indexing
Is it possible to explain with sentences what the code means for C3 and C4 ? I see that the output for C2-C4 is the same. 

m1 = [1 2 3; 4 5 6; 7 8 9]

c2 = m1(:,end);
c3 = m1(1:3,end);
c4 = m1(1:end,end);

**Answer**: C2, C3, and C4 are to explain how to access an entire column. 

C2  => m1(:, end)  ':' means accessing all values in the corresponding dimension
C3 => m1(1:3, end) 1:3 means accessing the values from the first to the third. Since the dimension of m1 is 3 x 3, 1:3 means accessing all values..
C4 => m1(1:end, end) 1:end mean accessing the values from the first to the end, which is the last location of the corresponding dimension. The last location is 3. Thus, 1:end here is the same as 1:3. 
As result, C1, C2, and C3 are the same!


### The "and" Operaor
I have a general question in terms of the and (&&) operator. Is it possible to include it more than once in a line of script?

**Answer**:Yes, I think it is possible because if you plug something like the following into MATLAB no errors appear.

a = 1;

b = -1;

c = 3;

d = 4;

x = (a>-1)&&(a<3)&& (a<4);


### The "zeros" Function
I was wondering if it was acceptable to write zeros(n,n) if you are writing a square matrix instead of zeros(n).  Additionally, for a 3D matrix, is there a way to code an nxnxn (zero) 3D matrix without writing zeros(n,n,n) (is there a short for like for the 2D matrix)? 

**Answer**: Personally, I like zeros(n,n)  rather than zeros(n). Either one is fine. 
No... As I say, I recommend using zeros(n,n). 
The reason why I mentioned "zeros(n)" is to clarify that it is not 1D matrix like 1xn or nx1. 


### The "Ones" Function
Is there another way to create a vector of all one number other than making a vector of all zeros with the proper dimensions and replacing the values with the ones you want?

**Answer**: The simplest way is to use "ones" built-in function. Then, do scalar ★ matrix opertaion.


### The "end" Operator
I am trying to pick alternate values from a vector. If there is a vector

values = [12  13  14  15  16  17];

a) why does this not work

index = 1:2:end

answer = values(index)

b) and why does it only work if i do

answer = values(1:2:end);

**Answer**:
a) end is to refer the last value at each dimension.
Thus, only when you use "end" inside the array, MATLAB knows the dimension of the corresponding array. 
Actually, the code doesn't reach to the line of "answer=values(index)" because the line of "index=1:2:end" has a syntax error like below. 
![image1](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/QnA/github1.png)

b) That's how the end works! If MATLAB see the "end " in the index section, it is considered as the last dimension of the corresponding dimension.


### Swapping Columns
If we have a 5x6 matrix and we were to swap first and second rows, I'm confused about why we can't use comma to indicate the rows like such:
matrix([1, 2], :) = matrix([2:-1:1], :)

**Answer**: "index(es)" to refer or read values in a matrix is a vector!!! When you make a row vector, you can make either [1 2 3 4] or [1, 2, 3, 4]
That's why in the left side, you do not have to use comma. 
Similarly, [2:-1:1] is a vector, right so it works. 


## Module 03. Selection Statement 


### Type Logical "1" and double"1"
when submitting this code, I originally wrote only_lower = 1 and only_lower = 0, yet matlab grader marked it incorrect. why does it only accept the code being written as logical(true) and logical(false)? 

**Answer**: 1 is a numeric value, not logical value.logical(1) or true is true. Thus, you don't need to do type conversion like the above.


###  
## Module 04. Loop Statement
## Module 05. Built-in Functions
## Module 06. Operators
## Module 07. Function 
## Module 08. Plotting
## Module 09. Data Structure 
## Module 10. File I/O
## Module 11. Text Manipulation 
## Module 12. Symbolic Function
