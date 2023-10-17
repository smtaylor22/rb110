=begin
Problem:
  Using the each method, write some code to output all of the vowels from the strings.
  Input: hash 
  Output: print output

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - hash and strings

Algorithm:
loop over each hash key value using the each_value function
loop over each array value 
covert each array value to array of chars
loop over the array to print the characters
print character out if contained in substring of "aeiou"


Tests:

=end

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


hsh.each_value do |arr|
  arr.each do |string|
    string.chars.each do |char|
      puts char if "aeiou".include?(char.downcase)
    end
  end 
end