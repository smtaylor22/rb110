=begin
A pangram is a sentence that contains every single letter of the alphabet at least once. 
For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, 
because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

Problem:
  Input: sentence string
  Output: boolean

  Rules

Examples:
The quick brown fox jumps over the lazy dog." == true

Data Structure:

Algorithm:
- downcase sentence string
- loop over each letter of alphabet
- check if letter is in string
- next iteration if so
- else return false


=end

def pangram?(sentence)
  downcase_sent = sentence.downcase
  ('a'..'z').each do |letter|
    return false unless downcase_sent.include?(letter)
  end
  true
end


p pangram?("The quick brown fox jumps over the lazy dog.")
p pangram?("This is not a pangram.")