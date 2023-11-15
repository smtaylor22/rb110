=begin
  
Problem:
  Input: string
  Output: return array of palindromic substrings (same sequence of chars forward and backward)

  Rules:
    Implicit: 
    Explicit: duplicate substrigns should be included
    - ordered as same sequnce appear in string
    - case matters
    - single chars not palindromes
    - use `substrings` method from last exercise
Examples/Test Cases:


Data Structure:


Algorithm:
initialize `output` array
Loop over each of the substrings returned by `substrings` method
      if string is greater than 1 and it equals the reverse of itself
        add to the output array
return output array

=end

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(string)
  output = []
  substrings(string).each do |sub| 
    output << sub if sub.size > 1 && sub == sub.reverse
  end
  output
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]