# Given a sentence, find all pairs of words whose first letter matches the last letter of its pair. 
# Return an empty array if there’s no such pair. Only consider words that have at least length of 2 
# for the pairings. -- Stephen

=begin

Problem:
  Input: string of words
  Output: nested array of pairs

Examples
The cat in the hat ["The", "cat"], ["The", "hat"], ["the", "hat"]]


Data Structure
Nested array of strings word pairings
each sub array will be of length 2

Algorithm:

High level
- split string into array of words (split on space) making them case insensitive
- Find the combinations of pairing each word together
- of those combinations select the ones that start and end with the same character

Deeper Level
Downcase the input string
Split input string into array of words using string.split
Select from this array only string greater than length of 2
Find the combinations of pairing each word together
Select over the combinations of words
  condition 
    first letter of the first item in combination array equals the last 
    letter of the second element in the combination subarray
return results of the select

=end


def find_matching_pairs(words_string)
  words = words_string.downcase.split.select {|word| word.size >= 2 } 

  word_pairings = []
  words.combination(2) do |combination|
    word_pairings << combination
  end

  word_pairings.select do |pair|
    pair[0][0] == pair[1][-1]
  end
end

puts find_matching_pairs("The cat in the hat").inspect # [["The", "cat"], ["The", "hat"], ["the", "hat"]]
puts find_matching_pairs("A man a plan a canal Panama").inspect # []
puts find_matching_pairs("This sentence has no pairs").inspect # [["sentence", "has"], ["sentence", "pairs"]]
puts find_matching_pairs("Apple leads to leap").inspect # []