card_num_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 20); % index of receivers

% write your code here

num_id = 10000;

count_pz = 0;

for ii = 1:num_id
    test_id = card_num_all(ii,:);
    
    cond1 = and(test_id(2)==4 , test_id(5)==4);
    cond2 = and(test_id(1)~=7 , test_id(end)~=7);
    
    % alternate cond3
    cond3 = true;
    for jj = 1:10
        if test_id(jj) == 5
           cond3 = false;
           break;
        end
    end
    
    
    if cond1 && cond2 && cond3
        count_pz = count_pz + 1;
        priz_rs(count_pz) = ii;
    end
    
    if count_pz == 20
        break
    end
end