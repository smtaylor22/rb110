=begin

Write a function that will return the count of distinct case-insensitive 
alphabetic characters and numeric digits that occur more than once in the
input string. The input string can be assumed to 
contain only alphabets (both uppercase and lowercase) and numeric digits.

Problem:
  Input: string (only alpha-numeric characters)
  Output: count of chars that occur more than once

  Rules/Notes:
  - count of letters is case insensitive
  

Examples:
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice


Data Structure:
string
array of string chars/digits

Algorithm:
- Find the count of each uniq character
- return count


initialze counter

Take input string and get uniq characters
and the lowercase version of the string
loop over string of uniq chars
  find the count of current char
  if char coutn is > 1 increment counter variable by 1 

return counter 

aA11
a1
if count greater 1 increment counter by 1
a - 2
1 - 2

=end  


# def duplicate_count(str)
#   count = 0
#   str.downcase!

#   str.chars.uniq.each do |item|
#     count += 1 if str.count(item) > 1
#   end
#   count
# end

def duplicate_count(text)
	arr = text.downcase.split("")
  p arr.uniq.count { |n| arr.count(n) > 1 }
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2