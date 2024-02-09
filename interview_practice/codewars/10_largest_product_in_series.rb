=begin

Complete the greatestProduct method so that it'll find the greatest
product of five consecutive digits in the given string of digits.

greatestProduct("123834539327238239583") // should return 3240

123456
6
0..size-5

Problem:
  Input: string
  Output: integer

  Rules:
  - must find 5 consecutive numbers
  - 

Examples:


Data structure:
string 
array of chars
integer


Algorithm:
Loop over string one char at a time 

- find all slices of 5 consecutive string charactes
- convert the 5 char string to array of 5 characters
- multiply them together
- return highest product


=end


# def greatest_product(string)
#   highest_product = 0
#   string[0..string.size - 5].each_char.with_index do |_, i|
#     current_product = string[i, 5].chars.map(&:to_i).inject(:*)
#     highest_product = current_product if current_product > highest_product
#   end
#   highest_product
# end


#3240

def greatest_product(string)
  p string.chars.each_cons(5).map { |a| a.map(&:to_i).reduce(:*) }.max
end

p greatest_product('123456')
# p greatest_product("123834539327238239583")