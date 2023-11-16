=begin

Problem:
  Input: string
  Output: array containing all words from string appending a space and length of each word
  
  Assume words are separated by 1 space
  any sequence non-space characters are words

  Rules:
    Implicit:
    Explicit:


Examples/Test Cases:


Data Structure:
  string 
  array of strings

Algorithm:
define method `word_lengths` that takes 1 input parameter `string` 
  split the string to array of strings separating each word saving to new local variable `words`
  `Array#map` the `words` array 
    for each word append a space and size of the current word
  return new array


=end


def word_lengths(string)
  p string.split.map { |word| word.concat(" ", word.size.to_s) }
end



p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []