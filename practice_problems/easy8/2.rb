=begin
Problem:
  Input: string
  Output: array of substrings

  Rules:
    Explicit: arrange output in shortest string to longest string
    Implicit: single length string returns single length array
    or length of string will b esame as the length of the array
Examples/ Test Cases:


Data Structure:


Algorithm:
convert input string arugment to array of characters
initialize `output` array
loop over the characters with each_with_index
  append the last character in the output array with the current element
  add this to the output array
return `output` array

=end


def leading_substrings(string)
  output = []
  string.chars.each do |char|
    substring = output[-1] ? output[-1] : ''
    output << substring + char
  end
  p output
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']