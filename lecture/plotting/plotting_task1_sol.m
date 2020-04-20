% Plotting
% Author: Chul Min Yeum
% Email: cmyeum@uwaterloo.ca
% Last updated: 2019-06-12

% Write your script to solve questions in a cumulative way

%% Task 1: Plot point
close;clc;clear
fig = figure(1);
set(fig,'Position', [100 100 300 200]);

x = 10;
y = 12;
plot(x,y, 'r*')

xlabel('Time');
ylabel('Temperature');

%% Task1-Q0: Change point color
% https://www.mathworks.com/help/matlab/ref/plot.html#btzitot-LineSpec
close;clc;clear

x = 10;
y = 12;
plot(x,y, 'k*')

xlabel('Time');
ylabel('Temperature');
title('Task1-Q0');

%% Task1-Q1: Change a point marker
% https://www.mathworks.com/help/matlab/ref/plot.html#btzitot-LineSpec
close;clc;clear

x = 10;
y = 12;
plot(x,y, 'ko')

xlabel('Time');
ylabel('Temperature');
title('Task1-Q1');

%% Task1-Q2: Add one more point at (11, 13)
% x,y <- vector, not scalar
close;clc;clear

x = [10 11];
y = [12 13];
plot(x,y, 'ko')

xlabel('Time');
ylabel('Temperature');
title('Task1-Q2');

%% Task1-Q3: Change the minimum and maximum values in x-axis (9 to 13) and y-axis (10 to 15)
% axis([minx maxx miny maxy])
close;clc;clear

x = [10 11];
y = [12 13];
plot(x,y, 'ko')

xlabel('Time');
ylabel('Temperature');
axis([9 13 10 15]);
title('Task1-Q3');

%% Task1-Q4: Change labels for x and y axis as 'Pressure' and 'Force' and the
%% graph title to 'Task1-Q4'
close;clc;clear

x = [10 11];
y = [12 13];
plot(x,y, 'ko')

xlabel('Pressure');
ylabel('Force');
axis([9 13 10 13]);
title('Task1-Q4');

%% Task1-Q5: Make all label texts as a bold font
% '\bf ~~~~'
close;clc;clear

x = [10 11];
y = [12 13];
plot(x,y, 'ko')

xlabel('\bf Pressure');
ylabel('\bf Force');
axis([9 13 10 15]);
title('Task1-Q5');
