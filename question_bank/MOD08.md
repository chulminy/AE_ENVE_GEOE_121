# Module 08: Plotting

## Table of Contents
- [**M08001. Viscosity Plot**](#m08001-viscosity-plot)
- [**M08002. Solar Radiation Plot**](#m08002-solar-radiation-plot)
- [**M08003. Student Enrollment Plot**](#m08003-student-enrollment-plot)
- [**M08004. Function and its Absolute Value**](#m08004-function-and-its-absolute-value)


## M08001. Viscosity Plot

Create a plot which replicates the plot shown below:

![M08001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M08001.jpg)

Here is the data used to create this plot.

```matlab
temp = [10 20 30 40 50 60 70 80 90];
water = [1.293 1.002 0.800 0.656 0.549 0.468 0.405 0.356 0.316]; 
acetone = [0.355 0.323 0.295 0.272 0.253 0.236 0.221 0.208 0.196];
benzene = [0.731 0.641 0.564 0.499 0.443 0.394 0.353 0.317 0.285];
ethanol = [1.448 1.173 0.961 0.796 0.665 0.561 0.476 0.408 0.352]; 
```

**Solution**

```matlab
temp = [10 20 30 40 50 60 70 80 90];
water = [1.293 1.002 0.800 0.656 0.549 0.468 0.405 0.356 0.316]; 
acetone = [0.355 0.323 0.295 0.272 0.253 0.236 0.221 0.208 0.196];
benzene = [0.731 0.641 0.564 0.499 0.443 0.394 0.353 0.317 0.285];
ethanol = [1.448 1.173 0.961 0.796 0.665 0.561 0.476 0.408 0.352]; 

plot(temp,water, '.b', 'markersize', 10); hold on; grid on;
plot(temp,acetone, '.k', 'markersize', 10); 
plot(temp,benzene, '.r', 'markersize', 10); 
plot(temp,ethanol, '.c', 'markersize', 10); hold off
title('Dynamic Viscosities of Various Fluids', 'fontsize', 13);
xlabel('Temperature (Celsius)'); ylabel('Dynamic Viscosity (mPa*s)');
ylim([0 2]); 
set(gcf, 'Position', [0 0 1000 500]);
yticks(0.2:0.2:1.8);
legend('Water', 'Acetone', 'Benzene', 'Ethanol', 'Location', 'northeast');
```


## M08002. Solar Radiation Plot
Create a plot that replicates the plot shown below:

![M08002](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M08002.jpg)

Here is the data used to create this plot. Note the first value correcponds to the value for the first month (January) and second value corresponds to the value for the second month (February) etc.

```matlab
declination_data = [-20 -10.8 0 11.6 20 23.45 20.6 12.3 0 -10.5 -19.8 -23.45];
```

**Solution**

```matlab
declination_data = [-20 -10.8 0 11.6 20 23.45 20.6 12.3 0 -10.5 -19.8 -23.45];
x = 1:12;

figure(1);

plot(x, declination_data, ':kd', 'markeredge', 'b', 'markerfacecolor', 'r',...
    'linewidth', 2)
xlabel('\bfMonth', 'fontsize', 15);
ylabel('\bfDeclination (Degrees)', 'fontsize', 15); 
title('Solar Radiation Intensity Related Data');
xticks(1:12); xticklabels({'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'...
    , 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'});
xlim([0 13]); ylim([-25 25]);
grid on
text([3 9]+0.25, declination_data([3 9]), '\bf\leftarrowNo change',...
    'fontsize', 8, 'HorizontalAlignment', 'Left');

set(gcf,'Position', [100 100 700 400]);
```


## M08003. Student Enrollment Plot
Create a plot that replicates the plot shown below:

![M08003](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M08003.jpg)

Here is the data for to create the plot:

```matlab
students = [1234473 1260435 1281906 1299174 1303959 1306251 1320735];
year = [2010 2011 2012 2013 2014 2015 2016];
```

**Solution**

```matlab
students = [1234473 1260435 1281906 1299174 1303959 1306251 1320735];
year = [2010 2011 2012 2013 2014 2015 2016];

plot(year, students./10^6, 'ko', 'markerfacecolor', 'r')
title('Engineering, Architecture and Related Technologies University Enrollement in Canada');
xlim([2009.5 2016.5]);
xlabel('Year school year started');
ylabel('Number of Students Enrolled (million)');
set(gcf,'Position', [0 0 1000 500]);
grid on;
```

## M08004. Function and its Absolute Value 
Create a plot that replicates the plot shown below:

![M08004](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M08004.jpg)

**Solution**

```matlab
figure(1);

x = -6:0.1:6;
y1 = x.^2 -4;
y2 = abs(y1);
x_axis = -6:0.1:6;
y3 = zeros(size(x_axis));
plot(x,y1, 'b', 'linewidth', 2)
hold on
plot(x,y2, '--r', 'linewidth', 2)
plot(x_axis,y3, '--k')
xlim([-6 6]);
xlabel('x'); ylabel('y');
grid on;
hold off
legend('\bfy = x^2-4', '\bfy = |x^2-4|');
legend('Location', 'north');

set(gcf,'Position', [100 100 600 400]);
```
