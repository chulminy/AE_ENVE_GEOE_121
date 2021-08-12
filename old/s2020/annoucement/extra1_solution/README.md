# Extra Assignment 1

<img src="graph.png" width="1000">

**Solution**

```matlab
x = 1:9; y1 = [22 26 29 25 24 22 23 24 27];
plot(x,y1, '-bo', ...
    'LineWidth', 2, ...
    'MarkerSize', 7, ...
    'MarkerEdgeColor', 'r', ...
    'MarkerFaceColor', 'b')

hold on;
x = 1:9; y2 = [24 25 26 21 18 17 18 19 21];
plot(x,y2, '-go', ...
    'LineWidth', 2, ...
    'MarkerSize', 7, ...
    'MarkerEdgeColor', 'r', ...
    'MarkerFaceColor', 'g')

text(x(3)+0.5, y1(3), 'Max', ...
    'FontSize' , 15, ...
    'FontWeight', 'bold', ...
    'HorizontalAlignment', 'center');

text(x(6), y2(6)-0.8, 'Min', ...
    'FontSize' , 15, ...
    'FontWeight', 'bold', ...
    'HorizontalAlignment', 'center');

hold off;

xticks(1:9);
xticklabels({'5pm','8pm', '11pm', '2am', '5am', '8am', '11am', '2pm', '5pm'});

legend('\bf July 20', '\bf July 25', 'Location', 'northeast', 'FontSize', 15);
legend('boxoff');

ylim([14 30])

set(gca, 'Fontsize', 12, 'FontWeight', 'bold');
set(gca, 'LineWidth', 2);
set(gcf, 'Position', [100 100 1000 500]);

title('Waterloo, Ontario', 'fontsize', 18);

xlabel('\bf Time', 'fontsize', 15);
ylabel('\bf Temperature (celsius)', 'fontsize', 15);
```
