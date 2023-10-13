=begin

Problem:
  Input: string
  Output: positive or negative iteger

  Rules:
    Explicit requirements:
      - empty string returns 0
    Implicit requirements:
      - ignore + or - 
      - ignore non number strings

Example/Test Cases: 


Data strucure:
 - "123" -> 123
 - "-123" -> -123

Algorithm:
if first char == '-' or "+"
  remove character fist character 
  set negative flag to true
set boolean flag if first char is negative
remove '-' character 
Create a hash representation of the value of each string as an int
loop over string one char at a time at get an array of each integer
combine the array of integers with the probler palce value

Tests:

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  if string.chr == '-' || string.chr == '+'
    negative = true if string.chr == '-'
    string = string[1..-1]
  end

  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value *= -1 if negative
  value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100