%% Lab 06 Problem 3 Solutions: Pressure Calculation Functions
num_st = 80;
num_day = 50;
num_meas = 18;
data_press_2D = zeros(num_meas,num_day*num_st);

for ii=1:num_st
    press_st = randi([10 30], 18, num_day);
    loc_press = ((ii-1)*num_day+1):(ii*num_day);
    data_press_2D(:,loc_press) = press_st;
end
clearvars press_st loc_press

test_day = randi(50);

data_set = {data_press_2D, num_st, num_day};

testa = DayData(data_set, test_day);


function output_data = DayData(data_set, day)

press_data = data_set{1};
num_st = data_set{2};
num_day = data_set{3};

ind_day = day: num_day: (num_day*num_st);
output_data = press_data(:,ind_day);

end

