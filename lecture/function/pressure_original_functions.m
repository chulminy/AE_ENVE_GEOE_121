num_st = 80; num_day = 50;
data_press_2D = zeros(18,num_day*num_st);
for ii=1:num_st
    press_st = randi([10 30], 18, num_day);
    loc_press = ((ii-1)*num_day+1):(ii*num_day);
    data_press_2D(:,loc_press) = press_st;
end

%(a)
stn12_data_2D = ExtrStData(data_press_2D, 12);

% (b)
month_data_2D = ExtrDayData(data_press_2D, 12, 21, 50);

% (c)
values_greater_25_2D = CountGrStData(data_press_2D, 25);




