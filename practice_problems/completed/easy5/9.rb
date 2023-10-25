=begin

Problem:
  Input: String with many consecutive dublicate characters
  Output: String with alll consecutive duplicated characters removed

  Rules:
    Implicit: 
    Explicit: Can't use `String#squeeze` or `String#squeeze!`

Examples/Test Cases:

Data Structure


Algorithm:
Define method `crunch` that takes 1 input parameter `string`
initialize a string `cur_char` to track which char we are currently analyzing
initialize an output string `output`
Loop over each character of `string` argument
  assign current char to `cur_char` if not equal to each other
  if they are not equal this is the first time seeing this consecutive character 
    so add it to our output string `output` 

  otherwise skip to next character

return `ouput`
=end

# def crunch(string)
#   ouput = ''
#   current_char = ''
#   string.chars.each do |char|
#     if current_char != char
#       current_char = char
#       ouput.concat(char) 
#     else
#       next     
#     end
#   end
#   p ouput
# end

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  p crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''