n = 100; % Number of concert goers (100 in this question)

ticket = randi([1 2],n,1); % 100x1 vector containing 1 or 2. 1 - standard ticket, 2 - backstage pass
merch = randi([0 1],n,1); % 100x1 vector. 1 if person has merch, 0 if not
days = randi([1 60],n,1); % 100x1 vector. Number of days before the concert each person purchased their ticket
age = randi([1 100],n,1); % 100x1 vector. Age of each person

info = [ticket merch days age]; % 100 x 4 matrix, contaning relevant info for each person.
clearvars ticket merch days age

price = zeros(n,1); % Pre-define vector size

% Write your script here

info = [randi([1 2], n, 1), randi([0 1], n, 1), randi([1 60], n, 1), randi([1 100], n, 1)];

% Base ticket prices: 1 → $30, 2 → $40
base_price = 30 * (info(:,1) == 1) + 40 * (info(:,1) == 2);

% Discount conditions
merch_disc   = 0.25 * (info(:,2) == 1);                      % 25% for merch
early_disc   = 0.10 * (info(:,3) >= 30 & info(:,2) == 0);    % 10% early birds without merch
age_disc     = 0.05 * (info(:,4) < 18 | info(:,4) > 60);     % 5% youth/seniors without merch or early

% Max discount per person
discount_vec = max([merch_disc, early_disc, age_disc], [], 2);

% Final price after discount
final_price = base_price .* (1 - discount_vec);


% (a) Find minimum price
min_price1 = final_price(final_price == min(final_price));
min_price1 = min_price1(1);                 % avoid vector output

min_price2 = min(final_price)            % using min function

% (b) Count how many people paid the minimum price
count1 = sum(final_price == min_price2)

% Write your script here
% (a)
min_price1 = 1000;
for ii = 1:n
    test_ticket = info(ii,1); % Extract ticket info
    test_merch = info(ii,2); % Extract merch info
    is_early = info(ii,3) >= 30; % Extract days before concert, compare to 30
    is_age = info(ii,4) < 18 || info(ii,4) > 60; % Extract age, compare to 18 or 60
    
    if test_ticket == 1 % If standard
        test_price = 30;
    else % If backstage
        test_price = 40;
    end
    
    % Discounts, largest to smallest
    if test_merch 
        discount = .25;
    elseif is_early
        discount = .1;
    elseif is_age
        discount = .05;
    else
        discount = 0;
    end
    
    test_price = test_price*(1-discount); % Apply largest discount
    
    price(ii) = test_price; % Assign cost to respective row in 'price'
    
    if min_price1 > price(ii)
       min_price1 = price(ii); 
    end
end

min_price2 = min(price);

% (b)
count = 0;
for jj = 1:n
    if price(jj) == min_price1
        count = count + 1;
    end
end