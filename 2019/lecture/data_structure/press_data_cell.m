% Pressure data have been measursured from 3 stations (Staion 1, 2, 3)

% Station 1: Measuring pressure at 1 hr interval, starting at 6:00AM and
% ending 11:00PM (all 18 measurements) during 10 days
% Station 2: Measuring pressure at 2 hr interval, starting at 6:00AM and
% ending 12:00PM (all 10 measurements) during 20 days
% Station 3: Measuring pressure at 3 hr interval, starting at 10:00AM and
% ending 10:00PM (all 5 measurements) during 30 days

press_st1 = randi([10 30], 18, 10); % create a 18 x 10 matrix
press_st2 = randi([10 30], 10, 20); % create a 10 x 20 matrix
press_st3 = randi([10 30], 5, 30); % create a 5 x 30 matrix

press_st = cell(3,1);

press_st{1,1} = press_st1;
press_st{2,1} = press_st2;
press_st{3,1} = press_st3;

% or 
% press_st = {press_st1, press_st2, press_st3};


