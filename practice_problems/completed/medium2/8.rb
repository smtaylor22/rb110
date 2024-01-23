
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
    return num if num > start && num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
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


#Nick's version

# Algorithim
=begin
Take the int_source, divide by 7 add 1, and multiply the int_source by that NUMBER
(this creates the first possible featured number)
Increment possible featured number by 7 until possible featured number is greater than 9_999_999_999
  - return possible featured number early if it meets all 3 featured number checks
  - return below message if we get to end of loop with out returning true early
    - "There is no possible number that fulfills those requirements"

Is feature number helper method
  - multiple of 7
  - odd number
  - whose digits occur exactly once each
=end

def featured int_source
  possible_feature = (int_source /7 + 1) * 7
  possible_feature += 7 if possible_feature.even?

  while possible_feature < 9_999_999_999 do
    return possible_feature if featured_number?(possible_feature)
    possible_feature += 14
  end
  "There is no possible number that fulfills those requirements"
  end

def featured_number? possible_feature
  digits_array = possible_feature.digits
  digits_array.length == digits_array.uniq.length
end