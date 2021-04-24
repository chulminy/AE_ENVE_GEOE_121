function num_thrs_data = CountGrStData(data_press_2D, thrs)
num_st = 80;
num_thrs_data= zeros(num_st,1);

for ii=1:num_st
    st_data = ExtrStData(data_press_2D, ii);
    num_thrs_data(ii) = sum(st_data>thrs, 'all');
end





% function num_thrs_data = CountGrStData(data_press_2D, thrs)
% num_st = 80;
% num_thrs_data= zeros(num_st,1);
% 
% for ii=1:num_st
%     st_data = ExtrStData3(data_press_2D, ii);
%     logi_mat = st_data>thrs;
%     num_thrs_data(ii) = MySum(logi_mat);
% end
% end
% 
% function st_data = ExtrStData3(data_press_2D, st_id)
% num_day = 50;
% st_num = st_id;
% loc_col = ((st_num-1)*num_day+1):(st_num*num_day);
% st_data = data_press_2D(:,loc_col);
% end
% function num_ones = MySum(logi_matrix)
% num_ones = 0;
% vec = logi_matrix(:);
% for ii=1:numel(vec)
%     if vec(ii) == 1
%         num_ones = num_ones + 1;
%     end
% end
% end


