x_tr = [1 2 3 6]; % true
x_ts = [3 2 5 6]; % test
[bulls, cows] = CompBC(x_tr, x_ts)

disp('Done!');

function [bulls, cows] = CompBC(x_true, x_test)

bulls = CompBulls(x_true, x_test);
cows = CompCows(x_true, x_test);

end

function num_b = CompBulls(x_tr, x_ts)

is_same = (x_tr == x_ts);
num_b = sum(is_same); 

end

function num_c = CompCows(x_tr, x_ts)
num_c = 0;
for ii=1:4
    if any(x_tr == x_ts (ii))
        num_c = num_c + 1;
    end
end
bulls = CompBulls(x_tr, x_ts);
num_c = num_c - bulls;

end
