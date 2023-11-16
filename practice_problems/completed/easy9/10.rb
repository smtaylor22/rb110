=begin

Problem:
  Input: integer
  Output: sum of digits of integer

  Rules:
    Implicit:
    Explicit:


Examples/Test Cases


Data Structure:


Algorithm:
define method `sum` which takes 1 input integer 
  invoke `Intege#digits` method on input integer
  invoke `Array#sum` method on return of above
  return this value

=end
 
def sum(num)
  num.digits.sum
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45