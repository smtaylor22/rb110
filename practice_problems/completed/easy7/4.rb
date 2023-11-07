=begin

Problem:
  Input: string with mixture of capitalized and uncapitalized characters
  Output: string with all capitalized and uncapitalized characters flipped. other characters should remain unchanged

  Rules:
    Implicit:
    Explicit: cannot use `String#swapcase` method


Examples/Test Cases
CamelCase == cAMELcASE
Tonight on XYZ-TV == tONIGHT ON xyz-tv

Data Structre:


Algorithm:
define global upcase letters range
define global lowercase letters range
define method `swapcase` which takes 1 string input parameter
Split string into array
Loop over each character
  if character is alphanumeric
    ternary operation to calulate upcase of character or downcase based on if the charactedr is aleady capitalized

return by joining the neaw array as a new string
=end

ALPHABETIC = 'A'..'z'
UPPERCASE = 'A'..'Z'


def swapcase(string)
  output = string.chars.map do |chr|
    if ALPHABETIC.include?(chr)
      UPPERCASE.include?(chr) ? chr.downcase : chr.upcase
    else
      chr
    end
  end
  output.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'