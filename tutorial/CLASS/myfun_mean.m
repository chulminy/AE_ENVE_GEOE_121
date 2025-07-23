in_vec = [1 2 3 4];
n_elem = numel(in_vec);
val = myfun_mean(in_vec);

function mean_val = myfun_mean1(vec)

mean_val = sum(vec);

end

function mean_val = myfun_mean2(in_vec)

mean_val = sum(in_vec);

end
