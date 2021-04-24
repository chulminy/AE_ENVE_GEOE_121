% Create a 5-by-5-by-5-by-5-by-5-by-5 with random values ranging from 1 to 500
numbers = randi(500,[5, 5, 5, 5, 5, 5]);
max_value = FindMax(numbers)

function max_number  = FindMax(numbers)
% Find the maximum value in a n-dimensional array
	% Initialize variable
	max_number = numbers(1);
	% Loop through values in the array
	for i = 2:numel(numbers)
		if max_number < numbers(i)
			max_number = numbers(i);
		end
	end
end
