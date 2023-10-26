require "pry"
require "pry-byebug"

=begin

Problem:
  Input: Integer representing the first fibonaci number with the input parameter's number of digits
  Output: Integer representing the index of that fibonaci number (starting with integer 1)

  Rules
    Implicit:
    Explicit:

Examples/Test Cases:
(2) == 7          # 1 1 2 3 5 8 13
(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144

1 + 1 
1 + 2
2 + 3

Data Structure:
Array for the fibonacci sequence

Algorithm:
define method `find_fibonacci_index_by_length` with `digits` as an integer parameter 
initialize a local variable`current_sequence` array intialized to `[1,1]`
initialize a local variable `index` set to equal 2 representing the current index we have checked in the 
  fibonaci sequence
Loop until we have encountered a fibonaci number with input parameter `digits` length
  create a local variable `sum` set to the sum of the current values in the array
  set the first element in the array `current_sequence` to the last element
  set the last element in the array to the `sum`
  increment index by 1
return the index
=end  


def find_fibonacci_index_by_length(num_digits)
  current_sequence = [1,1]
  index = 2

  while current_sequence.last.digits.size < num_digits
    sum = current_sequence.sum
    current_sequence[0] = current_sequence[1]
    current_sequence[1] = sum
    index += 1
  end
  index
end




p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847