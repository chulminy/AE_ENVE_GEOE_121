%% 6)
function [force_data, force_sort_st] = ForceData(press_data, area_devices)
num_st = 80;
num_day = 50;
num_meas = 18;

mean_force_st = zeros(num_st,1);
if size(press_data, 3) == num_st
    force_data = zeros(num_meas, num_day, num_st);
    for ii=1:num_st
        force_data(:,:,kk) = press_data(:,:,ii)*area_devices(ii);
        mean_force_st(ii) = mean(force_data(:,:,ii));
    end
else
    force_data = zeros(num_meas, num_day*num_st);
    for ii=1:num_st
        loc_press = ((ii-1)*num_day+1) : (ii*num_day);
        force_data(:,loc_press) = press_data(:,loc_press)*area_devices(ii);
        mean_force_st(ii) = mean(force_data(:,loc_press));
    end
end
force_sort_st = sort(mean_force_st, 'ascend');

% %% 5)
% function [force_data, force_sort_st] = ForceData(press_data, area_devices)
% num_st = 80;
% num_day = 50;
% num_meas = 18;
% 
% 
% if size(press_data, 3) == num_st
%     force_data = zeros(num_meas, num_day, num_st);
%     mean_force_st = zeros(num_st,1);
%     for ii=1:num_st
%         force_data(:,:,kk) = press_data(:,:,ii)*area_devices(ii);
%         mean_force_st(ii) = mean(force_data(:,:,ii));
%     end
%     force_sort_st = sort(mean_force_st, 'ascend');
% else
%     force_data = zeros(num_meas, num_day*num_st);
%     mean_force_st = zeros(num_st,1);
%     for ii=1:num_st
%         loc_press = ((ii-1)*num_day+1) : (ii*num_day);
%         force_data(:,loc_press) = press_data(:,loc_press)*area_devices(ii);
%         mean_force_st(ii) = mean(force_data(:,loc_press));
%     end
%     
%     force_sort_st = sort(mean_force_st, 'ascend');
% end

end


% %% 4)
% function [force_data, force_sort_st] = ForceData(press_data, area_devices)
% num_st = 80;
% num_day = 50;
% num_meas = 18;
% 
% if size(press_data, 3) == num_st
%     force_data = zeros(num_meas, num_day, num_st);
%     for ii=1:num_meas
%         for jj=1:num_day
%             for kk=1:num_st
%                 force_data(ii,jj,kk) = press_data(ii,jj,kk)*area_devices(kk);
%             end
%         end
%     end
%     
%     mean_force_st = zeros(num_st,1);
%     for ii = 1:num_st
%         mean_force_st(ii) = mean(force_data(:,:,ii));
%     end
%     
%     force_sort_st = sort(mean_force_st, 'ascend');
% else
%     force_data = zeros(num_meas, num_day*num_st);
%     mean_force_st = zeros(num_st,1);
%     for ii=1:num_st
%         loc_press = ((ii-1)*num_day+1) : (ii*num_day);
%         force_data(:,loc_press) = press_data(:,loc_press)*area_devices(ii);
%         mean_force_st(ii) = mean(force_data(:,loc_press));
%     end
%     
%     force_sort_st = sort(mean_force_st, 'ascend');
% end
% 
% end

% %% 3)
% function [force_data, force_sort_st] = ForceData(press_data, area_devices)
% num_st = 80;
% num_day = 50;
% num_meas = 18;
% 
% if size(press_data, 3) == num_st
%     force_data = zeros(num_meas, num_day, num_st);
%     for ii=1:num_meas
%         for jj=1:num_day
%             for kk=1:num_st
%                 force_data(ii,jj,kk) = press_data(ii,jj,kk)*area_devices(kk);
%             end
%         end
%     end
%     
%     mean_force_st = zeros(num_st,1);
%     for ii = 1:num_st
%         mean_force_st(ii) = mean(force_data(:,:,ii));
%     end
%     
%     force_sort_st = sort(mean_force_st, 'ascend');
% else
%     force_data = zeros(num_meas, num_day*num_st);
%     for ii=1:num_st
%         loc_press = ((ii-1)*num_day+1) : (ii*num_day);
%         force_data(:,loc_press) = press_data(:,loc_press)*area_devices(ii);
%     end
%     
%     mean_force_st = zeros(num_st,1);
%     for ii=1:num_st
%         loc_press = ((ii-1)*num_day+1) : (ii*num_day);
%         mean_force_st(ii) = mean(force_data(:,loc_press));
%     end
%     force_sort_st = sort(mean_force_st, 'ascend');
% end
% 
% end


% %% 2)
% function [force_data, force_sort_st] = ForceData(press_data, area_devices)
% num_st = 80;
% num_day = 50;
% num_meas = 18;
% 
% if size(press_data, 3) == num_st
%     force_data = zeros(num_meas, num_day, num_st);
%     for ii=1:num_meas
%         for jj=1:num_day
%             for kk=1:num_st
%                 force_data(ii,jj,kk) = press_data(ii,jj,kk);
%             end
%         end
%     end
%     force_sort_st =
% else
%     force_data = zeros(num_meas, num_day*num_st);
%     for ii=1:num_st
%         loc_press = ((ii-1)*num_day+1) : (ii*num_day);
%         force_data(:,loc_press) = press_data(:,loc_press);
%     end
%     force_sort_st =
% end
% 
% end




% %% 1)
% function [force_data, force_sort_st] = ForceData(press_data, area_devices)
% num_st = 80;
% num_day = 50;
% num_meas = 18;
%
% if size(press_data, 3) == num_st
%
% force_data =
% force_sort_st =
%
% else
%
% force_data =
% force_sort_st =
%
% end
%
% end


