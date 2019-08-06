num_st = 80; num_day = 50;
data_press_2D = zeros(18,num_day*num_st);
for ii=1:num_st
    press_st = randi([10 30], 18, num_day);
    loc_press = ((ii-1)*num_day+1):(ii*num_day);
    data_press_2D(:,loc_press) = press_st;
end

%(a)
st_num = 12;
loc_col = ((st_num-1)*num_day+1):(st_num*num_day);
stn12_data_2D = data_press_2D(:,loc_col);

% (b)
st_num = 3;
loc_col = ((st_num-1)*num_day+21):((st_num-1)*num_day+50);
month_data_2D = data_press_2D(:,loc_col);

% (c)
values_greater_25_2D = zeros(80,1);
for ii=1:num_st
    loc_col = ((ii-1)*num_day+1):(ii*num_day);
    st_data_2D = data_press_2D(:,loc_col);
    values_greater_25_2D(ii) = sum(st_data_2D>25, 'all');
end
