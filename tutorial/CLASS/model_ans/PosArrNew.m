function out = PosArrNew(in_arr, opt)

lg = in_arr >0;

switch opt
    case 'sum'
        out = sum(in_arr(lg)); % in_array(lg) is not a matrix
    case 'count'
        out = sum(lg, 'all'); % lg is a logical matrix
    case 'loc'
        out = find(lg); % or find(lg(:));
    otherwise
        error('incorrect opt value')
end

end
   