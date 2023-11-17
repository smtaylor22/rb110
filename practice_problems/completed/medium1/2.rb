require "pry"
require "pry-byebug"

=begin
Problem:

  Input: 2 integers, first is number the second is how many of the last digits should be rotated
  Output: integer - the rotated digit

  Rules:
    Implicit: 
    Explicit: n will always be positive
rotating 1 digit returs original number

Examples/Test Cases:
(735291, 1) == 735291
1

(735291, 2) == 735219
735291, 3) == 735912
735291, 6 == 352917
slice from 
[7, 3, 5, 2, 9, 1]
Data Structure:


Algorithm:
define method `rotate_rightmost_digits` which takes two integers as input `number` `index`
  split the first input into an list of digits saving this to a local variable
    pass this range of this array from size minus index to the `rotate`
    append this back to range of original array of digits using the slice method starting at index 0 
    and containing `number.size` = `index` elements
=end

def rotate_rightmost_digits(number, digits)
  num_arr = number.digits.reverse
  rotation = rotate_array(num_arr[(num_arr.size - digits)..-1])
  (num_arr.slice(0, (num_arr.size - digits)).join + rotation.join).to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917