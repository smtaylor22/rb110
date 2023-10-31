=begin

Problem:

  Input: array of strings
  Output: array of strings with vowels removed

  Rules
    Explicit:
    Implicit:

Examples/Test Cases
(%w(green YELLOW black white)) == %w(grn YLLW blck wht)

Data Structure:
Array of strings

Algorithm:
define method `remove_vowels` which takes 1 input parameter `array`
Loop over each string in array
Use the `String#gsub` method to remove all vowel characters
Return the new array

=end

def remove_vowels(array)
  array.map do |word|
    word.gsub(/[aeiou]/i, '')
  end
end








p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']