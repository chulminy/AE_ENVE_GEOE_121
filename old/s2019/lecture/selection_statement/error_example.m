% syntax error
a1 = [1 2 3];
3 = a1 + 2
% var@1 = a1

% runtime error
a2 = [11 2 3];
b2 = a2(4) + 1;
 
% logical errors
A = randi(10,3);
B = randi(10,3);

a = A*B;
a = A.*B;