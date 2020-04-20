num_st = 80; num_day = 50;
data_press_2D = zeros(18,num_day*num_st);
for ii=1:num_st
    press_st = randi([10 30], 18, num_day);
    loc_press = ((ii-1)*num_day+1):(ii*num_day);
    data_press_2D(:,loc_press) = press_st;
end

%(a)
stn12_data_2D = ExtrStDataNew(data_press_2D, 12);

% (b)
month_data_2D = ExtrDayDataNew(data_press_2D, 12, 21, 50);

% (c)
values_greater_25_2D = CountGrStDataNew(data_press_2D, 25);


function st_data = ExtrStDataNew(data_press_2D, st_id)

num_day = 50;

st_num = st_id;
loc_col = ((st_num-1)*num_day+1):(st_num*num_day);
st_data = data_press_2D(:,loc_col);

end

function partial_st_data = ExtrDayDataNew(data_press_2D, st_id, str_day, end_day)

st_data = ExtrStDataNew(data_press_2D, st_id);
partial_st_data = st_data(:, 21:50);

end

function num_thrs_data = CountGrStDataNew(data_press_2D, thrs)
num_st = 80;
num_thrs_data= zeros(num_st,1);

for ii=1:num_st
    st_data = ExtrStDataNew(data_press_2D, ii);
    num_thrs_data(ii) = sum(st_data>thrs, 'all');
end
end