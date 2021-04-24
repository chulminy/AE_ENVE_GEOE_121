# Module 09: Data Structure

## Table of Contents
- [**M09001. Course Data: Cell Array (★★★)**](#m09001-course-data-cell-array)
- [**M09002. Performance Review (★★)**](#m09002-performance-review)
- [**M09003. Is This Mammals, Birds, or Fishes?  (★★)**](#m09003-is-this-mammals-birds-or-fishes)


## M09001. Course Data: Cell Array (★★★)
There are 14 students in a class. They are from different civil engineering programs and cohorts. 
They submitted four assignments and took midterm and final exam. Those information is stored in the following excel file. 

![M09001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M09001(1).png)

Then, the data is stored in  a cell-type variable named 'class_data'. 

![M09001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M09001(2).png)

Please write a script to compute the following values using this variable. 
(1) 'num_2A' includes the number of 2A students in the class. 
(2) 'avg_clss_final' includes the avarge of the final exam for all students in the class
(3) 'avg_3B_final' includes the avarge of the final exam for 3B students in the class
(4) 'score_80_exam' include the number of students who received more than 80 either from midterm OR final exam. 
(5) The weight contributions to the final grade for hw1,hw2, hw3, hw4, midterm, and final are 0.1, 0.1, 0.1, 0.2, 0.2, and 0.3, respectively. 
'best_student_name' includes the first name of the best student among all student who received the height final mark. 
(6) 'best_2A_student_name' include the first name of the best student among 2A students who received the height final mark. 
Note that you solution/script should be generally applicable for 'class_data' with different data entry. 
Please do not manually assign the values to compute the values. 

```matlab
load tut09.mat class_data
```

This script is to import (load) 'class_data' stored in 'tut09.mat'. You can find how to save and load variables from MAT files in LEC10 (Take a look at the slide). 

**Solution**
Please watch this:
[**https://youtu.be/Lfnj7DJsXak?t=5**](https://youtu.be/Lfnj7DJsXak?t=5)


## M09002. Performance Review (★★)

A large company does performance reviews on its 100 employees. After each meeting, their performance is summarized into a single number from 1 to 5, where 5 represents a great performance and 1 represents a worst performance. The cell array named 'emp_evals' contains the evaluations from all work terms for every employee. 
'emp_evals' is a cell variable, where each cell contains the evaluations/work terms of an employee, and is in the form of a numeric row vector. Each employee went through a different number of work terms so the size of a row vector in each cell varies. 
The sample code generating ‘emp_evals’: 

```matlab
emp_evals = cell(1,100); 

for ii=1:100 
    num_work_terms = randi([4 70]);  % generating a random number of work terms ranging from 4 to 70
    emp_evals{ii} = randi(5,1, num_work_terms); % populating each cell with a 1 x 'num_work_terms' numeric vector conataing values ranging from 1 to 5
end 
```

(a) Please design a function named AvgEmpScr, which has one input and one output. The input is ‘emp_evals’ described above. The output named ‘avg_emp’ is a 1 x 100 numeric vector that contains the average score of the evaluations for each employee.  

Here is the function header sytax:

```matlab
function avg_emp_rank=AvgEmpScr(emp_evals)
```

(b) Please design a function named EmpSalary, which has one input and has one output. The input ‘emp_evals’ is described above. The output named ‘salary_emps’ is a 1 x 100 numeric vector that contains the salary for each employee. The salary for each employee is estimated based on his/her average evaluation and its details are shown in the table below:  

![M09002](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M09002.png)

Here is the function header sytax:

```matlab
function salary_emps=EmpSalary(emp_evals)
```

Note that you can reuse AvgEmpScr.

**Solution**

```matlab
emp_evals = cell(1,100); 

for ii=1:100 
    num_work_terms = randi([4 70]); % generating a random number of work terms ranging from 4 to 70
    emp_evals{ii} = randi(5,1, num_work_terms); % populating each cell with a 1 x 'num_work_terms' numeric vector conataing values ranging from 1 to 5
end 

%test for AvgEmpScr
avg_emp_rank=AvgEmpScr(emp_evals);

%test for EmpSalary
emp_salary=EmpSalary(emp_evals);

% Please design your functions called AvgEmpScr and EmpSalary

function avg_emp_rank = AvgEmpScr(emp_evals)
avg_emp_rank = zeros(1,100);
for ii = 1:100
    emp_data = emp_evals{ii};
    mn_scr = mean(emp_data);
    avg_emp_rank(ii) = mn_scr;
end
end

function salary_emps = EmpSalary(emp_evals)
ratings = AvgEmpScr(emp_evals);
salary_emps = zeros(1,100);
for ii = 1:100
    if ratings(ii) >= 3.5
        salary_emps(ii) = 60000;
    elseif ratings(ii) < 2
        salary_emps(ii) = 50000;
    else
        salary_emps(ii) = 55000;
    end
end

end
```


## M09003. Is This Mammals, Birds, or Fishes?  (★★)
Create function named WhatVertGroup which accept two inputs and one output. 

```matlab
function groups = WhatVertGroup (verterbrate, name)
```

'vertebrate' is a cell array and given as the following:

```matlab
vertebrate = cell(1,3);
mammals = ["gorilla", "rat", "kangaroos", "dog", "cat", "whale", "dolphin", "cheetah", "lion", "sheep"];
birds = ["crow", "peacock", "dove", "sparrow", "goose", "ostrich", "pigeon",  "turkey", "hawk", "bald eagle", "raven", "parrot"];
fishes = ["betta","goldfish", "guppies", "cod", "catfish", "bass", "carp", "bluefish"];

vertebrate{1} = mammals;
vertebrate{2} = birds;
vertebrate{3} = fishes;
```

'name' is a string scalar that includes a species name. 
The purpose of this function is to determine the group name ("mammals", "birds", or "fishes") where the 'name' of the species is and assign its group name in 'groups'. 
'groups' is a string scalar which can only output the following strings: "mammals", "birds", "fishes", or "no result". 
If 'name' is not in the list of species names listed in 'vertebrate', "no result" is assigned to 'groups'. 

Here are some sample results:

```matlab
>> groups = WhatVertGroup(verterbrate, "dog")

groups = 

    "mammals"
    
>> groups = WhatVertGroup(vertebrate, "cod")

groups = 

    "fishes"
    
>> groups = WhatVertGroup(vertebrate, "sparrow")

groups = 

    "birds"

>> groups = WhatVertGroup(vertebrate, "waterloo")

groups = 

    "no result"
```

Note that you should not manually assign the values to the test variables!!

**Solution**

```matlab
vertebrate = cell(1,3);
mammals = ["gorilla", "rat", "kangaroos", "dog", "cat", "whale", "dolphin", "cheetah", "lion", "sheep"];
birds = ["crow", "peacock", "dove", "sparrow", "goose", "ostrich", "pigeon",  "turkey", "hawk", "bald eagle", "raven", "parrot"];
fishes = ["betta","goldfish", "guppies", "cod", "catfish", "bass", "carp", "bluefish"];

vertebrate{1} = mammals;
vertebrate{2} = birds;
vertebrate{3} = fishes;
clearvars mammals birds fishes;

test_group1 = WhatVertGroup (vertebrate, "dog");
test_group2 = WhatVertGroup (vertebrate, "catfish");
test_group3 = WhatVertGroup (vertebrate, "pigeon");
test_group4 = WhatVertGroup (vertebrate, "kitchener");
% please deisgn your function called 'WhatVertGroup'


function groups = WhatVertGroup (vertebrate, name)

if any(vertebrate{1} == name)
   groups = "mammals"; 
elseif any(vertebrate{2} == name)
   groups = "birds"; 
elseif any(vertebrate{3} == name)
   groups = "fishes"; 
else
   groups = "no result"; 
end

end

% Noreen's sol

% function groups = WhatVertGroup (verterbrate, name)
% 
% groups_vec = ["mammals" "birds" "fishes"];
% groups = "no result";
% for ii = 1:numel(verterbrate)
%     group_test = verterbrate{ii};
%     
%     for jj = 1:numel(group_test)
%         
%         name_test = group_test(jj);
%         
%         if strcmp(name_test,name)
%             groups = groups_vec(ii);
%             break
%         end
%         
%     end        
% end
% end
```
