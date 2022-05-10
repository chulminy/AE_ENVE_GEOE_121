% Syntax error
a1 = [1 2 3];
3 = a1 + 2;

a@2 = [1 2 3];

val1 = 10;
val2= 9 + 11;
val1 = 11 + 12;

% Runtime error
a2 =[11 2 3];
b2 = a2(4) + 1;

A = [1 2;3 4];
val1 = A(3,4);

% logical error
A = [1 2;3 4];
B = [3 4;5 6];

m1 = A.*B;
m2 = A*B;


r1 = randi(6);
r2 = randi(6);

r1
r2

is_both_odd = (rem(r1, 2) == 0) && (rem(r2, 2) == 0)
is_both_odd = (rem(r1, 2) == 1) && (rem(r2, 2) == 1)