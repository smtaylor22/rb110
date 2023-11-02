=begin

Problem:
  Input: array of intgers 
  Output: float

  Rules:
    Implicit:
    Explicit:


Examples/ Test Cases
[3,5] => 3*5 = 15 => 15/2 => 7.500
Data Structure:
array
flloat

Algorithm:
initialize `multiply` local variable for result of multiply each integer
input array = set value to 1

loop over each integer in arrray 
  multiply current integer by `multiply` variable, reassign `multiply` to reuslt

divide `multiply` by `Array#size` of input array

using print formatting to output reuslt of division with 3 decimal points
sprintf('%.2f', 3.14159)  # => "3.14"
=end



def show_multiplicative_average(array)
  multiply = 1.0
  array.each {|num| multiply *= num}
  format('%.3f', multiply / array.size)
end



p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667