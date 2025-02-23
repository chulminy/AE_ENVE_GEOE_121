% Plotting
% Author: Chul Min Yeum
% Email: cmyeum@uwaterloo.ca
% Last updated: 2019-06-12

% Write your script to solve questions in a cumulative way

%% Task 2: Plot a vector
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, 'r')

xlabel('Day');
ylabel('Temperature');
title('Task2-base plot');

%% Task2-Q1: Change the line as a dashed line
% https://www.mathworks.com/help/matlab/ref/plot.html#btzitot-LineSpec
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r')

xlabel('Day');
ylabel('Temperature');
title('Task2-Q1');

%% Task2-Q2: Add data point markers on the line
% https://www.mathworks.com/help/matlab/ref/plot.html#btzitot-LineSpec
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r*')

xlabel('Day');
ylabel('Temperature');
title('Task2-Q2');

%% Task2-Q3: Change the line width
% https://www.mathworks.com/help/matlab/ref/plot.html#namevaluepairarguments
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r*', 'linewidth', 2)

xlabel('Day');
ylabel('Temperature');
title('Task2-Q3');

%% Task2-Q4: Make the same length for the data along each axis
% See the axis. The unit lengthes in x- and y-axis are different. How to
% make them identical? axis equal
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r*', 'linewidth', 2)

axis equal
xlabel('Day');
ylabel('Temperature');
title('Task2-Q4');

%% Task2-Q5: Add another line using "hold on" (different color lines)
% x2 = 2:8; 
% y2 = [11 12 15 16 12 11 13];
% https://www.mathworks.com/help/matlab/ref/hold.html
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r*', 'linewidth', 2)

hold on;
x2 = 2:8; 
y2 = [11 12 15 16 12 11 13];
plot(x2,y2, '-go', 'linewidth', 2)

axis equal
xlabel('Day');
ylabel('Temperature');
title('Task2-Q5');

%% Task2-Q6: Turn on grid
% grid on
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r*', 'linewidth', 2)

hold on;
x2 = 2:8; 
y2 = [11 12 15 16 12 11 13];
plot(x2,y2, '-go', 'linewidth', 2)

axis equal
grid on
xlabel('Day');
ylabel('Temperature');
title('Task2-Q6');

%% Task2-Q7: Add legend (label) to your graph (Let's say 'Waterloo' and 'Kitchener')
% https://www.mathworks.com/help/matlab/ref/legend.html
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r*', 'linewidth', 2)

hold on;
x2 = 2:8; 
y2 = [11 12 15 16 12 11 13];
plot(x2,y2, '-go', 'linewidth', 2)

legend('Waterloo', 'Kitchener');
axis equal
grid on
xlabel('Day');
ylabel('Temperature');
title('Task2-Q7');

%% Task2-Q8: Make the legend text as a bold font
close;clc;clear

x = 1:7;
y = [11 13 14 12 19 11 12];
plot(x,y, '--r*', 'linewidth', 2)

hold on;
x2 = 2:8; 
y2 = [11 12 15 16 12 11 13];
plot(x2,y2, '-go', 'linewidth', 2)

legend('\bf Waterloo', '\bf Kitchener');
axis equal
grid on
xlabel('Day');
ylabel('Temperature');
title('Task2-Q8');

%% Task2-Q9: Think about what components you want to add to this graph? Any ideas are welcome!!!
close;clc;clear

x = -360:1:360;
y = tand(x);
plot(x, y);

hold on;

y2 = -60:1:60;
x2 = 270*ones(numel(y2),1);

plot(x2, y2, ':k')























