function partial_st_data = ExtrDayData(data_press_2D, st_id, str_day, end_day)

st_data = ExtrStData2(data_press_2D, st_id);
partial_st_data = st_data(:, str_day:end_day);

end

function st_data = ExtrStData2(data_press_2D, st_id)

num_day = 50;

st_num = st_id;
loc_col = ((st_num-1)*num_day+1):(st_num*num_day);
st_data = data_press_2D(:,loc_col);

end


