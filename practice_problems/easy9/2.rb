require "pry"
require "pry-byebug"
=begin

Problem:
   Input: integer
   Output: integer doubles if not a double number otherwise input integer


   Rules:
    Implicit:
    Explicit: a double number is number whose left digits are mirrored on the right digits


  Examples/Test Cases

  Data Structure:

  Algorithm:
    define method `twice` that takes 1 input parameter `num`
      convert `num` input argument to arry of digits from integer with `Integer#digits` method
      if the size of the array of digts has even amount 
          if array of digits in range of 0 upt to but not including array.size/2 == array of digits in range of 
            array.size/2 to -1 last digit of array
            return num
      else
        retrun num * 2 

=end

def twice(num)
  nums_array = num.digits.reverse
  if double_number?(nums_array.size / 2, nums_array)
    return num
  else
    return num * 2
  end
end

def double_number?(half_index, array)
 array.size.even? && array[0...half_index] == array[half_index..-1]
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10