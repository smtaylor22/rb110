=begin
Problem:
  Input: String of words
  Output: Hash with number of words of different sizes

  Rules:
    Implicit: 
    - word is string of characters not separated by space
    - empty string returns empty hash
    Explicit:

Examples/Test Cases:
'Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }

Data Structure:
String
Hash

Algorithm:
define method `word_sizes` that takes input parameter `string`
Initialize hash `sizes_hash`
Split string into words: split on " " saving result to arrray `words`
Loop over array of words getting the length of each string
  Save each word length to a new array
Loop over the array of word lengths
  Use the current element as hash key and update the value + 1

return the hash

=end


def word_sizes(string)
  hash = Hash.new(0)
  word_lengths = string.split.map { |word| word.size }
  word_lengths.each_with_object(hash) do |word, hash|
    hash[word] += 1
  end

end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}