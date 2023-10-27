=begin

Problem:
  Input: 1 array
  Output: 1 nested array containing 2 arrays
    - contains the the first half and the second half of the array

  Rules:
    Explicit: With odd number elements input, the middle element should be in the the array
    Implicit: returning a new array


Examples/Test Cases
[1, 2, 3, 4] == [[1, 2], [3, 4]]
[1, 5, 2, 4, 3] == [[1, 5, 2], [4, 3]]
[5] == [[5], []]
[] == [[], []]

Data Structure:

Algorithm:
define method `halvsies` that takes 1 array input parameter `array`
Initialize `middle` local variable and set to the value of Finding the half way index of the array by dividing the size of the array by 2
  use the `Array#size` method combined with the `Integer#ceil` method
    (if there is any remained we should round up to the nearest whole integer as the rules state)
intialize new array `first` set to the range from 0..`middle` variable
initialize the new array `second` set to the range from `middle` to -1 

=end


halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]