% %% problem 0
% mat1 = [1 2 3; 4 5 6; 7 8 9];
% 
% val = 0;
% for ii=1:3
%     val = val + mat1(ii,1);
% end

% %% problem 1
% mat1 = [2 8; 1 3; 2 3];
% vec = zeros(1,3);
% for ii=1:3
%     sumr = 0;
%     for jj=1:2
%         sumr = sumr + mat1(ii,jj);
%     end
%     vec(ii) = sumr; 
% end
% summing up values in each row and assign it in vec in order

% %% problem 2
% mat1 = [2 8; 1 3; 2 3];
% vec = zeros(1,3);
% 
% sumr = 0;
% for ii=1:3
%     for jj=1:2
%         sumr = sumr + mat1(ii,jj);
%     end
%     vec(ii) = sumr; 
% end
% % summing up values in each row and assign their cumulative values in vec in order

% 
% %% problem 3
% mat1 = [2 8; 1 3; 2 3];
% vec = zeros(1,3);
% 
% sumr = 0;
% for ii=1:2
%     for jj=1:3
%         sumr = sumr + mat1(jj, ii);
%     end
%     vec(ii) = sumr; 
% end
% % summing up values in each column and assign it in vec in order
% % The last value isn't assigned. 


% %% problem 4
% mat1 = [2 8; 1 3; 2 3];
% vec = [];
% for ii=1:3
%     sumr = 0;
%     for jj=1:2
%         sumr = sumr + mat1(ii,jj);
%     end
%     vec(end+1) = sumr;
% end
% % summing up values in each column and assign it in vec in order
% % create 'vec' when we do not know the size. 

%% problem 5
mat1 = [2 8; 1 3; 2 3];
vec = [];
for ii=1:3
    sumr = 0;
    for jj=1:2
        sumr = sumr + mat1(ii,jj);
    end
    vec = [vec sumr];
end
% summing up values in each column and assign it in vec in order
% create 'vec' when we do not know the size. 

%% problem 6
mat1 = [1 2 3; 4 5 6; 7 8 9];
vec = zeros(1,3);

for ii=1:3
    sumr = 0;
    for jj=ii:3
        sumr = sumr + mat1(ii,jj);
    end
    vec(ii) = sumr; 
end

%% problem 7
mat1 = [1 2 3; 4 5 6; 7 8 9];
vec = zeros(1,3);

for ii=1:3
    sumr = 0;
    for jj=ii:3
        sumr = sumr + mat1(ii,jj);
    end
    vec(ii) = sumr; 
end

%% problem 8
mat1 = [1 2 3; 4 5 6];
mat2 = zeros(3, 2);

n = numel(mat1);

for ii=1:n
    mat2(ii) = mat1(ii);
end

%% problem 9
mat1 = [1 2 3; 7 8 9];
ma2 = zeros(2, 3);

n = numel(mat1);

for ii=1:n
    mat2(ii) = mat1(n-ii+1);
end





