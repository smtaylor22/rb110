=begin
Problem
  Convert number to string without String methods
  
  Input: Integer
  Output: String
  
  Rules
    Implicit: Assume will not receive + or - numbers
    Assume will not receive alphabetic characters
    Explicit: 

Examples/Test Cases:
123 => '123'

Data structure
Hash representing string value of integers 0-9

Algorithm:
Create a global hash named `int_to_str` which uses integers 0-9 as keys with the corresponding string value of each key
for the hash values
define method named integer_to_string that takes 1 parameter `num`
Invoke the `Integer#digits` method on the `num` argument saving the result to a new variable `digits_arr`
Invoke the map method on `digits_arr` saving the result to a new variable `str_arr`
  Pass a block to the `Array#map` method which uses the current element of the iteration as a key to access the 
  `int_to_str` value at the key. This will be the return value of the block
Implicitily return the result of invoking the `Array#join` method on the `str_arr` 
=end




INT_TO_STR = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'  }

def integer_to_string(num)
  digits_arr = num.digits.reverse

  str_arr = digits_arr.map do |element|
              INT_TO_STR[element]
  end 
  
  str_arr.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'