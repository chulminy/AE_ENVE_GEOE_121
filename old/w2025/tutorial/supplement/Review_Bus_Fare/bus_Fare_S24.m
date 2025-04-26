ages = randi(100, 40, 1); % generate a 40 x 1 column vector with random values between 1 and 100
days = randi(7, 40, 1);  % generate a 40 x 1 column vector with random values between 1 and 7
ids = randi(2, 40, 1)-1;  % generate a 40 x 1 column vector with random values of either 0 or 1
bus_data = [ages days ids];
clearvars ages days ids

n_pass = size(bus_data, 1); % # of rows: See this syntax of the 'size' function
fare_vals = zeros(n_pass,1); % your output variable that include bus fares for all passengers

for ii = 1:n_pass
    test_age = bus_data(ii,1);
    test_day = bus_data(ii, 2);
    test_id = bus_data(ii,3);
    
    % age range
    is_baby = test_age < 5;
    is_youth = and(test_age >=5, test_age <=17);
    is_adult = and(test_age >=18, test_age <=59);
    is_senior = test_age >=60;
        
    % base bus fare 
    if is_baby
       test_fare = 0;
    elseif is_youth
        test_fare = 2;
    elseif is_adult
        test_fare = 5;
    elseif is_senior
        test_fare = 3;
    end
    
    % discount: id
    discount = 0;
    if test_id
       discount = discount + 0.15; 
    end
    
    % discount: days
    if and(is_youth, test_day<=5)
       discount = discount + 0.2; 
    end
    
    if and(is_senior, test_day == 2)
       discount = discount + 0.1; 
    end
    
    fare_vals(ii,1) = test_fare * (1-discount);
end