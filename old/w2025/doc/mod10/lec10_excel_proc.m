% filename = 'lec10_excel_file.xlsx';
% M = readmatrix(filename);
% 
% M_num1 = M;
% idx = logical(sum(isnan(M_num1)));
% M_num1(:,idx) = [];
% 
% M1 = readmatrix(filename, 'Range', 'E2:E8');
% M2 = readmatrix(filename, 'Range', 'G2:L8');
% M_num2 = [M1 M2];

% filename = 'lec10_excel_file.xlsx';
% M = readcell(filename);
% 
% M1 = readcell(filename, 'Range', 'E2:E8');
% M2 = readcell(filename, 'Range', 'G2:L8');
% M_num_cell = [M1 M2];
% M_num = cell2mat(M_num_cell);


% M_num1 = M;
% idx = logical(sum(isnan(M_num1)));
% M_num1(:,idx) = [];


cl_info = cell(3,7);

cl_info{1,1} = 'Chul Min';
cl_info{1,2} = 'CIVE';
cl_info{1,3} = 1076123;
cl_info{1,4} = 80;
cl_info{1,5} = 70;
cl_info{1,6} = 10;
cl_info{1,7} = '4B';

cl_info{2,1} = 'Noreen';
cl_info{2,2} = 'ENVE';
cl_info{2,3} = 3026327;
cl_info{2,4} = 60;
cl_info{2,5} = 50;
cl_info{2,6} = 80;
cl_info{2,7} = '2A';

cl_info{3,1} = 'Vlad';
cl_info{3,2} = 'ENVE';
cl_info{3,3} = 2046426;
cl_info{3,4} = 40;
cl_info{3,5} = 30;
cl_info{3,6} = 70;
cl_info{3,7} = '2A';


cl_header = {'Name', 'Program', 'ID', 'Exam', 'Quiz', 'Homework', 'Cohort'};
cl_all = cat(1, cl_header, cl_info);

cl_all1 = [cl_header; cl_info]

writecell(cl_all, 'class_info.xlsx');






