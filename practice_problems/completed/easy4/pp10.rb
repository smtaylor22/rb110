require 'pry-byebug'
=begin
Problem
  Input: signed number (+,-)
  Output: string with signed number

  Rules:
    - Implicit: Return string with + if number not negative
      0 has no sign
      negative integers return with - sign
    - Explicit


Examples/Test Cases


Data structure

Algorithm
define method `signed_integer_to_string` which takes 1 integer parameter `number`
Invoke the integer to string method on number return result to `str_rep`
When number is > 0 
      return str_rep with '+' prepended
When number < 0 
      return str_rep with '+' prepended
else
  return str_rep
=end


DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  number *= -1 if number < 0
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  str_rep = integer_to_string(number)
  if number > 0
    str_rep.prepend('+')
  elsif number < 0
    '-' + str_rep
  else
    str_rep
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'