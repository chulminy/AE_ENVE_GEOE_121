vec = [1 2 3 4];
n_elem = numel(vec);

[mean_val1, sum_val1] = myfun_mean(vec);
[mean_val2, sum_val2] = myfun_mean(vec, n_elem);

mean_val3 = myfun_mean(vec);
[mean_val4, ~] = myfun_mean(vec);
[~, sum_val5] = myfun_mean(vec);

mean_val1
mean_val2
mean_val3
mean_val4

sum_val1
sum_val2
sum_val5

function [mean_val, sum_val] = myfun_mean(vec, n_elem)

if nargin == 1
    n_elem = numel(vec);
end

sum_val = sum(vec);
mean_val = sum_val/n_elem;

end

