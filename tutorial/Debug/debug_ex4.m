% Questions
% seq = 'Chulmin';
% 
% var = 0;
% if seq == 'Chulmin'
%     var = 1;
% end
% 
% var

%{
Q6. Creat a function named ‘PosArrNew’ that sums, counts, 
or find their locations (linear index) of all positive numbers 
in a given array ‘in_arr’ depending on ‘opt’.  ‘opt’ takes ‘sum’, 
‘count’, and ‘loc’ to select its operation. 
%}

arr1 = randi(10, 3, 3)-5;
% out1 = PosArrNew(arr1, 'sum')
out2 = PosArrNew(arr1, 'count') 

function out = PosArrNew(in_arr, opt)

lg = in_arr >0;

if opt == 'sum'
        out = sum(in_arr(lg));
elseif opt == 'count'
        out = sum(lg, 'all');
elseif opt == 'loc'
        out = find(lg);
else
    error('incorrect opt value');
end

end

% function out = PosArrNew(in_arr, opt)
% 
% lg = in_arr >0;
% 
% if isequal(opt, 'sum')
%         out = sum(in_arr(lg));
% elseif opt == 'count';
%         out = sum(lg, 'all');
% elseif opt == 'loc';
%         out = find(lg);
% else
%     error('incorrect opt value');
% end
% 
% end
   