=begin

Problem:

  Input: Strings with non-alphanumeric chars
  Output: count without counting non-alphanumeric chars

  Rules:
    Explicit:
    Implicit:

Examples/Test Cases
"it's" 3

Data Structure:


Algorithm:



=end  



def word_sizes(string)
  word_lengths = string.split.map { |word| word.gsub(/[\W]/i, '').size }
  p word_lengths
  word_lengths.each_with_object(Hash.new(0)) do |word, hash|
    hash[word] += 1
  end

end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}