=begin

Problem:
  Input: sentence string
  Output: convert sentence string with nubmer words converted to digits

  Rules:
    Implicit:
    Explicit:

Examples/Test Cases


Data Structure:
Hash representing string words of numbers and their integer string value

Algorithm: 
initialize hash `number_words`
define method word_to_digit that takes 1 input parameter `sentence`
  create new variable `words` setting value to split sentence into array of words 
  loop over each word using map
    if word is in `number_words` return the value from that hash key
    otherwise return the current word
    
  join the array back together on space


  array of word strings ordered from 1 to 9
  loop over each word string 
      invoke gsub on input string passing the current word string as patter
      replace with current iteration index + 1
=end  

# NUMBER_WORDS = { zero: '0', one: '1', two: '2', three: '3', four: '4', five: '5', six: '6', seven: '7', eight: '8', nine: '9' }
# def word_to_digit(sentence)
#   sentence.split.map do |word|
#     if NUMBER_WORDS.key?(word.gsub().to_sym)
#       NUMBER_WORDS[word.to_sym]
#     else
#       word
#     end
#   end.join(' ')
# end


def word_to_digit(sentence)
  words = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  words.each_with_index do |word, i| 
    sentence.gsub!(/\b#{word}\b/, i.to_s)
  end
  p sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'