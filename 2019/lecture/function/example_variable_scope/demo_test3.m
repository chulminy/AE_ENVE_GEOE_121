vec = [1 2 3 4];
n_elem = numel(vec);
mean_val = myfun_mean(vec);
mean_val

function mean_val = myfun_mean(vec, n_elem)

mean_val = sum(vec)/n_elem;

end



