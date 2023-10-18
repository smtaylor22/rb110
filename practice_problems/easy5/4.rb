=begin
  
Problem:
  Input: String of words separated by ' '
  Output: String of words separated by ' ' with first letters of every word swapped

  Rules:
    Implicit: Empty string should just return empty string
    one char string should just return itself
    Explicit:

Examples/Test Cases:
Abcde -> ebcdA
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'

Data Structure:
String

Algorithm:
Split string into array of words with `String#split`
Loop over each word in array
  for each word save the first and last character
  set the last character of string to the first and vice versa
join the array with space character and return this string

=end

# def swap(string)

#   words = string.split
#   words.each do |word|
#     first = word[0]
#     last = word[-1]
#     word[0] = last
#     word[-1] = first
#   end
#   p words
#   words.join(" ")
# end



def swap_first_last_characters(a, b)
  a, b = b, a
end

def swap(words)
  result = words.split.map do |word|
    p swap_first_last_characters(word[0], word[-1])
  end
  result
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
