=begin
  
Problem:
  Input: string
  Output: array of leading substrings

  Rules:
    Implicit: use method from previous question
    Explicit: ordered from shortest to longest for each start positiohn

Examples/Test Cases:


Data Structure:


Algorithm:
convert string to array of characters
initialize output array
Loop over each starting position in a string
  use the `leading_substrings` method to return array of each substring at that position
    pass the array joined as a string to method
  add this array to output array
shift the array by 1
return flattened array


=end

def substrings(string)
  characters = string.chars
  output = []
  until characters.empty?
    output << leading_substrings(characters.join)
    characters.shift
  end
  output.flatten
end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]