# Module 10: File I/O

## Table of Contents
- [**M10001. Process Excel Data**](#m10001-process-excel-data)

## M10001. Process Excel Data
nformation about a project a municipal engineering department is given in the Excel file, 'projectdata.xlsx'. 
There are three sheets in this spreadsheet: 
Sheet 1 is called 'Project Budget' and contains information related to the total costs of the project and the budgeted costs. 
Sheet 2 is called 'Supplies List' and contains a list of the supplies and materials the municipality has had to pay for. 
Sheet 3 is called 'Project Data' and contains data that has been collected about the ongoing construction phase of the project.
The 'projectdata.xlsx' file is saved in MATLAB Autograder's directory. This means that you can access it's contents when you write your script in Autograder. You can view the file information by importing the file's contents into MATLAB.
(a) Import all three sheets of the data from Excel into MATLAB. Remember there is a way of using the xlsread function that can give you multiple outputs. It will be useful having both raw data and numeric data for the 'Project Budget' sheet. Please use xlsread to import the data. This question will not be tested but the data read from the file will be used for upcoming questions. 
(b) Create structure variables named 'conc_pipe' and 'roofing' for the supplies corresponding to '300mm Reinforced Concrete Pipe' and 'Roofing'. The fields for each structure variable should be 'quantity', 'unit_cost' and 'manufacturer' and should contain the data associated for each of the items and fields in the Excel spreadsheet 'Supplies List'. 
(c) Create new structures 'conc_pipe1' and 'roofing1', which are the same as 'conc_pipe' and 'roofing', except with 1 more field. Add a field of 'total_cost' which is the products 'quantity' field multiplied by the products 'unit_cost' field.
(d) Create a 1 x 39 cell variable named 'const_data' where each element corresponds to the data from a different day of testing from the sheet 'Project Data'. Inside each cell in 'const_data' is a 2 x 6 cell, with column 1 being the date, column 2 being the concrete spec, column 3 being the soil compaction, column 4 being the location, column 5 being concrete temp and column 6 being soil moisture of testing on that day. 
The first row is the titles (ex. 'Concrete Spec' or 'Soil Moisture') and the second row is the actual data. Here is an example of one of the inner cell.

![M10001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M10001(1).png)

A part of the script to complete this problem is given below. Your job is to finish the script by populating 'sub_cell' with the correct data. This question is asking you to make cells inside a cell You only have to assign the correct elements to 'sub_cell'.

```matlab
const_data = cell(1,39); % 39 Days of data in the Excel spreadsheet 'Project Data'
for ii = 1:39 
    sub_cell = cell(2,6); % There are 6 pieces of information wanted in each cell of 'sub_cell' and 2 rows are wanted (row 1 is titles, and row 2 is the data)
    
    %% Populate the cell 'sub_cell' with the data from the 'Project Data' spreadsheet %% 
 
    const_data{ii} = sub_cell;
end
```

(e) Create a structure variable named 'budget_analysis' that contains 3 fields.  You need to use the data in 'Project Budget'. 
The first field is 'budget_td' and represents how much over/under the to-date budget the project currently is. A positive value indicates that the project is currently under budget. 
You need to subtract 'To Data Expenses' from 'To Data Budget' for all items and sum them up. 
The second field is 'final_budget', the final budget of the project. You need to sum final budgets for all items. 
The third field is 'overbudget_item' which is the item having currently the most over-budget. You need to assing a name of budget item in the first column.

(f) Create a new Excel sheet 'upd_budget.xlsx' that appears as shown: Please use xlswrite to create this Excel file. It is reccommended you use a school computer with MATLAB R0218a to create and view the Excel sheet.

![M10001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M10001(2).png)
[**ProjectData**](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/projectdata.xlsx)


**Solution**

```matlab
if exist('upd_budget.xlsx', 'dir')
    delete('upd_budget.xlsx');
end

% (a)
[budg_num,~,proj_budget] = xlsread('projectdata.xlsx', 'Project Budget');
[~,~,supplies] = xlsread('projectdata.xlsx', 'Supplies List');
[~,~,proj_data] = xlsread('projectdata.xlsx', 'Project Data');

% (b)
conc_pipe = struct('quantity', supplies{2,2}, 'unit_cost', ...
    supplies{2,3}, 'manufacturer', supplies{2,4});
roofing = struct('quantity', supplies{5,2}, 'unit_cost', ...
    supplies{5,3}, 'manufacturer', supplies{5,4});

% (c)
conc_pipe1 = conc_pipe;
roofing1 = roofing;
conc_pipe1.total_cost = conc_pipe.quantity * conc_pipe.unit_cost;
roofing1.total_cost = roofing.quantity * roofing.unit_cost;

% (d)
n_data = 39;
n_categ = 6;
const_data = cell(1, n_data);
for ii = 1:n_data
    sub_cell = cell(2, n_categ);
    for jj = 1:n_categ
        sub_cell{1,jj} = proj_data{1, jj};
        sub_cell{2,jj} = proj_data{ii+1, jj};
    end
    const_data{ii} = sub_cell;
end

% (e)
final_budg = sum(budg_num(:,3));
over_under = budg_num(:,2) - budg_num(:,1);
net_overunder = sum(over_under);
[~, overbudget_num] = min(over_under);

over_item = proj_budget{overbudget_num+1, 1};

budget_analysis = struct('budget_td', net_overunder, 'final_budget' ...
    , final_budg, 'overbudget_item', over_item);

% (f)
titles = ["To Date Budget", "To Date Expenses", "To Date Over/Under", ...
    "Final Budget"];

data = [sum(budg_num(:,2)) sum(budg_num(:,1)) net_overunder final_budg];

xlswrite('upd_budget.xlsx', titles, 'C3:F3');
xlswrite('upd_budget.xlsx', data, 'C4:F4');
```
