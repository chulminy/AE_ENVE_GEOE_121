% 1. Initialize sum and count variables
s = 0;  % sum
c = 0;  % count
% 2. Loop 5 times
while c<5
	% a. Store user input number
	n = input("Enter a number (" + num2str(c  + 1) + " of 5): ");  % user entered number
	% b. Add user input number to sum variable
	s = s + n;
	% c. Add 1 to count
	c = c + 1;
end
% Print total sum
fprintf("Total sum is " + s + ".")


