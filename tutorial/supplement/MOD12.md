# Module 12: Symbolic Function

## Table of Contents
- [**M12001. Problem: Integration**](#m12001-problem-integration)
- [**M12002. Problem: Differentiation**](#m12002-problem-differentiation)
- [**M12003. Problem: Matrix Operations**](#m12003-problem-matrix-operations)
- [**M12004. Problem: Symbolic Function List**](#m12004-problem-symbolic-function-list)
- [**M12005. Problem: Symbolic Integration**](#m12005-problem-symbolic-integration)
- [**M12006. Problem: Symbolic Integration2**](#m12006-problem-symbolic-integration2)
- [**M12007. Problem: Symbolic Integration and Differentiation**](#m12007-problem-symbolic-integration-and-differentiation)
- [**M12008. Problem: Symbolic Matrix Operations**](#m12008-problem-symbolic-matrix-operations)

## M12001. Problem: Integration 

Write a script to create a variable named:
(a) 'int_val1', which contains the solution to the following indefinite integral.

![M12001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12001(1).png)

(b) 'int_val2', which contains the solution to the following as a symbolic variable.

![M12001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12001(2).png)

(c) 'int_val3', which contains the solution to part (b) as a double-type number.

**Solution**
```matlab
% (a)
syms x

num = log(x);
denom = sqrt(x);
f = num/denom;

int_val1 = int(f, x);

% (b)
int_val2 = int(f, x, 1, 3);

% (c)
int_val3 = double(int_val2);
```

## M12002. Problem: Differentiation

Write a script to create a variable named:
(a) 'diff_val1', which contains the value of the derivative shown below:

![M12002](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12002.png)

(b) 'diff_val2', which contains the value of the derivative shown in (a) when x = 5.

(c) 'diff_val3', which contains your answer from part (b) in expanded form.

(From MATH118 Tutorial 1)

**Solution**

```matlab
syms x t

f = csc(3*t^2+1);

int_val1 = int(f, t, x^3, exp(x));

diff_val1 = diff(int_val1, x);

diff_val2 = subs(diff_val1, x, 5);

diff_val3 = expand(diff_val2);
```


## M12003. Problem: Matrix Operations

Write a script that creates a variable named:
(a) 'det_val1', which creates a symbolic expression for the determinant of the matrix shown below, where a, b and c are any real numbers.

![M12003](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12003.png)

(b) 'det_val2', which is the value of the expression created in part (a) when a = 3, b = 6 and c = -2. 'det_val2' is a symbolic expression.
(c) 'det_va3', which contains the solution to part (b) as a double-type number. 

**Solution**

```matlab
syms a b c
% (a)
mat1 = [2 -5 7; a 3 9; -8 b c];
det_val1 = det(mat1);

% (b)
a = 3; b = 6; c = -2;
det_val2 = subs(det_val1);
whos det_val2

% (c)
det_val3 = double(det_val2);
whos det_val3
```


## M12004. Problem: Symbolic Function List

All function inputs and variables are symbolic. 
Create functions named:
(a) DerivativeSolver, which has three inputs and one output: 
The first input 'func' is a symbolic expression that the derivative will be taken from. 
The second input 'd_var' is the symbolic varaiable you are integrating with respect to. 
The third input 'sub_val' is a real number to be substituted into the resulting derivative. If no value is to be substituted in, the character vector 'expression' should be entered.
The output named 'deriv' is the derivative of 'func' with respect to 'd_var'. Then, substitute 'sub_val' to 'd_var' if 'sub_val' is a real number. If not, 'deriv' become a symbolic expression.
```matlab
function deriv = DerivativeSolver(func, d_var, sub_val)
```
For example, see the code below
```matlab
syms x
func = x^2;

deriv1 = DerivativeSolver(func, x, 'expression');
deriv2 = DerivativeSolver(func, x, 2);
```
If you run the above script, 'deriv1' becomes 2*x and 'deriv2' becomes 4.

(b) IntegralSolver, whas has three inputs and one output. 
The first input 'func' is the symbolic expression to be integrated. 
The second input 'd_var' is the symbolic variable that is being integrated with respect to.
The third input 'format' is whether the output should be showed in simplified form or expanded. This input will either be a character vector of 'simplified' or 'expanded'.
The output named 'integ' is the integral of 'func' with respect to 'd_val'. 
```matlab
function integ = IntegralSolver(func, d_val, format)
```
For example, see the code below
```matlab
syms x
func = 3*x^2 + 2*x + 3;

integ1 = IntegralSolver(func, x, 'simplified')
integ2 = IntegralSolver(func, x, 'expanded');
```
If you run the above script, 'integ1' becomes x*(x^2 + x + 3) and 'integ2' becomes x^3 + x^2 +3*x.

(c) DeterminantFinder, which outputs the determiant of a 2 x 2 matrix. You cannot use the det function for this question. If the dimensions of the inputted matrix are not 2 x 2, 'det_val' becomes 'Improper dimensions' as a 1 x 19 character vector. DeterminantFinder accepts a symbolic matrix 'mat' as an input, and outputs a symbolic expression for 'det_val' if 'mat' is a 2x2 matrix.
```matlab
function det_val = DeterminantFinder(mat)
```
For example, see the code below
```matlab
syms a11 a12 a21 a22
mat1 = [a11 a12; a21 a22];
vec1 = [a11 a12 a21 a22];

det_val1 = DeterminantFinder(mat1);
det_val2 = DeterminantFinder(vec1);
```
If you run the above script, 'det_val1' becomes a11*a22-a12*a21 and 'det_val2' becomes 'Improper dimensions'. 

**Solution**
```matlab
syms x v
test_func1 = log(x)*(x^3 - 5*sqrt(x));

test_func2 = sin(v)*exp(5*v^2)/7;

deriv_val1 = DerivativeSolver(test_func1, x, randi([2 20]));
deriv_val2 = DerivativeSolver(test_func2, v, 'expression');

int_val1 = IntegralSolver(test_func1, x, 'simplified');
int_val2 = IntegralSolver(test_func2, v, 'expanded');

det_val1 = DeterminantFinder([5 x; -9 v]);
det_val2 = DeterminantFinder([4 x; x 2]);
det_val3 = DeterminantFinder([4 x x 2]);

function deriv = DerivativeSolver(func, d_var, sub_val)

if isnumeric(sub_val)
    diff_func = diff(func, d_var);
    deriv = subs(diff_func, d_var, sub_val);
elseif string(sub_val) == "expression"
    deriv = diff(func, d_var);
else
    error('Incorrect value of sub_val');
end
end

function integ = IntegralSolver(func, d_val, format)

int_val = int(func, d_val);

if string(format) == "simplified"
    integ = simplify(int_val);
elseif string(format) == "expanded"
    integ = expand(int_val);
else
   error('Incorrect value of format');
end
end

function det_val = DeterminantFinder(mat)

if size(mat) ~= [2 2]
    det_val = 'Improper dimensions';
else
    det_val = mat(1,1)* mat(2,2) - mat(1,2)* mat(2,1);
end

end
```

## M12005. Problem: Symbolic Integration
Solve the following problem using symbolic math.
Write a script to create a variable named:

'int_val', which is the symbolic expression for the following indefinite integral:
![M12005](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12005.png)
(From MATH 118 PP#2)

**Solution**
```matlab
syms x
fx = x^3/(x^3-1);
int_val = int(fx, x);
```


## M12006. Problem: Symbolic Integration2
Please solve the following problem using symbolic math. Create a variable named:

(a) 'int_exp', which is a general expression for solving the integral below, where a and b are any real number. 'int_exp' is a symbolic variable.
![M12006](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12006.png)
(Derived from MATH 118 PP#2)

(b) 'int_val', which is 'int_exp' with a = 5 and b = -3. 'int_val' is a double-type number.

**Solution**
```matlab
syms a b x
num = sin(x)^a;
denom = cos(x)^b;
f2 = num/denom;

int_exp = int(f2, x, -pi, pi*3/2);


a = 5; b = -3;
int_val = double(subs(int_exp));
```

## M12007. Problem: Symbolic Integration and Differentiation
Please use symbolic math to solve the following problem. Create a variable named:

'diff_val', which is the symbolic value of the derivative shown below:

![M1200](https://github.com/chulminy/AE_ENVE_GEOE_121/tree/master/question_bank)

(From MATH 118 PP#1)

**Solution**
```matlab
syms x t

f1 = cos(exp(t))*tan(log(t));
int_val = int(f1, t, cos(x), 2*x);

diff_val = diff(int_val, x);
```


## M12008. Problem: Symbolic Matrix Operations
(a) 'val1', 'val2', 'val3' and 'val4' are produced symbolically from 'mata'.  Write a script that produces 'val1', 'val2', 'val3' and 'val4' using 'mata'. All matrices can be produced by using a combination of indexing and the det function. The symbolic variables and matrix 'mata' has been produced for you. 'val1', 'val2', 'val3' and 'val4' are all symbolic variables.

![M12008](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12008(1).png)
![M12008](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12008(2).png)

(b) Create a general expression 'exp1' to calculate the determinant of the matrix 'matb' shown below, where 'a', 'b' and 'c' are symbolic variables representing any real number.

![M12008](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M12008(3).png)

(c) Substitute the values 'a=5', b=2' and 'c=1' into the symbolic expression 'exp1'. Your answer should be saved as 'val5', which is a symbolic variable.

**Solution**
```matlab
% (a)
syms a11 a12 a13 a21 a22 a23 a31 a32 a33

mata = [a11 a12 a13; a21 a22 a23; a31 a32 a33];
clearvars a11 a12 a13 a21 a22 a23 a31 a32 a33

val1 = det(mata(1:2,1:2));

val2 = det(mata(1:2, [1 3]));

val3 = det(mata(2:3,1:2))*-1;

val4 = det(mata(2:3,2:3))*-1;

% (b)
syms a b c
matb = [5 c -9; a 3 4;-6 b -2];
exp1 = det(matb);

% (c)
a = 5; b = 2; c = 1;
val5 = subs(exp1);
end
