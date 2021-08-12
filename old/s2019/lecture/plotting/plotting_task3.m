% Plotting
% Author: Chul Min Yeum
% Email: cmyeum@uwaterloo.ca
% Last updated: 2019-06-12

% Write your script to solve questions in a cumulative way

%% Task 3: Advanced Plotting
close;clc;clear

x = 1:7;
y = [10 12 15 13 13 17 11];
plot(x,y, '-ro')

legend('Waterloo');
xlabel('Week');
ylabel('Temperature');
title('Task3-base plot');

%% Task3-Q1: Change the font size (20) of all axis labels
% https://www.mathworks.com/help/matlab/ref/xlabel.html#namevaluepairarguments
close;clc;clear

%% Task3-Q2: Change x-axis tick values as (Mon, Tue, Wed, Thu, Fri, Sat, Sun)
% https://www.mathworks.com/help/matlab/ref/xticks.html
% https://www.mathworks.com/help/matlab/ref/xticklabels.html
close;clc;clear

%% Task3-Q3: Change the box line width, tick font size, tick font weigth
% https://www.mathworks.com/help/matlab/ref/matlab.graphics.axis.axes-properties.html
%{
ax = gca;
ax.FontSize = 12;
ax.FontWeight = 'bold';
ax.LineWidth = 2;
%}
close;clc;clear

%% Task3-Q4: Change the legend position from right top to left top
% https://www.mathworks.com/help/matlab/ref/legend.html#bt6ef_q-1-lcn
close;clc;clear

%% Task3-Q5: Change marker size, edge color, and face color
% https://www.mathworks.com/help/matlab/ref/plot.html
% check the examples
close;clc;clear

%% Task3-Q6: Change the figure size
% https://www.mathworks.com/help/matlab/ref/figure.html#namevaluepairarguments
% set(gcf, 'Position', [100 100 1000 500]);
close;clc;clear

%% Task3-Q7: Draw the figure for Q5 in a figure window named 'AE121 Q5' and
%% the figure for Q6 in a figure window named 'AE121 Q6'
% https://www.mathworks.com/help/matlab/ref/figure.html#namevaluepairarguments
% https://www.mathworks.com/help/matlab/ref/matlab.ui.figure-properties.html#buiwuyk-1-NumberTitle
close;clc;clear

%% Task3-Q8: Add a text of 'Today' and arrow at the marker of Friday's temperature
% https://www.mathworks.com/help/matlab/ref/text.html
close;clc;clear

