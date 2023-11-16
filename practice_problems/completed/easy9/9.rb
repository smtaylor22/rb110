require "pry"
require "pry-byebug"
=begin
Problem:

  Input: array of strings 
  Output: print out array of words that are anagrams grouped together in separate arrays

  Rules:
    Implicit: assume that arrays will only have unique words. words found twice will not be included
    Explicit:


Examples/Test Cases:
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

Data Structure:

Algorithm:
define method `anagrams` which takes array of strings as input
  initilaize empty array `output`
  loop until the input argument `words` array is empty
    select words that are anagrams returning this as array
    add this array to ouput array
    
define method `is_anagram?` which takes two strings as input
  split each string into characters
  sort each array of characters
  compare the arrays to see if equal
=end


def anagrams(words)
  output = []
  # binding.pry
  words.each do |word1|
    found = words.select { |word2| is_anagram?(word1, word2) }
    output << found
    
  end
  output
end


def is_anagram?(string1, string2)
  string1.chars.sort == string2.chars.sort
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

p anagrams(words)