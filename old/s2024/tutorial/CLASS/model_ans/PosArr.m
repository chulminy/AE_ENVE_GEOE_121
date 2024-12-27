function [c_in, s_in, l_in] = PosArr(in_arr)

lg = in_arr > 0;

l_in = find(lg); % or find(lg(:));
c_in = sum(lg, 'all'); % lg is a logical matrix
s_in = sum(in_arr(lg)); % in_array(lg) is not a matrix

end