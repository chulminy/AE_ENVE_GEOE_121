


mat1 = [1 2 3 4; 1 2 3 4; 1 2 3 4];

[num_row, num_col] = size(mat1);

sum_values_all = 0;
for ii=1:num_row
    for jj=1:num_col     
        sum_values_all = sum_values_all + mat1(ii,jj);
    end
end



