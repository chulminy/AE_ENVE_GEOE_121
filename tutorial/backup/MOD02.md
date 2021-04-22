# Module 02: Creating and Manipulating Arrays (★)
 
## M02001. Creating and Manipulating Arrays (★) 
The following variables are created in advance using `randi` and will be used for solving questions. 

```matlab
val1 = randi(100);
val2 = randi(100);

vec1 = randi(100, 10, 1);
vec2 = randi(100, 1, 5);

mat1 = randi(100, 10, 5);
mat2 = randi(100, 5, 10);
mat3 = randi(100, 10, 5);
```

You need to write a script that creates a variable named:
(a) 'vec_a' that is copied from 'vec1'. Then, the value of the third element in 'vec_a' is changed to 'val1'. 
(b) 'vec_b' that is copied from 'vec1'. Then, the values of the third and fifth elements in 'vec_b' are changed to 'val1'. 
(c) 'vec_c' that is copied from 'vec2'. Then, the values of the third and fifth elements in 'vec_c' are changed to 'val2'. 
(d) 'vec_d' that is a row vector and is copied from the second row of 'mat1'. 
(e) 'vec_e' that is a column vector and is copied from the first column of 'mat2'. 
(f) 'mat_f' that is a matrix. The first, second, and thrid columns of 'mat2' are concatenated in the row (horizontal) direction and assign it to 'mat_f'. 
(g) 'mat_g' that is a matrix. The first, second, and fifth columns of 'mat2' are concatenated in the row (horizontal) direction and assign it to 'mat_g'. 
(h) 'mat_h' that is a 10 x 6 matrix. 'mat1' and 'vec1' are concatenated in the row direction, and assign it to 'mat_h'. 
(i) 'mat_i' that is a 11 x 5 matrix. 'mat3' and 'vec2' are concatenated in the column direction, and assign it to 'mat_i'. 
(j) 'mat_j' that is a 20 x 5 matrix. 'mat1' and 'mat3' are concatenated in the column direction, and assign it to 'mat_j'. 
(k) 'mat_k' that is a 2 x 5 matrix. The first and fifth rows of 'mat1' are concatenated in the column direction, and assign it to 'mat_k'.  

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=10**](https://youtu.be/jjcuh5eLEKk?t=10)

## M02002. Basic Array Manipulation (★)

You need to write a script to create a variable named:
(a) 'vec1' containing numbers from 1 to 10. 'vec1' is a 1 x 10 row vector.
(b) 'vec2' containing even numbers from 2 going up to 20. 'vec2' is a 1 x 10 row vector.
(c) 'vec3' containing every third number, starting at 30, and going down to 3. 'vec3' is a 1 x 10 row vector.
(d) 'vec4', which is a row vector of size 1 x 30, containing 'vec1', 'vec2' and 'vec3' in that order (concatenating 'vec1', 'vec2', and 'vec3' in the row direction).
(e) 'mat1' containing a 3 x 10 matrix that joins 'vec1', 'vec2' and 'vec3' in the column (vertical) direction (concatenating 'vec1', 'vec2', and 'vec3' in the column direction).
(f) 'vec5', containing every 2nd element in 'vec4', starting at the first element to the end. 'vec5' becomes a 1 x 15 row vector.
(g) 'vec6', which is the 2nd column of 'mat1'. 'vec6' becomes a 3 x 1 column vector.
(h) 'mat2', which contains the elements at all the rows and the 2nd and 6th columns of 'mat1'. 'mat2' becomes a 3 x 2 matrix. 
(i) 'val1', which is the element at the 3rd row and 4th column of 'mat1'. 'val1' is a scalar variable. 
(j) 'vec7', which is a 1 x 3 row vectors containing the elements at the first row and 4th, 5th and 6th columns of 'mat1'. 
(k) 'mat3', which is a 2 x 5 matrix containing the elements at first and third rows, and 6th to 10th columns of 'mat1'. 
(l) 'vec8', which is a 2 x 1 column vector. Please contacatenate value1 and value2 in the column direction, where value1 is the element at the 3rd row and 2nd column of 'mat1' and value2 is the element at the 3rd row and 5th column of 'mat1' . 
(m) 'mat4', which is copied from 'mat1'. The 5th column of 'mat4' is then replaced with 'vec6'. 'mat4' is a 3 x10 matrix. 
(n) 'mat5', which is copied from 'mat1'. The elements at the 2nd row and 3th to 5th columns in 'mat5' are replaced with 'vec7. 'mat5' is a 3 x 10 matrix. 
(o) 'mat6', which is copied from 'mat1'. The elements at all the rows and 3th and 4th columns in 'mat6' are replaced with 'mat2'. 'mat6' is a 3 x 10 matrix. 

**Solution**

```matlab
vec1 = 1:10; %(a)

vec2 = 2:2:20; %(b)

vec3 = 30:-3:3; %(c)

vec4 = [vec1 vec2 vec3]; %(d)

mat1 = [vec1; vec2; vec3]; %(e)

vec5 = vec4(1:2:end); %(f)

vec6 = mat1(:,2); %(g)

mat2 = mat1(:,[2 6]); %(h)

val1 = mat1(3,4); % (i)

vec7 = mat1(1,4:6); % (j)

mat3 = mat1([1 3], 6:10); %(k)

vec8 = [mat1(3,2); mat1(3,5)]; %(l)

mat4 = mat1; %(m)
mat4(:,5) = vec6;

mat5 = mat1; %(n)
mat5(2, [3 4 5]) = vec7;

mat6 = mat1; %(o)
mat6(:, [3 4]) = mat2;
```

## M02003. Pressure Calculation (★)

'press1', 'press2' and 'press3' contain pressure data that are collected from Station 1, 2, and 3, at 1hr intervals, starting at 6:00AM and ending at 11:00PM 
(all 18 measuremets in each location). 
Here are the script to generate syntatic values for these variables. 

```matlab
press1 = randi([10 30], 18, 1);
press2 = randi([0 20], 18, 1);
press3 = randi([10 30], 18, 1);

area_device_const = randi(100); % constant cross-sectional area of pressure measuring devices
area_devices = randi(100, 3, 1); % different cross-sectional area of pressure measuring devices
```

Please write a script to 
(a) create a matrix 'data_press'. 'press1', 'press2', and 'press3' are concatenated in the row direction and assign the resulting matrix to 'data_press'.
For example, the first column in 'data_press' indicate the measurements at Station 1. 
(b) create a 1 x 3 vector called 'data_press_9am' which contains the data collected at 9:00 am from all stations. 
(c) create a matrix 'data_press_new' that is copied from 'data_press'. 
You realized that the data from Station 2 was abnormally low (underestimated) and should be corrected by adding 10. 
Please correct the correcponding values in 'data_press_new'. 

The force acting on the pressure measuring devices can be calculated using the equation , where F is force, P is pressure and A is a cross-sectional area of the pressure measuring device.
(d) If the cross-sectional areas of the devices at all Stations are constant and given as 'area_device_const'.
Please convert pressure data in 'data_press_new' to force data, and assign the resulting matrix to 'data_force1'. 
Note that 'data_press_new' and 'data_force' are same dimension. 
(e) If the cross-sectional areas of the devices at Stations are different and their areas are given as 'area_devices'. 
Please convert pressure data in 'data_press_new' to force data, and assign the resulting matrix to 'data_force2'. 
(f) You still do not trust the data from Station 2. Please create a 18 x 3 matrix named 'data_press_good' that is copied from 'data_press'. 
Please remove all data from Station 2 in 'data_press_good'. Thus, 'data_press_good' becomes a 18 x 2 matrix. 
Note that you do not need to consider units for pressure data and areas. 

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=1132**](https://youtu.be/jjcuh5eLEKk?t=1132)

## M02004. Character Type Casting (★★★) 

Note: refer to the ASCII table when solving this question: https://www.rapidtables.com/code/text/ascii-table.html
The following variables are created in advance using 'randi' and will be used for solving questions. 

```matlab
char_ran = char(randi([65 122])); % a randomly generated character
```
(a) a char vector 'vec1', which contains lowercased letters from a to z.
(b) a char vector 'vec2', which contains lowercased letters from z to a.
(c) a char vector 'vec3', which contains uppercased letters from A to Z.
(d) a char vector 'vec4', which is copied from 'vec1'. The 10th element (letter j) of 'vec4' is removed.
(e) 'is_upper' to test if 'char_ran' is an uppercased letter?
(f) 'is_a_letter' to test if 'char_ran' is an engish letter?

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=5191**](https://youtu.be/jjcuh5eLEKk?t=5191)

## M02005. Replicating built-in functions of fliplr and flipud (★★)

Before starting this problem it is important to understand exactly what the fliplr and flipud functions do ('lr' stands for left and right, and 'ud' stands for up and down).
For those who need review, the fliplr function is used to swap columns of any matrix is reverse order, while the flipud function does the same but for rows.
flipud: https://www.mathworks.com/help/matlab/ref/flipud.html
fliplr: https://www.mathworks.com/help/matlab/ref/fliplr.html
a) Given an n x n matrix named 'n_mat', replicate the fliplr function without actually using it (flip the order of the columns).
Use 'fliplr_mat' copied from 'n_mat' as the unknown variable for this question. 
b) Given an n x n matrix named 'n_mat', replicate the flipud function without actually using it (flip the order of the rows).
Use 'flipud_mat' copied from 'n_mat' as the unknown variable for this question.

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=2135**](https://youtu.be/jjcuh5eLEKk?t=2135)

## M02006. Array Manipulation (★★)

You need to write a script that creates a variable named : 
(a) 'vector1' that contains a 1 x 30 row vector and its elements are 1 through 30 in order. 
(b) 'vector2' that contains vector1 with a reverse order.
(c) 'vector3' that contains a vector ('vec_tmp') in reverse order. For example, if vec_tmp is [4 3 2 1 5], vector3 becomes [5 1 2 3 4].
(d) 'matrix1' that contains a 3 x 30 array joining 'vector1', 'vector2', and 'vector3' in a column direction (vertical) and in order. 
(e) 'matrix2' that is copied from 'matrix1'. Then, swap elements in first and second rows of 'matrix2' and then swap elements in second and third columns of 'matrix2'. 
For example, assume that mat1 = [1 2 3; 4 5 6]. After swapping rows, 'mat1' becomes [4 5 6;1 2 3]. Then, swapping columns makes 'mat1' [4 6 5;1 3 2].

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=3910**](https://youtu.be/jjcuh5eLEKk?t=3910)

## M02007. Simple Linear Indexing (★)

The following variables are created in advance using 'randi' and will be used for solving questions.
mat1 = randi(100, 5, 6);
You need to write a script that creates a variable named:
(a) 'val1', which is the element located on the third row and the fifth column of 'mat1'.
(b) 'val2', which is the last element of 'mat1' in terms of linear indexing.
(c) 'vec1', which is a row vector containing all the elements from the second to the seventeenth element of 'mat1' in terms of linear indexing.
(d) 'vec2', which is a 1x30 row vector conataining integer numbers from 1 to 30.
(e) 'mat_e', which is a 5x6 matrix reshaped from 'vec2' in order.  
(f) 'mat_f', which is a reverse order of 'mat1'. For instance, suppose that mat1 is [1 3 5; 2 4 6]. Then, mat2 becomes [6 4 2;5 3 1] 

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=3021**](https://youtu.be/jjcuh5eLEKk?t=3021)

## M02008. 3D Matrix Problems (★★) 

MATLAB uses multiple functions and operations that allow you to create and modify matricies in the third dimension. 
a) Construct a 3 x 3 matrix filled with n. Use 'n_mat' as the name for the matrix.
b) 'mat_3d' is copied from 'n_mat'. Append 'mat1' at the second location in the depth (third) dimension.
c) 'mat_3d2' is copied from 'mat_3d'. Replace the elements located in the first row of the second layered array with n.
d) Concatenate 'mat_3d2' and 'mat2' in the depth direction and assign this new matrix to 'mat_3d3'. This creates a 3 x 3 x 3 array. 
e) 'mat_3d4' is copied from 'mat_3d3'. Replace the matrix at the thrid location in the depth dimension with a 3 by 3 identity matrix

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=4280**](https://youtu.be/jjcuh5eLEKk?t=4280)

## M02009. Creating and Modifying Arrays (★)

This program is to create and manipulate a row or column vector, 2D matrix, and 3D matrix. 
The following variables are created in advance using 'randi' and will be used for solving problems.

```matlab
n = randi([4 10]);
val1 = randi(100);
val2 = randi(100);
vec_row1 = randi(100, 1, n);
vec_row2 = randi(100, 1, n);
vec_col1 = randi(100, n, 1);
vec_col2 = randi(100, n, 1);
mat1 = randi(100,n);
mat2 = randi(100,n);
```

You need to write a script that creates a variable named:
(a) 'vec_a' that contains a n x 1 column vector and its elements are all val1
(b) 'vec_b' that contains a 2n x 1 column vector by appending 'vec_col2' to the end of 'vec_col1' in a column direction (For example, if vec_col1 = [1;-2;3] and vec_col2 = [4;7;5], vec_b = [1;-2;3;4;7;5])
(c) 'vec_c' that contains a 1 x (n+1) row vector by appending 'val2' to the end of 'vec_row1'
(d) 'mat_d' that contains a 2 x n matrix joining 'vec_row1' and 'vec_row2' in a column direction and in order (For example, if vec_row1 = [1,2,3] and 
vec_row2 = [4,5,6], mat_d = [1,2,3;4,5,6])
(e) 'mat_e' that contains a n x 2n matrix joining 'mat1' and 'mat2' in a row direction and in order (For example, if mat1 = [1,2 ; 4,5] and 
mat2 = [7,8 ; 10,11], mat_e = [1,2,7,8 ; 4,5,10,11])
(f) 'mat_f' that contains a 2n x n matrix joining 'mat1' and 'mat2' in a column direction and in order  (For example, if mat1 = [1,2 ; 4,5] and 
mat2 = [7,8 ; 10,11], mat_f = [1,2 ; 4,5 ; 7,8 ; 10,11])
(g) 'mat_g' that contains a 3D matrix having n x n x 2 array joining 'mat1' and 'mat2' in the third direction and in order (For example, if mat1 = [1,2 ; 4,5] and 
mat2 = [7,8 ; 10,11], mat_g = [[1,2 ; 4,5], [7,8 ; 10,11]])
(h) 'vec_h' that is copied from 'vec_row1'. Then, the first and last element in 'vec_h' are replaced by 'val1' and 'val2', respectively. 
(i) 'mat_i' that is copied from 'mat1'. Then, the first column in 'mat_i' is replaced by 'vec_col2' and then the last row in 'mat_i' is replaced to 'vec_row1'. 
Make sure to do the steps in order!

**Solution**

```matlab
n = randi([4 10]);
val1 = randi(100);
val2 = randi(100);
vec_row1 = randi(100, 1, n);
vec_row2 = randi(100, 1, n);
vec_col1 = randi(100, n, 1);
vec_col2 = randi(100, n, 1);
mat1 = randi(100,n);
mat2 = randi(100,n);

vec_a = ones(n,1) * val1;
vec_b = [vec_col1; vec_col2];
vec_c = [vec_row1 val2];
mat_d = [vec_row1; vec_row2];
mat_e = [mat1 mat2];
mat_f = [mat1;mat2];

mat_g = zeros(n,n,2);
mat_g(:,:,1) = mat1;
mat_g(:,:,2) = mat2;

vec_h = vec_row1;
vec_h([1 n]) = [val1 val2];

mat_i = mat1;
mat_i(:,1) = vec_col2;
mat_i(end,:) = vec_row1;
```

## M02010. Matrix operation (★★)

Please write a script to solve the following problem. 
Assume that matrix A, matrix B, column vector c are defined as follow:

![array_manipulation](https://user-images.githubusercontent.com/64098253/90949464-289cce80-e416-11ea-91cd-df9b7d4ecc1c.jpeg)

Then, mat1, mat2, mat3, mat4, and vec5 are defined as follow:

![array_manipulation Pt2](https://user-images.githubusercontent.com/64098253/90949474-36eaea80-e416-11ea-931c-540a3d8f4c93.jpeg)

These arrays are computed from A, B, and c through matrix and element-wise operations. 
Please write a script to compute 'mat1', 'mat2', 'mat3', 'mat4' and 'vec5' when arrays for 'A', 'B', and 'c' are created and their values are randomly generated. 

**Solution**
Please watch this:[**https://youtu.be/jjcuh5eLEKk?t=3911**](https://youtu.be/jjcuh5eLEKk?t=3911)

## M02011. (Advanced) Pressure Calculation (★★) 

'press1', 'press2' and 'press3' contain pressure data that are collected from Station 1, 2, and 3, at 1hr intervals, starting at 6:00AM and ending at 11:00PM (all 18 measuremets in each location) during ten days. 
Here are the script to generate syntatic values for these variables. 

```matlab
press1 = randi([10 30], 18, 10); % 18 measurements during 10 days at Station 1
press2 = randi([0 20], 18, 10); % 18 measurements during 10 days at Station 2
press3 = randi([10 30], 18, 10); % 18 measurments during 10 days at Station 3

data_press = [press1 press2 press3];
clearvars press1 press2 press3 % delete 'press1', 'press2', 'press3' variables

area_device_const = randi(100); % constant cross-sectional area of pressure measuring devices
area_devices = randi(100, 3, 1); % different cross-sectional area of pressure measuring devices
```

Please solve the following questions using 'data_press'. 
(a) Create a 1 x 10 row vector called 'data_press_8am_st3' which contains the data collected at 8:00 am of all ten day from Station 3 in order. 
(b) Create a 1 x 18 row vector called 'data_press_2nd_st2' which contains the data collected at the whole day of the 2nd day from Station 2 in order.
(c) Create a 1 x 3 row vector called 'data_press_9am_2nd' which contains the data collected at 9:00 am of the 2nd day from all stations in order.
(d) Create a 3 x 10 matrix called 'data_press_9am' which contains the data collected at 9:00 am of all ten days from all stations. 
For instance, the first row of 'data_press_9am' contains measurements at 9:00 am of all ten day from Stataion 1. 
(e) Create a 3 x 18 matrix called 'data_press_5th' which contains the data collected at the whole day of the 5th day from all stations. 
For instance, the third row of 'data_press_5th' contains measurements at the whole day of the 5th day from Stataion 3. 
(f) You realized that the data from Station 2 was abnormally low (underestimated) and should be corrected by adding 10. 
Create 'data_press_new', which is copied from 'data_press'. Then, please add 10 to all measurement data from Station 2 in 'data_press_new'. 

The force acting on the pressure measuring devices can be calculated using the equation , where F is force, P is pressure and A is a cross-sectional area of the pressure measuring device.
(g) If the cross-sectional areas of the devices at all Stations are constant and given as 'area_device_const'.
Please convert pressure data 'data_press_new' to force data, and assign the resulting matrix to 'data_force_const', respectively.
Note that the size of 'data_force_const' is 18 x 30. 
(h)  If the cross-sectional areas of the devices at stations are different and their areas are given as 'area_devices'. 
Please convert pressure data in 'data_press_new' to force data, and assign the resulting matrix to 'data_force_diff'. 
(i) You still do not trust the data from Station 2. Please create 'data_force_new' which is copied from 'data_force_const'.
Then, remove all measurements from Station 2 in 'data_force_new'. Note that the size of 'data_force_new' is 18 x 20. 

Note that you do not need to consider units for pressure data and areas. 

**Solution**

```matlab
press1 = randi([10 30], 18, 10); % 18 measurements during 10 days at Station 1
press2 = randi([0 20], 18, 10); % 18 measurements during 10 days at Station 2
press3 = randi([10 30], 18, 10); % 18 measurments during 10 days at Station 3

data_press = [press1 press2 press3];
clearvars press1 press2 press3

area_device_const = randi(100); % constant cross-sectional area of pressure measuring devices
area_devices = randi(100, 3, 1); % different cross-sectional area of pressure measuring devices


%(a)
data_press_8am_st3 = data_press(3,21:end);
% press3(3,:)

%(b)
data_press_2nd_st2 = data_press(:,12)';
% press1(:,2)'

%(c)
data_press_9am_2nd = data_press(4,[2:10:end]);
% [press1(4,2) press2(4,2) press3(4,2)]

%(d)
data_press_9am = zeros(3, 10);
data_press_9am(1,:) = data_press(4,1:10);
data_press_9am(2,:) = data_press(4,11:20);
data_press_9am(3,:) = data_press(4,21:30);

%(e)
data_press_5th = zeros(3, 18);
data_press_5th(1,:) = data_press(:,5)';
data_press_5th(2,:) = data_press(:,15)';
data_press_5th(3,:) = data_press(:,25)';
% data_press_5th = data_press(:,[5 15 25])';


%(f)
data_press_new = data_press;
data_press_new(:,[11:20]) = data_press_new(:,[11:20]) + 10;

%(g)
data_force_const = data_press_new * area_device_const;

%(h)
data_force_diff = zeros(18,30);
data_force_diff(:,[1:10]) = data_press_new(:,[1:10]) * area_devices(1);
data_force_diff(:,[11:20]) = data_press_new(:,[11:20]) * area_devices(2);
data_force_diff(:,[21:30]) = data_press_new(:,[21:30]) * area_devices(3);

%(i)
data_force_new = data_force_const;
data_force_new(:,[11:20]) = [];
```

## M02012. Manipulating Matrices and Logical Operations (★★)

```matlab
mat1 = reshape(1:16,4,4); % generate a 4 by 4 matrix by reshaping a 1 x 16 vector
mat2 = reshape(1:28,7,4); % generate a 7 by 4 matrix by reshaping a 1 x 28 vector
mat3 = reshape(1:8,4,2); % generate a 4 by 2 matrix by reshaping a 1 x 8 vector
```
You need to write a script to create:
(a) 'mat4', which is copied from 'mat2'. The elements at the 4th to 7th rows of 'mat4', are replaced by 'mat1'. 'mat4' is a 7 x 4 matrix. 
(b) 'mat5', which is copied from 'mat1'. The first column of 'mat5' is replaced with the second column of 'mat3'. 'mat5' is a 4 x 4 matrix. 
(c) 'mat6'. Concatenate 'mat1' and 'mat3' in a horizontal direction and assign the resulting matrix to 'mat6'. 'mat6' becomes  a 4 x 6 matrix.
(d) 'char1', which is a character array. 'char1' contains 'AEG 121 is fun!', without the quotation marks. 'char1' becomes a 1 x 15 chracter vector. 
(e) 'char2', which is copied from 'char1'. Remove a chracter vector of 'fun!' (without the quotation marks) from 'char2'. 'char2' becomes 'AEG 121 is ', which is a 1 x 11 character vector. 
(f) 'char3', which is copied from 'char2'. Append 'fantastic!' at the end of 'char2'. 'char3' becomes 'AEG 121 is fantastic!', which is a 1 x 21 character vector. 
(g) 'char4', which is copied from 'char3'. Then, flip the character vector of 'char4'. 'char4' becomes '!citsatnaf si 121 GEA'

**Solution**

```matlab
mat1 = reshape(1:16,4,4); % generate a 4 by 4 matrix by reshaping a 1 x 16 vector
mat2 = reshape(1:28,7,4); % generate a 7 by 4 matrix by reshaping a 1 x 28 vector
mat3 = reshape(1:8,4,2); % generate a 4 by 2 matrix by reshaping a 1 x 8 vector

% (a) replace a submatrix
mat4 = mat2;
mat4([4:7],:) = mat1; 

% (b) modify a column
mat5 = mat1; 
mat5(:,1) = mat3(:,2);

% (c) concatenate matrices
mat6 = [mat1 mat3]; 

% (d) generate a character vector
char1 = 'AEG 121 is fun!';

% (e) remove characters
char2 = char1; 
char2(end-3:end)=[];

% (f) append characters
char3 = [char2 'fantastic!'];

% (g) flip
char4 = char3(end:-1:1);
```

## M02013. Creating Mirrored Matrices (★★) 

For this problem create several mirrored vectors named:
a) 'vec1' with dimensions 1 x 2n in which a 1:n vector is mirrored after the nth number. (e.g., if n is 4, then vec1 = [1,2,3,4,4,3,2,1]).
b) 'vec2' with dimensions 1 x (2n-1) in which n is the middle element of the vector. (e.g., if n is 5, then vec2 = [1,2,3,4,5,4,3,2,1]).
c) 'vec3' with dimensions (2n-1) x 1 in which a 1:n (reverse vector) is mirrored at 1 (e.g.,  if n is 4, then vec3 = [4;3;2;1;2;3;4]).
d) 'vec4' with dimensions 1 x (3n-2) in which n number of n is the middle of the mirred vector. (e.g., if n is 4 then vec4 = [1 2 3 4 4 4 4 3 2 1] 
or if n is 5 then vec4 = [1 2 3 4 5 5 5 5 5 4 3 2 1])

**Solution**

```matlab
n=randi([2,30],1)

%a)
vec1=[1:n,n:-1:1] % using 2 n's in the middle of the vector

%b)
vec2=[1:n,(n-1):-1:1] % using 1 n in the middle of the vector

%c)
vec3=[n:-1:2,1:n]' % count up halfway, then down donwards after n, then transposing the vector

%c)
vec4=[1:(n-1) ones(1,n)*n (n-1):-1:1]; % use ones function
```
## M02014. Swapping the columns (★★)

The following variables are created in advance using 'randi' and will be used for solving questions.

```matlab
sr = randi([5 20]); % size of the rows
sc = randi([10 20]); % size of the columns

mat1 = randi(100, sr, sc); % generate sr x sc matrix
mat2 = randi(100, sr, sc); % generate sr x sc matrix
mat3 = randi(100, sr, sc); % generate sr x sc matrix

clearvars sr sc % clear the variables regarding the size
```
You need to write a script that creates a variable named:
(a) 'mat_a' that is copied from 'mat1'. Then, the first and second columns of mat_a are swapped.
(b) 'mat_b' that is copied from 'mat1'. Then, the first and third columns of mat_b are swapped.
(c) 'mat_c' that is copied from 'mat1'. Then, the second last and the last columns are swapped.
(d) 'mat_d' that is copied from 'mat2'. Then, the first column of 'mat_d' is replaced with the second column of 'mat_d',  
the second column of 'mat_d' is replaced with the third column of 'mat_d', and the third column of 'mat_d' is replaced with the first column of "mat_d".
(e) 'mat_e' that is copied from 'mat2'. Then, the fifth column of 'mat_e' is replaced with the sixth column of 'mat_e',  the sixth column of 
'mat_e' is replaced with the seventh column of 'mat_e', and the seventh column of 'mat_e' is replaced with the fifth column of 'mat_e'.
(f) 'mat_f' that is copied from 'mat2'. Then, the second last column of 'mat_f' is replaced with the last column of 'mat_f',  the last column of 
'mat_f' is replaced with the first column of 'mat_f', and the first column of 'mat_f' is replaced with the second last column of 'mat_f'.
(g) 'mat_g' that is copied from 'mat3'. Then, the first and second rows of mat_g are swapped.
(h) 'mat_h' that is copied from 'mat3'.  Then, the first row of 'mat_h' is replaced with the second row of 'mat_h',  the second row of 'mat_h' is replaced
with the third row of 'mat_h', and the third row of 'mat_h' is replaced with the first row of "mat_h".

**Solution**

```matlab
sr = randi([5 20]); % size of the rows
sc = randi([10 20]); % size of the columns

mat1 = randi(100, sr, sc); % generate sr x sc matrix
mat2 = randi(100, sr, sc); % generate sr x sc matrix
mat3 = randi(100, sr, sc); % generate sr x sc matrix

clearvars sr sc % clear the variables regarding the size

%(a) 
mat_a = mat1;
mat_a(:,[1 2]) = mat_a(:,[2 1]);

%(b)
mat_b = mat1;
mat_b(:,[1 3]) = mat_b(:,[3 1]);

%(c)
mat_c = mat1;
mat_c(:,[end-1 end]) = mat_a(:,[end end-1]);

%(d)
mat_d = mat2;
mat_d(:, [1 2 3]) = mat_d (:, [2 3 1]);

%(e)
mat_e = mat2;
mat_e(:, [5 6 7]) = mat_e(:, [6 7 5]);

%(f)
mat_f = mat2;
mat_f(:, [end-1 end 1]) = mat_f(:, [end 1 end-1]);

%(g)
mat_g = mat3;
mat_g([1 2],:) = mat_g([2 1],:);

%(h)
mat_h = mat3;
mat_h([1 2 3], :) = mat_h([2 3 1], :);
```

## M02015. Character Vector Manipulation (★★★)

Note: refer to the ASCII table when solving this question: https://www.rapidtables.com/code/text/ascii-table.html
The following variables are created in advance using 'randi' and will be used for solving questions. 

```matlab
charvec_ran = char(randi([65 122], 1,4)); % a randomly generated character vector
vec1 = randi([65 122],1,4) % a randomly generated vector
```

You need to write a script to create a variable named:
(a) a  vector 'vec_a', which converts the character vector 'charvec_ran' to its numerical (ASCII) equivalent.
(b) a  vector 'vec_b', which converts the values of 'vec1' to a character vector.
(c) a char vector 'vec_c' that is copied from 'vec_b'. The last element is removed.
(d) 'is_upper1' to test if the fist element of 'vec_c' is an uppercased letter? 
(e) 'is_lower1' to test if the fist element of 'vec_c' is a lowercased letter? 
(f) 'num_upper' to count how many uppercased letters contained in 'vec_c'.
(g) 'num_lower' to count how many lowercased letters contained in 'vec_c'.

**Solution**
```matlab
charvec_ran = char(randi([65 122], 1,4)); % a randomly generated character vector
vec1 = randi([65 122],1,4); % a randomly generated vector
% write your code here

%(a)
vec_a = double(charvec_ran);

%(b)
vec_b = char(vec1);

%(c)
vec_c = vec_b;
vec_c(end) = [];

%(d)
is_upper1 = (double(vec_c(1)) >= 65) && (double(vec_c(1)) <= 90);

%(e)
is_lower1 = (double(vec_c(1)) >= 97) && (double(vec_c(1)) <= 122);

%(f)
is_upper2 = (double(vec_c(2)) >= 65) && (double(vec_c(2)) <= 90);
is_upper3 = (double(vec_c(3)) >= 65) && (double(vec_c(3)) <= 90);

num_upper = is_upper1 + is_upper2 + is_upper3;

%(g)
is_lower2 = (double(vec_c(2)) >= 97) && (double(vec_c(2)) <= 122);
is_lower3 = (double(vec_c(3)) >= 97) && (double(vec_c(3)) <= 122);

num_lower = is_lower1 + is_lower2 + is_lower3;
```

## M02016. Array Manipulation 

This program is to use matrix and element-wise operations. 
Assume that matrix A, a column vector c, and a row vector r are defined as follows. 

![quiz_array manipulation](https://user-images.githubusercontent.com/64098253/90949763-2ee07a00-e419-11ea-91e6-32282020c34e.gif)

Then, val_a, mat_b, mat_c, mat_d, mat_e, and val_f are defined as follows. 

![quiz_array_manip_pt2](https://user-images.githubusercontent.com/64098253/90949769-461f6780-e419-11ea-86a4-f4019d846e74.jpeg)

These values should be computed from A, c, and r through matrix and element-wise operations. Individual allocation of the elements is not permitted. 
Please write a script to compute 'val_a', 'mat_b', 'mat_c', 'mat_d', 'mat_e', and 'val_f' when numeric values for 'A', 'c', and 'r' are given.  
For example, when c = [1;2;3] and r = [1 1 0], 'val_a' become 3. (=1*1 + 2*1 + 0).

**Solution**
```matlab
A = randi(100, 3,3);
c = randi(100, 3,1);
r = randi(100, 1,3);

val_a = r*c;
mat_b = A - c*ones(1,3);
mat_c = A .*(ones(3,1)*r);
mat_d = A * c;
mat_e = A * transpose(r);

val_f = mat_d(1) + mat_d(2) + mat_d(3);


% symbolic code
%{

syms A c r
syms a11 a12 a13 a21 a22 a23 a31 a32 a33
syms c1 c2 c3
syms r1 r2 r3

A = [a11 a12 a13; a21 a22 a23; a31 a32 a33];
c = [c1; c2; c3];
r = [r1 r2 r3]


val_a = r*c
mat_b = A - c*ones(1,3)
mat_c = A .*(ones(3,1)*r)
mat_d = A * c
mat_e = A * transpose(r)

val_f = mat_d(1) + mat_d(2) + mat_d(3)

%}
```

## M02017. Create Sequences 

```matlab
n = randi([10 100], 1); % n is a randomly generated number ranging from 10 to 100
```
(a) create a row vector named 'vec1', which has the sequence: 9, 16, 25, 36, ..., n^2.
(b) create a row vector named 'vec2', which is copied from 'vec1'. Then, remove the elements with vaules of 25 and 64 from 'vec2'. 'vec2' becomes a 1 x (n-4) row vector. 
(c) create a 1 x n row vector named 'vec3', which has the sequence: n*1, (n-1)*2, (n-2)*3, (n-3)*4..., 2*(n-1), 1*n
(d) create a column vector named 'vec4', which has the same elements of 'vec3' in order. However, starting at the first element, every third element of 'vec4' is removed. 
(e.g. vec3 = [1 2 3 4 5 6 7], vec4 = [2; 3; 5; 6])
(e) create a 1xn row vector named 'vec5' with all elements as zero. Please replace the value at the even location with the value of (corresponding index)^2. 
Then, vec5 becomes 0 4 0 16 0 36... 0 , n^2 if n is even. When n is odd, vec5 becomes 0 4 0 16 .... (n-1)^2, 0. 
Note that this is not a problem using selection statement or loop statement. Please avoid using selection and loop statements. 

**Solution**

```matlab
n = randi([10 100],1); % n is a randomly generated number ranging from 10 to 100
% write your code here

%(a)
vec1 = (3:n).*(3:n);

%(b)
vec2 = vec1;
vec2([3 6]) = [];

%(c)
vec3 = (n:-1:1).*(1:n);


%(d)
vec4 = vec3';
vec4(1:3:end) = [];

%(e)
vec5 = (1:n).*(1:n);
vec5(1:2:n) = 0;
```

## M02018. Create sequences 

```matlab
n = randi([10 100], 1); % n is a randomly generated number ranging from 10 to 100
```
(a) For this problem, combine two row vectors in which their elements multiplied together to create the following sequence:  6, 12, 20, 30, ..., n*(n-1). Use 
'vec1' as your combined vector.
For example, 6 = 3 x 2, 12 = 4 x 3, 20 = 5 x 4. 
(b) create a row vector named 'vec2', which is copied from 'vec1'. Then remove the elements with vaules of 42 and 56 of 'vec2' . 
'vec2' becomes a 1 x (n-4) row vector. 
(c) create a row vector named 'vec3', which has the sequence: n^2, (n-1)^2, (n-2)^2, ..., 1.
(d) create a row vector named 'vec4', which is copied from 'vec3'. However, starting at the first element, remove the every second element of 'vec4'. 
(e.g. vec3 = [1 2 3 4 5 6 7], vec4 = [2 4 6])
(e) create a 1xn row vector named 'vec5' with all elements as zero. Please replace the value at the odd location with the value of (corresponding index)^2. 
Then, vec5 becomes 1 0 9 0 25 0...., (n-1)^2, 0 if n is even. When n is odd, vec5 becomes 1 0 9 0 25 0...., 0, n^2.
Note that this is not a problem using selection statement or loop statement. Please avoid using selection and loop statements. 

**Solution**
```matlab
n = randi([10 100], 1); % n is a randomly generated number ranging from 10 to 100

%(a)
vec1 = (3:n).*(2:n-1);

%(b)
vec2 = vec1;
vec2(5:6) = [];

%(c)
vec3 = (n:-1:1).*(n:-1:1);

%(d)
vec4 = vec3;
vec4(1:2:end) = [];

%(e)
vec5 = (1:n).*(1:n);
vec5(2:2:n) = 0;
```
## M02019. Relational and Logical Operator 

The following variables are created in advance using 'randi' and will be used for solving questions. 
```matlab
vec1 = char(randi([48 122],1,10)); % a 1 x 10 randomly generated character vector
x = randi([1 20]); % returns a random integer drawn from the interval [1, 20]
y = randi([1 20]); % returns a random integer drawn from the interval [1, 20]
z = randi([1 20]); % returns a random integer drawn from the interval [1, 20]
```
(a) Write a code to check if x lies in more than 6 and less than 12. If yes, assign logical 1 to 'l_a' and otherwise assign logical 0. 
(b) Write a code to check if y + 3 lies in less than 5 or more than 10. If yes, assign logical 1 to 'l_b' and otherwise assign logical 0. 
(c) Write a code to check if x/y is larger than y/z. If yes, assign logical 1 to 'l_c' and otherwise assign logical 0. 

Please use the ASCII table to solve the following problems:
![ascii_table](https://user-images.githubusercontent.com/64098253/90949938-44ef3a00-e41b-11ea-9652-ef0cece8bc10.png)

(d) Create a 1x3 character vector called 'vec_d', which concatenates the every fourth elements of 'vec1' (1st, 5th, 9th values). 
Write a code to check how many uppercase letters there are in 'vec_d', and assign the result to 'num_d'
(e) Write a code to check how many lowercase letters there are in 'vec_d', and assign the result to 'num_e'.
(f) Write a code to check how many english letters there are in 'vec_d', and assign the result to 'num_f'.

**Solution**
```matlab
vec1 = char(randi([48 122],1,10)); % a 1 x 10 randomly generated vector
x = randi([1 20]); % returns a random integer drawn from the interval [1, 20]
y = randi([1 20]); % returns a random integer drawn from the interval [1, 20]
z = randi([1 20]); % returns a random integer drawn from the interval [1, 20]

% write your code here

%(a)
l_a = (x>6) && (x<12);

%(b)
l_b = ((y+3)<5) || ((y+3)>10);

%(c)
l_c = (x/y) > (y/z);

%(d)
vec_d = vec1(1:4:end);
is_upper1 = and(vec_d(1) >= 'A',  vec_d(1) <= 'Z');
is_upper2 = and(vec_d(2) >= 'A',  vec_d(2) <= 'Z');
is_upper3 = and(vec_d(3) >= 'A',  vec_d(3) <= 'Z');
num_d = is_upper1 + is_upper2 +is_upper3;

% (d) option 1
% vec_d = vec1(1:4:end);
% is_upper1 = (double(vec_d(1)) >= 65) && (double(vec_d(1)) <= 90);
% is_upper2 = (double(vec_d(2)) >= 65) && (double(vec_d(2)) <= 90);
% is_upper3 = (double(vec_d(3)) >= 65) && (double(vec_d(3)) <= 90);
% num_d = is_upper1 + is_upper2 +is_upper3;

%(e)
is_lower1 = and(vec_d(1) >= 'a',  vec_d(1) <= 'z');
is_lower2 = and(vec_d(2) >= 'a',  vec_d(2) <= 'z');
is_lower3 = and(vec_d(3) >= 'a',  vec_d(3) <= 'z');
num_e = is_lower1 + is_lower2 + is_lower3;

% (e) option1
% is_lower1 = (double(vec_d(1)) >= 97) && (double(vec_d(1)) <= 122);
% is_lower2 = (double(vec_d(2)) >= 97) && (double(vec_d(2)) <= 122);
% is_lower3 = (double(vec_d(3)) >= 97) && (double(vec_d(3)) <= 122);
% num_e = is_lower1 + is_lower2 + is_lower3;

%(f)
num_f = num_d + num_e;

% (f) option 1
% is_en1 = is_upper1 || is_lower1;
% is_en2 = is_upper2 || is_lower2;
% is_en3 = is_upper3 || is_lower3;
% num_f = is_en1 + is_en2 + is_en3;
```

## M02020. Matrix Manipulation 

The following variables are created in advance using 'randi' and will be used for solving questions. 
```matlab
n = randi(100); % a random scalar 
mat1 = randi(100, 10, 10); % a 10 x 10 matrix with random values
```
(a) Create a 1x10 row vector called 'vec_a', which is copied from the fifth row of 'mat1'. 
Then, rearrange it so that its elements in its first half are switched with those in the second half. (e.g. the orginal vector: [1 2 3 4 5 6]; the modified vector: 
[4 5 6 1 2 3])

(b) Create a matrix called 'mat_b', which is copied from 'mat1'. Then, Then, swap the first row with the last row, and swap the first column with the last column. 
(Note that you need to do these steps in order)

(c) Create a 10x4 matrix called 'mat_c',  which concatenates every third columns of 'mat1' (first, fourth, seventh, tenth columns)

(d) Create a matrix called 'mat_d', which is copied from 'mat_c'. Then, replace the every fourth element of 'mat_d'  with a value of 5 (sarting from the first element) 
in terms of the linear indexing order.

(e) Create an n x (2n) matrix named 'mat_e'. Then, assign n to all of its elements.

**Solution**
```matlab
n = randi(100); % a random scalar 
mat1 = randi(100, 10, 10); % a 10 x 10 matrix with random values

%(a)
vec_a = mat1(5,:);
vec_a = vec_a([6:end 1:5]);
% vec_a([1:5 6:end]) = vec_a([6:end 1:5]);

%(b)
mat_b = mat1;
mat_b([1 end],:) = mat_b([end 1], :);
mat_b(:,[1 end]) = mat_b(:, [end 1]);

%(c)
mat_c = mat1(:,1:3:end);

%(d)
mat_d = mat_c;
mat_d(1:4:end) = 5;

%(e)
mat_e = ones(n,2*n)*n;
```

## M02021. Pressure Calculation 

'press1', 'press2', 'press3', and 'press4' contain pressure data that have been collected over a period of 13 days from Station 1, 2, 3, and 4 at 2 hr 
intervals, starting at 10:00AM and ending at 2:00 am (all 9 measuremets per day at each station). 

Here is the script to generate syntatic values for these variables.

```matlab
press1 = randi([10 30], 9, 13); % data contained at station 1
press2 = randi([0 20], 9, 13); % data contained at station 2
press3 = randi([10 30], 9, 13); % data contained at station 3
press4 = randi([10 60], 9, 13); % data contained at station 4

data_press = [press1 press2 press3 press4]; % joining all staions data in the horizontal direction (a 9 x 52 matrix)
clearvars press1 press2 press3 press4 % delete 'press1', 'press2', 'press3', 'press4' variables

area_devices = randi(100, 4, 1); % different cross-sectional area of pressure measuring devices
```
'press X' is a 9 x 13 matrix including all pressure data from Station X. 9 rows means 9 different times when measurements were taken and 13 columns means 13 different days of data collecting. 

a) Your boss wants you to find all of the pressure gradients from 12 pm to 8 pm during the 7th day of anaylsis from all stations. 
Create an 5  x  4 matrix named as 'data_report', where each column represents pressure data recorded from 12 pm to 8 pm on the 7th day of analysis. 
For example, the first column of 'data_report' is the pressure data at Station 1 measured on the 7th day from 12 pm to 8 pm. 

b) Your boss asks you to calculate the force based on the data analysis from each station at 10 am from days 2 to 10. However, your boss says that Station 4 is 
really old and that the data cannot be trusted, and thus you are asked to exclude that data. He wants you to also report your matrix data in a vertically 
concatenated manner so that 'very row represents the 10 am data at the corresponding station.
The force acting on the pressure measuring devices can be calculated using the equation , where F is force, P is pressure and A is a cross-sectional area of the 
pressure measuring device.
The cross-sectional areas of the devices at stations are different and their areas are given as 'area_devices'. Each numbered element in 'area_devices' corresponds 
to the station number.(eg. The first element of 'area_devices' corresponds to station 1)
Create a 3 x 9 matrix named 'final_data_report' such that the data can be reported in this manner. 
Each row corresponds to the time at which Station X has recorded a pressure value, while each column contains the day in which the measurement was taken (from days 2 to 10).
For example, the first row of 'final_data_report' is the force data at 10 am for day 2 to day 10 from Station 1 in order. 

**Solution**
```matlab
press1 = randi([10 30], 9, 13); % data contained at station1
press2 = randi([0 20], 9, 13); % data contained at station 2
press3 = randi([10 30], 9, 13); % data contained at station 3
press4 = randi([10 60], 9, 13); % data contained at station 4

data_press = [press1 press2 press3 press4]; % joining all staions data in the horizontal direction (a 9 x 52 matrix)
clearvars press1 press2 press3 press4 % delete 'press1', 'press2', 'press3', 'press4' variables

area_devices = randi(100, 4, 1); % different cross-sectional area of pressure measuring devices

%a)
data_report = data_press(2:6,[7 20 33 46]);

% option 1
% data_report=[data_press(2:6,7),data_press(2:6,20),data_press(2:6,33),data_press(2:6,46)]'

%b)
force_at_st1 = data_press(1,2:10) * area_devices(1);
force_at_st2 = data_press(1,15:23) * area_devices(2);
force_at_st3 = data_press(1,28:36) * area_devices(3);

final_data_report = [force_at_st1; force_at_st2; force_at_st3];
```

## M02022. Matrix Manipulation 

The following variables are created in advance using 'randi' and will be used for solving questions. 
```matlab
n = randi(100); % a random scalar 
mat1 = randi(100, 16, 16); % a 16 x 16 matrix with random values
```

**Solution**
```matlab
(a) Create a 1x16 row vector called 'vec_a', which is copied from the last row of 'mat1'. 
Then, re-arrange it so that the elements in its first half are switched with those in the second half. (e.g. the orginal vector: [1 2 3 4 5 6]; the modified vector: [4 5 6 1 2 3])

(b) Create a matrix called 'mat_b', which is copied from 'mat1'. Then, swap the first row with the second row, and swap the first column with the second column. (Note that you need to do these steps in order)

(c) Create a 16x4 matrix called 'mat_c', which concatenates every fourth columns of 'mat1' (the first, fifth, ninth, thirteenth columns).

(d) Create a matrix called 'mat_d', which is copied from 'mat_c'. Then, replace the every third element of 'mat_d'  with n. (sarting from the first element) in terms of the linear indexing.

(e) Create an n x (3n) matrix named 'mat_e'. Then, assign 3n to all of its elements.

n = randi(100); % a random scalar 
mat1 = randi(100, 16, 16); % a 16 x 16 matrix with random values

%(a)
vec_a = mat1(end,:);
vec_a = vec_a([9:end 1:8]);
% vec_a([1:5 6:end]) = vec_a([6:end 1:5]);

%(b)
mat_b = mat1;
mat_b([1 2],:) = mat_b([2 1], :);
mat_b(:,[1 2]) = mat_b(:, [2 1]);

%(c)
mat_c = mat1(:,1:4:end);

%(d)
mat_d = mat_c;
mat_d(1:3:end) = n;

%(e)
mat_e = ones(n,3*n)*3*n;
```

## M02023. Array Manipulation 

This program is to use matrix and element-wise operations. 
Assume that a row vector A, matrix B, matrix C, and a column vector R are defined as follows.
![Quiz_array_manip_pt3](https://user-images.githubusercontent.com/64098253/90950239-bcbe6400-e41d-11ea-86a7-7fbbb201551f.png)
val_a, mat_a, mat_b, vec_a, mat_c, and val_b are defined as the following. 
![Array_manip pt4](https://user-images.githubusercontent.com/64098253/90950256-de1f5000-e41d-11ea-9b93-952ee62728ca.png)

These values should be computed from A, B, C, and R through matrix and element-wise operations. Individual allocation of the elements is not permitted. 
Please write a script to compute 'val_a', 'mat_a', 'mat_b', 'vec_a', 'mat_c', and 'val_b' when values for 'A', 'B', 'C', and 'R' are given. 
For example, when A = [1 2 3], 'val_a' become 14. (= 1*1 + 2*2 + 3*3).

**Solution**
```matlab
A=randi([1,100],1,3);
B=randi([1,100],4,3);
C=randi([1,100],3,4);
R=randi([1,100],2,1);

val_a = A*transpose(A);

mat_a = [C(:,1:2)*R(1) C(:,3:4)*R(2)];

mat_b = B.*[A;A;A;A];

vec_a = B*transpose(A);

tA = transpose(A);
mat_c = [C(:,1)-tA C(:,2)-tA C(:,3)-tA C(:,4)-tA];

val_b = vec_a(1) + vec_a(2) + vec_a(3) + vec_a(4);

% alternative
%{
%val_a
val_a=A*A'
%mat_a
mat_a(:,[1,2])=C(:,[1,2])*r(1,1);
mat_a(:,[3,4])=C(:,[3,4])*r(2,1)
%mat_b
mat_b(1,:)=B(1,:).*A;
mat_b(2,:)=B(2,:).*A;
mat_b(3,:)=B(3,:).*A;
mat_b(4,:)=B(4,:).*A
%vec_a
vec_a(1:3,1)=B*A';
%mat_c
mat_c(:,1)=C(:,1)-A';
mat_c(:,2)=C(:,2)-A';
mat_c(:,3)=C(:,3)-A';
mat_c(:,4)=C(:,4)-A'
%val_b
C(:,4)=[];
val_b=sum(C*A')
%}


% symbolic code
%{

syms A B C R
syms a1 a2 a3
syms b11 b12 b13 b21 b22 b23 b31 b32 b33 b41 b42 b43
syms c11 c12 c13 c14 c21 c22 c23 c24 c31 c32 c33 c34
syms r1 r2

A = [a1 a2 a3]
B = [b11 b12 b13; b21 b22 b23; b31 b32 b33; b41 b42 b43]
C = [c11 c12 c13 c14; c21 c22 c23 c24; c31 c32 c33 c34]
R = [r1; r2]

val_a = A*transpose(A)

mat_a = [C(:,1:2)*R(1) C(:,3:4)*R(2)]

mat_b = B.*[A;A;A;A]

vec_a = B*transpose(A)

tA = transpose(A);
mat_c = [C(:,1)-tA C(:,2)-tA C(:,3)-tA C(:,4)-tA]

val_b = vec_a(1) + vec_a(2) + vec_a(3) + vec_a(4)

%}
```

## M02024. Relational and Logical Operator 

The following variables are created in advance using 'randi' and will be used for solving questions. 
```matlab
vec1 = char(randi([48 126],1,15)); % a 1 x 15 randomly generated character vector
x = randi([5 30]); % returns a random integer drawn from the interval [5, 30]
y = randi([5 30]); % returns a random integer drawn from the interval [5, 30]
z = randi([5 30]); % returns a random integer drawn from the interval [5, 30]
```
(a) Write a code to check if x lies in more than 20 and less than 25. If yes, assign a logical 1 to 'l_a' and otherwise assign a logical 0. 
(b) Write a code to check if the closest integer of y/3 lies in less than 5 or more than 10. If yes, assign a logical 1 to 'l_b' and otherwise assign a logical 0. 
(c) Write a code to check if x/y is smaller and equal to y/z. If yes, assign a logical 1 to 'l_c' and otherwise assign a logical 0. 

Please use the ASCII table to solve the following problems:
![ascii_table](https://user-images.githubusercontent.com/64098253/90950319-40785080-e41e-11ea-9207-7508e4d34171.png)

(d) Create a 1x3 character vector called 'vec_d', which concatenates every fifth element of 'vec1' (1st, 6th, and 11th values).   
Write a code to check how many number characters ('0', '1', ..., '9') there are in 'vec_d', and assign the result to 'num_d'
(e) Write a code to check how many uppercase letters there are in 'vec_d', and assign the result to 'num_e'.
(f)  Write a code to check how many lowercase letters there are in 'vec_d', and assign the result to 'num_f'.
(g) Write a code to check how many english letters there are in 'vec_d', and assign the result to 'num_g'.

**Solution**
```matlab
vec1 = char(randi([48 126],1,15)); % a 1 x 15 randomly generated character vector
x = randi([5 30]); % returns a random integer drawn from the interval [5, 30]
y = randi([5 30]); % returns a random integer drawn from the interval [5, 30]
z = randi([5 30]); % returns a random integer drawn from the interval [5, 30]

% write your code here

%(a)
l_a = (x>20) && (x<25);

%(b)
l_b = (round(y/3)<5) || (round(y/3)>10);

%(c)
l_c = (x/y) <= (y/z);

%(d)
vec_d = vec1(1:5:end);
is_num1 = and(vec_d(1) >= '0',  vec_d(1) <= '9');
is_num2 = and(vec_d(2) >= '0',  vec_d(2) <= '9');
is_num3 = and(vec_d(3) >= '0',  vec_d(3) <= '9');
num_d = is_num1 + is_num2 +is_num3;

%(e)
is_upper1 = and(vec_d(1) >= 'A',  vec_d(1) <= 'Z');
is_upper2 = and(vec_d(2) >= 'A',  vec_d(2) <= 'Z');
is_upper3 = and(vec_d(3) >= 'A',  vec_d(3) <= 'Z');
num_e = is_upper1 + is_upper2 +is_upper3;

%(f)
is_lower1 = and(vec_d(1) >= 'a',  vec_d(1) <= 'z');
is_lower2 = and(vec_d(2) >= 'a',  vec_d(2) <= 'z');
is_lower3 = and(vec_d(3) >= 'a',  vec_d(3) <= 'z');
num_f = is_lower1 + is_lower2 + is_lower3;

%(g)
num_g = num_e + num_f;
```

## M02025. Pressure Calculation 

'press1', 'press2', 'press3', 'press4', and 'press5' contain pressure data that are collected over a period of 12 days from Station 1, 2, 3, 4, and 5 at 
30 min intervals, starting at 10:00AM and ending at 4 pm (a total of 13 time stamps). Here is the script to generate syntatic values for these variables. 

```matlab
press1 = randi([10 30], 13, 12); % data contained at station 1
press2 = randi([0 20], 13, 12); % data contained at station 2
press3 = randi([10 30], 13, 12); % data contained at station 3
press4 = randi([10 60], 13, 12); % data contained at station 4
press5 = randi([0 25], 13, 12); % data contained at station 5

data_press = [press1 press2 press3 press4 press5]; % joining all staions data in the horizontal direction
clearvars press1 press2 press3 press4  press5 % delete 'press1', 'press2', 'press3', 'press4', 'press5' variables

area_devices = randi(100, 5, 1); % different cross-sectional area of pressure measuring devices
```
'press X' is a 13 x 12 matrix including all pressure data from Station X. 13 rows means 13 different times when measurements were taken and 12 columns means 12 different days of data collecting. 

a) Your boss wants you to find all of the pressure gradients from 11 am to 3 pm during the 10th day of anaylsis from all stations. 
Create an 9 x 5 matrix named as 'data_report', where each row represents pressure data recorded at a certain time interval from all stations. 
For example, the first column of 'data_report' is the pressure data at Station 1 measured at 10th day from 11 am to 3 pm. 

b) Your boss asks you to calculate the force based on the data analysis from each station at 10 am from days 3 to 12. However, your boss says that Station 4 is really old and that the data cannot be trusted, and thus you are asked to exclude that data. He wants you to also report your matrix data in a vertically concatenated manner so that every row represents 10 am data at the corresponding station.
 
The force acting on the pressure measuring devices can be calculated using the equation , where F is force, P is pressure and A is a cross-sectional area of the pressure measuring device.
The cross-sectional areas of the devices at stations are different and their areas are given as 'area_devices'. Each numbered element in 'area_devices' corresponds to the station number. (e.g. the first element of 'area_devices' corresponds to station 1)
Create a 4 x 10 matrix named 'final_data_report' such that the data can be reported in this manner. 
Each row corresponds to the time at which Station X has recorded a pressure value, while each column contains the day in which the measurement was taken.
For example, the first row of 'final_data_report' is the force data at 10 am for day 3 to day 12 from Station 1 in order. 

**Solution**
```matlab
press1 = randi([10 30], 13, 12); % data contained at station 1
press2 = randi([0 20], 13, 12); % data contained at station 2
press3 = randi([10 30], 13, 12); % data contained at station 3
press4 = randi([10 60], 13, 12); % data contained at station 4
press5 = randi([0 25], 13, 12); % data contained at station 5

data_press = [press1 press2 press3 press4 press5]; % joining all staions data in the horizontal direction
clearvars press1 press2 press3 press4  press5 % delete 'press1', 'press2', 'press3', 'press4', 'press5' variables

area_devices = randi(100, 5, 1); % different cross-sectional area of pressure measuring devices

%a)
data_report = data_press(3:11,[10 22 34 46 58]);

% option 1
% data_report=[data_press(3:11,10),data_press(3:11,22),data_press(3:11,34),data_press(3:11,46) data_press(3:11,58)]'

%b)
force_at_st1 = data_press(1,3:12) * area_devices(1);
force_at_st2 = data_press(1,15:24) * area_devices(2);
force_at_st3 = data_press(1,27:36) * area_devices(3);
force_at_st5 = data_press(1,51:60) * area_devices(5);

final_data_report = [force_at_st1; force_at_st2; force_at_st3; force_at_st5];
```
