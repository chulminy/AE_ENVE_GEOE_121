numbers = [1 2 3 4 5 6 7 8 9 10];  % sum = 55, average = 5.5
[summed, averaged] = CalculateSumAndAverage(numbers)

function [summed, averaged] = CalculateSumAndAverage(numbers)
% Calculate the sum & average for 'n' numbers.
	% Initialize accumulator to 0
	accumulator = 0;
	% Find how many numbers there are
	array_length = numel(numbers);
	% Loop through array and accumulate numbers
	for i = 1:array_length
		accumulator = accumulator + numbers(i);
	end
	% Assign accumulator to output variable
	summed = accumulator;
	% Calculate average
	averaged = accumulator / array_length;
end
