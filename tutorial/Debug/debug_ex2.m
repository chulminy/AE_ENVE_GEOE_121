% Sorting a Vector and Moving 2's (???)
row_vec = randi([1 10],1,20);  % 1x20 row vector with random values of 1-10

count = 1;
count2 = numel(row_vec);
n_vec = numel(row_vec) + 1;
num_2 = 0;
row_sort = sort(row_vec, 'ascend');

for ii = 1:n_vec
    if row_sort(ii) ~= 2
        row_vec(count) = row_sort(ii);
        count = count + 1;
    else
        row_vec(count2) = 2;
        count2 = count2 - 1;
        num_2 = num_2+1;
    end
end
disp(row_vec)
disp(num_2)
