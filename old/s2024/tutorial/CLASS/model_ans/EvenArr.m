function [c_in, s_in] = EvenArr (in_arr)

lg = rem(in_arr, 2) == 0;

c_in = sum(lg, 'all'); % lg is a logical matrix
s_in = sum(in_arr(lg)); % in_array(lg) is not a matrix

end