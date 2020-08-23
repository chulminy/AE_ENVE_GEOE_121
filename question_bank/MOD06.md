# Module 06: Operators

## Table of Contents
- [**M06001. Parking data (★★★★)**](m06001.-parking-data)
- [**M06002. Course Grading using Array Operations (★★★)**](m06002.-course-grading-using-array-perations (★★★))
## M06001. Parking data (★★★★)

```matlab
empty_lot = zeros(20,20);
parking_data = cat(3, empty_lot, randi([0 1],20,20,9), empty_lot); % there is no car ('empty_lot') at 8 AM and 6 PM 
```

You want to determine how often cars are moving from parking spots at a mall. 
'parking_data' is provided in the form of a 20x20x11 matrix, where each element is a parking spot and each layer is a different time from 8AM to 6PM (layer 1 is 8AM and layer 10 is 5PM). The mall opens at 9AM and closes at 5PM, so at 8AM and 6PM the parking lot should be empty (see how 'parking_data' is created). 
An occopied parking spot is represented with a 1, and an empty parking spot is represented with a 0. 

You will need to write a script to create a variable named:
(a) 'num_fill', which is a scalar value. 'num_fill' represent the total number of spots that are filled with cars during working hours. 400 (20 x 20) spots are availabe each hour so the total number of spots avialable for 9 working hours (9AM to 5PM) are 3600. How many spots are filled with cars? Assign its value to 'num_fill'. 
(b) 'max_occ' and 'min_occ'. 'max_occ' finds the time of day with the most spots occupied, and 'min_occ' finds the time of day with the fewest spots occupied when the mall is opened (neither 8AM or 6PM). Time of day is equal to the layer number. For example, if 9AM is the busiest time, 2 is assigned to 'max_occ'. 
(c)  'num_park_left', which is a 1x11 row vector (from 8AM to 6PM). 'num_park_left' represents the number of cars that have left parking spots (fill to empty). The first element of 'num_park_left' should be zero because the parking lot is empty at 8AM.
(d)  'num_park_enter', which is a 1x11 row vector  (from 8AM to 6PM). 'num_park_enter' represents the number of cars that have entered parking spots (empty to filled). The first and last elements of 'num_park_enter' are a zero because none of cars come in the parking at 8AM and 6PM.
(e) 'most_filled_spot', which is a scalar value. What is the longest time (in hours) in which a parking spot has been taken up by a car? Note that this question is to count the number of hours when the corresponding parking spot is filled. It is not counting the longest hours that a single car is parked.
Here is a simple example to help your understanding. 
![M06001](https://github.com/chulminy/AE_ENVE_GEOE_121/blob/master/question_bank/M06001.png)

**Solution**
Please watch this:[**https://youtu.be/dzlSFfTIQYU?t=1017**](https://youtu.be/dzlSFfTIQYU?t=1017)

## M06002. Course Grading using Array Operations (★★★)

