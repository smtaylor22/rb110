=begin

Problem

  Input: string
  Output: new string with every character of input string doubled


  Rules:
    Implicit:
    Explicit: empty string returns empty string



  Examples / Test Cases:
     repeater('Hello') == "HHeelllloo"
     repeater("Good job!") == "GGoooodd  jjoobb!!"
     repeater('') == ''

  Data Structure:


  Algorithm:
  define new method `repeater` with 1 input parameter `string`
    Initialize a new empty string `output`
    Loop over each char of the input string
      Concat the current element in the loop twice to `output` string
    return `output` string
=end  


def repeater(string)
  output = ''
  string.each_char do |char|
    2.times {|_| output.concat(char)}
  end
  p output
end



p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''