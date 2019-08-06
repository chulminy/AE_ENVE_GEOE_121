in_vec = [1 2 3 4];
n_elem = numel(in_vec);
val1 = myfun_mean(in_vec);
val1

function mean_val = myfun_mean(vec)

mean_val = sum(vec)/n_elem;

end



