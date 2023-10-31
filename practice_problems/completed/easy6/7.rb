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
Initialize `middle` local variable and set to the value of Finding the half way index of the array by dividing 
the size of the array by 2
  if the size of the array is odd set the middle array to the above
    if the size of the array is even set the middle array to middle - 1
if the size of the array is 1 
  return array and emtpy array

if empty array return two empty arrays
intialize new array `first` set to the range from 0..`middle` variable
initialize the new array `second` set to the range from `middle` to -1 

=end

def halvsies(array)

  if array.size > 1
    middle = array.size.odd? ? array.size / 2 : (array.size / 2) - 1
    array1 = array[0..middle]
    array2 = array[(middle + 1)..-1]
    return [array1, array2]
  elsif array.empty?
    return [[],[]]
  else
    return [array, []]
  end
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]