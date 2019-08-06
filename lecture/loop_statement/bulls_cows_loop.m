true_num = randperm(10,4)-1;
test_num1 = randperm(10,4)-1;
test_num2 = randperm(10,4)-1;
%--------------------------------------------------------------------------
% student code

bull1 = 0;
for ii=1:4
    if true_num(ii) == test_num1(ii)
       bull1 = bull1 + 1; 
    end
end

cow1 = 0;
for ii=1:4    % test number
    for jj=1:4 % true number
        if true_num(jj) == test_num1(ii)
            cow1 = cow1 + 1;
        end
    end
end
cow1 = cow1 - bull1;


bull2 = 0;
for ii=1:4
    if true_num(ii) == test_num2(ii)
       bull2 = bull2 + 1; 
    end
end

cow2 = 0;
for ii=1:4
    for jj=1:4
        if true_num(ii) == test_num2(jj)
            cow2 = cow2 + 1;
        end
    end
end
cow2 = cow2 - bull2;
%--------------------------------------------------------------------------
str_true_num = sprintf('%d', true_num); % Converts true_num to a string
fprintf('True number : %s\n', str_true_num) % Prints string form of true_num

str_test_num1 = sprintf('%d', test_num1);
fprintf('Test number1: %s \t %dB  %dC\n', str_test_num1, bull1, cow1) % Prints string form of test_num1 and the number of bulls and cows

str_test_num2 = sprintf('%d', test_num2);
fprintf('Test number1: %s \t %dB  %dC\n', str_test_num2, bull2, cow2) % Prints string form of test_num1 and the number of bulls and cows
