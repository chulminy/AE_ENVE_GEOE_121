function out = SumEven(in_array)

lg = rem(in_array, 2) == 0;

out = sum(in_array(lg)); % in_array(lg) is not a matrix

end