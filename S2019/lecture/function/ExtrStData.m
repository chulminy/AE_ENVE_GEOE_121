function st_data = ExtrStData(data_press_2D, st_id)

num_day = 50;

st_num = st_id;
loc_col = ((st_num-1)*num_day+1):(st_num*num_day);
st_data = data_press_2D(:,loc_col);

end

