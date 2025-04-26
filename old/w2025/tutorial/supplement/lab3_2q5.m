% Author: Seth Bailey
% Lab 03-2, Question 5 - Advanced Candy Store Variation

clear
clc

card_num_all = randi(10, 10000, 10)-1; % a 10000 x 10 matrix and its elements are generated from 0 to 9. 
priz_rs = zeros(1, 20); % index of receivers

% write your code here
counter = 1;
[nr, nc] = size(card_num_all)

for ii = 1:nr
    test1 = false;
    test2 = false;
    test3 = false;
    
    test_row = card_num_all(ii, :);
    % Test 1 - 4 to appear in 2nd and 5th element
    if test_row(2) == 4 && test_row(5) == 4
        test1 = true;
    end
    % Test 2 - 7 to not appear in first and last elements
    if test_row(1) ~= 7 && test_row(end) ~= 7
        test2 = true;
    end
    % Test 3 - check if every element in the row is not a 5
    for jj = 1:numel(test_row)
        if test_row(jj) ~= 5
            test3 = true;
        else 
            test3 = false;
            break
        end
    end
    
    % Test if all tests passed
    if test1 && test2 && test3
        priz_rs(counter) = ii;
        counter = counter + 1;
    end
    if counter == 21
        break
    end
end
priz_rs