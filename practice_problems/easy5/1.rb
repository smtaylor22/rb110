require "pry"
require "pry-byebug"
=begin

Problem:

  Input: String
  Output: Integer representing sum of ascii value of each char

  Should be able to handle any character type. punctuation included

  Rules:
    Implicit: Empty string returns 0
    Explicit

Examples/Test Cases:
'abc' => 97 + 98 + 99 = 294

Data Structure:
String

Algorithm
- declare method `ascii_value` that takes string parameter `string`
- invoke `String#chars` method on `string` argument  to get array of strings
- invoke `Array#map` on chars array 
- pass block to `map` method which calls the `String#ord` method on each char 
  returning the ascii value of each char
- invoke the count method on the returned array from `map`
- implicitly return this result
=end

def ascii_value(string)
  binding.pry
  string.chars.map{ |char| char.ord }
end

p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0
