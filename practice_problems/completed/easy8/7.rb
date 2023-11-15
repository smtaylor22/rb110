=begin

Problem:
  Input: string
  Output: new string with every consonant character doubled. vowels, digits, punction, and whitespace ignored


  Rules:
    Implicit:
    Explicit:


  Examples/Test Cases
  ('String') == "SSttrrinngg"
  ("Hello-World!") == "HHellllo-WWorrlldd!"
  ("July 4th") == "JJullyy 4tthh"
  ('') == ""

  Data Structure:
  string

  Algorithm:
  define method `double_consonants` with 1 input parameter `string`
    initialize new empty string `output`
    loop over each characeter in `string` argument
      concat to `output` string if if it a alphabetic character
    return `output` string


=end

def double_consonants(string)

  output = ''
  string.each_char do |char|
    if !(char =~ /[aeiou0-9]/i) && (char =~ /\H/)
      output << char << char 
    else
      output << char
    end
  end
  p output
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""