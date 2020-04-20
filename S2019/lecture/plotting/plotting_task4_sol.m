% Plotting
% Author: Chul Min Yeum
% Email: cmyeum@uwaterloo.ca
% Last updated: 2019-06-12

% Write your script to solve questions in a cumulative way

%% Task 4: Bar Charts
close; clc; clear

x = 1:7;
y = [10 12 15 13 13 17 11];

figure(1); bar(x,y);
legend('Waterloo');
xlabel('Week');
ylabel('Temperature');
title('Task4-base graph');

%% Task4-Q1: Change x-axis tick values as (Mon, Tue, Wed, Thu, Fri, SAT, SUN) 
%% for both graphs
% https://www.mathworks.com/help/matlab/ref/xticks.html
% https://www.mathworks.com/help/matlab/ref/xticklabels.html
close;clc;clear

x = 1:7;
y = [10 12 15 13 13 17 11];

figure(1); bar(x,y);
xticks(1:7);
xticklabels({'Mon','Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'});
legend('Waterloo');
xlabel('Week');
ylabel('Temperature');
title('Task4-Q1');

%% Task4-Q2: Make your bar colorful
% https://www.mathworks.com/help/matlab/ref/bar.html#namevaluepairarguments
close;clc;clear

x = 1:7;
y = [10 12 15 13 13 17 11];

figure(1); bar(x,y, 'FaceColor', 'y', 'EdgeColor', 'b');
xticks(1:7);
xticklabels({'Mon','Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'});
legend('Waterloo');
xlabel('Week');
ylabel('Temperature');
title('Task4-Q2');

%% Task4-Q3: Change the line thickness of the graph boundary
% https://www.mathworks.com/help/matlab/ref/matlab.graphics.axis.axes-properties.html
close;clc;clear

x = 1:7;
y = [10 12 15 13 13 17 11];

figure(1); bar(x,y, 'FaceColor', 'y', 'EdgeColor', 'b');
xticks(1:7);
xticklabels({'Mon','Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'});

ax = gca;
ax.FontSize = 12;
ax.FontWeight = 'bold';
ax.LineWidth = 2;

legend('Waterloo');
xlabel('Week');
ylabel('Temperature');
title('Task4-Q3');

%% Task4-Q4: Add Kitchener temperatures and the corresponding legends (Two bars)
% https://www.mathworks.com/help/matlab/ref/bar.html
%{
x2 = 1:7;
y2 = [13 11 12 11 12 16 10];
%}
close;clc;clear

x = 1:7;
y = [10 12 15 13 13 17 11];

x2 = 1:7;
y2 = [13 11 12 11 12 16 10];

figure(1); bar(x,[y' y2']);
xticks(1:7);
xticklabels({'Mon','Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'});

ax = gca;
ax.FontSize = 12;
ax.FontWeight = 'bold';
ax.LineWidth = 2;

legend('Waterloo', 'Kitchener');
xlabel('Week');
ylabel('Temperature');
title('Task4-Q4');

%% Task4-Q5: Add Kitchener temperatures and the corresponding legends (Stacked)
% https://www.mathworks.com/help/matlab/ref/bar.html
%{
x2 = 1:7;
y2 = [13 11 12 11 12 16 10];
%}
close;clc;clear

x = 1:7;
y = [10 12 15 13 13 17 11];

x2 = 1:7;
y2 = [13 11 12 11 12 16 10];

figure(1); bar(x,[y' y2'], 'stacked');
xticks(1:7);
xticklabels({'Mon','Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'});

ax = gca;
ax.FontSize = 12;
ax.FontWeight = 'bold';
ax.LineWidth = 2;

legend('Waterloo', 'Kitchener');
xlabel('Week');
ylabel('Temperature');
title('Task4-Q5');







