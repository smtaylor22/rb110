=begin

input strng
output array of strings

loop over chars in string
  return char if alphanumeric and index is odd uppercase the char


=end


def crazy_letters(string)
  string.chars.select.with_index do |chr, i|
    chr == ['a'..'z'] && i.odd?
  end
end

word = 'what-a-b.e.a.utiful day!'
p crazy_letters(word)



a = [1,2,3]
b = [4,5,6]

new_array = []

a.each_with_index do |element, i|
  new_array << element << b[i]
end

p new_array


p 'programming'.chars.select {|chr| %w(a e i o u).include?(chr)}.size

p 'programming'.count(%w(a e i o u))


=begin
input String
output array 

index 

loop over the input String
  adding a range of the string from 0..curretn Index to a new array

length of the string loop that many times
  0..current iteration



=end


def parts(string)
  output = []
  string.length.times do |i|
    output << string[0..i]
  end
  output
end

word = 'Sesquipedalianism'
p parts(word) # => ['S', 'Se', 'Ses', 'Sesq', 'Sesqu', 'Sesqui', 'Sesquip', 'Sesquipe', ...]
"string"[2,3] # another sytle to do 

# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'


