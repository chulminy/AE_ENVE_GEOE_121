%% option 1

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

%% option 2
num_id = 10000;

count_pz = 0;

for ii = 1:num_id
    test_id = card_num_all(ii,:);

    if test_id(2)==4 && test_id(5)==4
        if and(test_id(1)~=7 , test_id(end)~=7)
            cond3 = true;
            for jj = 1:10
                if test_id(jj) == 5
                    cond3 = false;
                    break;
                end
            end
            if cond3
                count_pz = count_pz + 1;
                priz_rs(count_pz) = ii;
            end

            if count_pz == 20
                break
            end
        end
    end

end

%% option 3
prize_rs = zeros(1, 20);

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
        prize_rs(count_pz) = ii;
    end
    
    if count_pz == 20
        break
    end
end

