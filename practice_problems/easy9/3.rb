=begin

Problem:

  Input: integer always greater than 0
  Output: array of integers from 1 to the input argument integer

  Rules:
    Explicit: 
    Implicit:


Examples/Test Cases:


Data Structure:


Algorithm:
define method `sequence` that takes 1 input parameter `num`
  use inject with range from 1..input argument to inject each element to new array 
  return this new array

=end

def sequence(num)
  (1..num).inject([], :push)
end


p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]