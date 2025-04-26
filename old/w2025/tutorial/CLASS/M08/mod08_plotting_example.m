load mod08_data

avg_low = mod08_data(:,1);
avg_high = mod08_data(:,2);

figure(1);

plot(1:12,avg_low, '-bo', ...
    'LineWidth', 2, ...
    'MarkerSize', 6, ...
    'MarkerEdgeColor', 'b'); hold on;

plot(1:12,avg_high, '-go', ...
    'LineWidth', 2, ...
    'MarkerSize', 6, ...
    'MarkerEdgeColor', 'r')

[~, I] = max(avg_high);

text(I+0.1, avg_high(I)+1.5, 'Peak Temp', ...
    'FontSize' , 10, ...
    'FontWeight', 'bold', ... 
    'HorizontalAlignment', 'left'); hold off;

xlim([1 12]);
xticks(1:12);
xticklabels({'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'});

legend('\bf Annual lows', 'Annual highs',  'Location', 'northwest', 'FontSize', 15);
set(gca, 'Fontsize', 13, 'FontWeight', 'bold');
set(gca, 'LineWidth', 2);
set(gcf, 'Position', [100 100 1000 600]);

xlabel('\bf Month', 'fontsize', 15);
ylabel('\bf Temperature (Degrees)', 'fontsize', 18);
title('Average Temperature in Waterloo (Chul Min)', 'fontsize', 20);
