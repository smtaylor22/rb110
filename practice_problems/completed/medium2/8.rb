require "pry"
require "pry-byebug"
=begin
Problem:
  Input: integer
  Output: next integer that is a featured number

  Rules:
    Implicit:
    Explicit:


Examples/ Test Cases:


Data Structure:


Algorithm:
featured number is odd number 
featured number is multiple of 7 
  n % 7 == 0
all digits occur only once
loop until we hit condition of feature number or until there are more than 9 digits
  break if digit is odd and digit is multiple of 7 and all digits are unique
  return if count of digits is greater than 9 

=end


def featured(num)
  start = num
  loop do
  # binding.pry
    return "There is no possible number that fulfills those requirements" if num.digits.size > 10
    return p num if num > start && num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
    num += 1
  end
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
 
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements