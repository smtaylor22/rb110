=begin

Problem:
  Input: string
  Output: integer

  Rules:
    Explicit requirements:
      - empty string returns 0
    Implicit requirements:
      - ignore + or - 
      - ignore non number strings

Example/Test Cases: 


Data strucure:
 - "123" -> 123

Algorithm:
Create a hash representation of the value of each string as an int
loop over string one char at a time at get an array of each integer
combine the array of integers with the probler palce value

Tests:

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570