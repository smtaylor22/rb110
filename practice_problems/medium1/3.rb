require "pry"
require "pry-byebug"
=begin
Problem:

  Input: integer
  Output: integer with max rotation

  Rules:
    Implicit:
    Explicit:


Examples/Test cases:
735291 == 321579
3 52917
32 9175
321 759
3215 97
32157 9


35 = 53

105 == 15
0 51
015

Data Structures:


Algorithm:
define method `max_rotation` that takes 1 integer as input `number`
  initialize `n` local variable to `number.size`
  loop until `n` is 0 - break when n is 0
    set number to return value invoke `rotate_rightmost_digits()` passing `number` and `n` as arguments
    decrement index by 1
  shift `number` array if first elemetn is a 0
  return `number` array joined together and cast back into an integer type

=end  

def max_rotation(number)
  n = number.to_s.chars.size
  until n == 1
    number = rotate_rightmost_digits(number, n)
    n -= 1
  end
  number
end


def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end


  p max_rotation(735291) == 321579
  p max_rotation(3) == 3
  p max_rotation(35) == 53
  p max_rotation(105) == 15 # the leading zero gets dropped
  p max_rotation(8_703_529_146) == 7_321_609_845