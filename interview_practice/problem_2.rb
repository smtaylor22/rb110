=begin
Problem:
  Input: array of integers
  Output: integer which is the lowest sum of 5 consecutive numbers

  Rules:
    Implicit:
    Explicit: return nil if array is less than 5 elements

Examples/Tests:
1, 2, 3, 4 => nil
1, 2, 3, 4, 5, 6 => 15
55, 2, 6, 5, 1, 2, 9, 3, 5, 100 => 16

Data Structure:


Algorithm:
define method `minimum_sum` which takes 1 array of integers as input
intialize local variable `min_sum` set to `nil`
initialize start = 0
initialize end = 4
loop until input_array[end] index is nil
loop over array looking at 5 consecutive lemetns at a time
  sum these 5 consecutive elemetns
  set `min_sum` to this sum
incremetn both start and end by 1

return the min_sum


Fist attempt 28 minutes

=end  



# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:


def minimum_sum(arr)
  min_sum = nil
  start = 0
  last = 4

  while arr[last] != nil
    current_sum = arr[start..last].sum 
    min_sum = current_sum if current_sum < min_sum.to_i || min_sum == nil
    start += 1
    last += 1
  end
  min_sum
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".