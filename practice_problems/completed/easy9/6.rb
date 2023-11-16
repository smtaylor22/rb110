=begin

Problem:
  Input: 2 integers , representing count, and first number of sequence
  Output: array size of count argument with values in array being multiples of that number

  Assume count always > 0 
  starting sequence any integer
  count of zero returns empty array

  Rules:
    Explicit:
    Implicit:

Examples/Test Cases:
(5, 1) == [1, 2, 3, 4, 5]
[1]
1 + 1 = [1,2]
2 + 1 = [1,2,3]
3 + 1 = [1,2,3,4]

4, -7) == [-7, -14, -21, -28]
(3, 0) == [0, 0, 0]

Data Structure:


Algorithm:
define method `sequence` taking 2 input parameters, `count` and `start`
  initialize empty array `list` 
  inititlize local variable `multiple` to 0
  pefrom loop as many times as `count` variable
    for each loop add current value of `multiple` + start to `list` array
  return `list` array

=end

def sequence(count, start)
  list = []
  multiple = 0
  count.times do |_|
    list << (multiple += start)
  end
  list
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []