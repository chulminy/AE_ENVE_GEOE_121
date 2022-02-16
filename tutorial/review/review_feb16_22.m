% HQ
n = randi([25 50]); % A scalar value from 25 to 50
mat = randi([0 10],n,n); % An nxn matrix with random elements ranging from 0 to 10 

% Write your script here

loc_vec = zeros(10,1);
count = 0;

mat_size = numel(mat);
for ii = 1:mat_size
    test_loc = mat(ii);
    
    if test_loc == 7
        count = count + 1;
        loc_vec(count) = ii;
    end
    
    if count == 10
        break
        
    end
end
