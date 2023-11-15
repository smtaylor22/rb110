=begin


Problem:
  Input: string
  Output: new string with words in reverse order

  Rules:
    Implicit:
    Explicit: any number of empty white spaces returns empty string

  Examples/Test Cases:


  Data Structure:


  Algorithm:
  define method `reverse_sentence` that takes 1 input parameter `string`
    split the string into array of words
    invoke the `Array#reverse` method on array of words
    return the result of using the `Array#join` method passing a `' '` character to the method

=end


def reverse_sentence(string)
  string.split.reverse.join(' ')
end


puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''