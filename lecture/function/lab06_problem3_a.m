num_st = 80;
num_day = 50;
data_press_2D = zeros(18,num_day*num_st);
data_press_3D = zeros(18,num_day,num_st);

for ii=1:num_st
    press_st = randi([10 30], 18, num_day);
    loc_press = ((ii-1)*num_day+1):(ii*num_day);
    data_press_2D(:,loc_press) = press_st;
    data_press_3D(:,:,ii) = press_st;
end
clearvars press_st loc_press

% different cross-sectional area of a pressure measuring device at each station
area_devices = randi(100, 80, 1); 


% (a)
test_day = randi(50);
testa = DayData(data_press_2D, test_day);
testb = DayData(data_press_3D, test_day);

function output_data = DayData(press_data, day)
num_st = 80;

if size(press_data,3) == num_st
    new_data = press_data(:,day,:);
    output_data = zeros(18, num_st);
    for ii = 1:numel(new_data)
        output_data(ii) = new_data(ii);
    end
end


end

function output_data = DayData(press_data, day)
num_st = 80;

output_data = zeros(18, num_st);

if size(press_data,3) == num_st
    for ii=1:18
        for jj=1:num_st
            output_data(ii,jj) = press_data(ii,day,jj);
        end
    end
else
    
end
end