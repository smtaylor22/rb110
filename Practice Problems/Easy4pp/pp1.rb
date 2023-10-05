=begin
Write a method that takes two strings as arguments, 
determines the longest of the two strings, and then 
returns the result of concatenating the shorter string, 
the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

Problem:
  

  Input: two strings
  Output: one string

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - 

Algorithm:
find longest string
concat the shortest string onto the ongest string before and after it

Tests:

=end


def short_long_short(str1, str2)
  longest = ''
  shortest = ''
  if str1.size > str2.size
    longest = str1
    shortest = str2
  else
    longest = str2
    shortest = str1
  end
  shortest + longest + shortest
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"