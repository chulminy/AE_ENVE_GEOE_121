# Module 03: Selection Statement

## Table of Contents
- [**M03001. Income Tax (★★)**](#m03001-income-tax)
- [**M03002. Number Comparison (★)**](#m03002-number-comparison)
- [**M03003. Charity Bazaar (Switch Statement) (★★)**](#m03003-charity-bazaar)
- [**M03004. Coop Salary (★★★)**](#m03004-coop-salary)

## M03001. Income Tax (★★)

This program is to evaluate your skills for using selection statement.
Please write your own script to solve following problems.

![tax_payers](https://user-images.githubusercontent.com/64098253/90953348-8f32e400-e438-11ea-9e5d-524419b4b1d6.jpeg)

https://www.forbes.com/sites/kellyphillipserb/2015/10/21/irs-announces-2016-tax-rates-standard-deductions-exemption-amounts-and-more/#3b74ce0b2cd0
The above figure shows the tax due by American indivual's in 2016.  Mike is a freelancer, so his income varys every year. You are going to write a script to compute the tax due for Mike's taxable income. 
Mike's taxable income for year 2016 is created from the following code:
income_tax = randi(700000, 1);
Please write a script to caculate Mike's Tax Due for the year 2016, and assign the value to 'tax_due'. All values are round off to the nearest integer before assinging the values. 'tax_due' is a scalar.

**Solution**
Please watch this:[**https://youtu.be/ySMWZkQTz-U?t=591**](https://youtu.be/ySMWZkQTz-U?t=591)

## M03002. Number Comparison (★)
```matlab
val1 = randi(100)-50; % generate a random value between -49 and 50
val2 = randi(100)-50; % generate a random value between -49 and 50 
```
Please create a variable named 'result1', 'result2', and 'result3'. 
You need to write a script to do this operation using if-statement. 
(a) If 'val1' is negative, assign 10 to 'result1'. Otherwise, assign 5 to 'result1'. 
(b) If 'val2' is less than -10, assign 10 to 'result2'. If the value is more than and equal to -10 and less than 10, assign 20 to 'result2'. Otherwise, assign 30 to 'result2'. 
(c) if 'val1' is larger than 'val2', assign 100 to 'result3'. Otherwise, assign 10 to 'result3'. 

**Solution**
Please watch this:[**https://youtu.be/ySMWZkQTz-U?t=10**](https://youtu.be/ySMWZkQTz-U?t=10)

## M03003. Charity Bazaar (Switch Statement) (★★)

The goal of this problem is to help you understand and learn the switch stament and its operations. You need to use a switch statement (avoid using if-statement). 
You and your co-workers are participating a charity Bazaar . The host gives you a hat filled with 6 names and a coin for you to flip. 
If you get a heads, you can buy the gift with 50% of the marked price. The following participants, along with their wishlist are:
Jack (Gift: 16$ Sketchbook)
Geoffrey (Gift: 20$ Lifting straps)
William (Gift: 18$ T-shirt)
Anna (Gift: 10$ Rubics cube)
Saad (Gift: 12$ Video game)
Peter (Gift: 30$ Water bottle)
For example, you draw Jack and get a heads from your coin flip, you need to pay $ 8 and bring the Sketchbook. Another example, you draw William and get a tails 
from the coin, you need to pay $18 to get a T-shirt. 
'chosen_name' is a random character vector that include participants name and 'coin' is a random logical value (True is a heads and False is a tails). 
Please write a script that computes your budget. 
Hint: Think about how to make a condition statement without using if-statement (see Module 03).

**Solution**
Please watch this:[**https://youtu.be/ySMWZkQTz-U?t=973**](https://youtu.be/ySMWZkQTz-U?t=973)

## M03004. Coop Salary (★★★)

This problems helps solving the Bus Fare problems in TUT04. There are two variables involved in this problem. 
ByteDance always hires undergraduate university students for coops. There are four departments are hiring coop students, including the IT, HR, marketing, and 
finance departments. 
Write a script to estimate the average hourly salary rate for any one undergraduate student hired. They pay the first-year and the second-year students $16 an hour,
the third-year students $22 an hour, and the fourth-year students $24 an hour. 
Your salary would be raised if you meet the following conditions:
This company has close cooperation with the University of Waterloo. If you have UW student ID, your hourly salary can be raised by 10%.
If you can use MATLAB language and you are hired by the IT department, your hourly salary can be raised by 5%. 
If you are doing a minor in business, and you are either in the marketing department or the finance department, your salary can be raised by 8%.
Note that the conditions can be combined. For example, a UW student that knows the MATLAB language is hired in the IT department, this student's salary can be raised by 15%.

```matlab
year = randi([1 4],1); % the number represents which year the student is in
department  = randi([1 4], 1); 
% 'department'= 1: the IT department
% 'department'= 2: the HR department
% 'department'= 3: the marketing department
% 'department'= 4: finance department
ids = randi(2)-1; % 'ids' = 1 if the student has a UW student ID, and 0 otherwise.
mat_language = randi(2)-1; % 'mat_language' = 1 if the student knows the 'MATLAB' language, and 0 otherwise.
business = randi(2)-1; % ‘business’ = 1 if the student is doing a minor in business, and 0 otherwise.
```
Assign the estimated hourly salary of any student to a variable called 'salary_hr'.

**Solution**
Please watch this:[**https://youtu.be/ySMWZkQTz-U?t=2172**](https://youtu.be/ySMWZkQTz-U?t=2172)
