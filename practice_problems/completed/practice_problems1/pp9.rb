=begin
Problem:
  As we have seen previously we can use some built-in string methods to change the 
  case of a string. A notably missing method is something provided in Rails, 
    but not in Ruby itself...titleize. This method in Ruby on Rails creates a string
    that has each word capitalized as it would be in a title. For example, the string:

    words = "the flintstones rock"

    words = "The Flintstones Rock"

  Input: String

  Output: String with first letter capitalized

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 


Data strucure:
 - string

Algorithm:
- Turn the string into an array of strings
- Loop over the array captizlizing the first character of each string
- Convert the array back into an string with space for delimeter

Tests:

=end


words = "the flintstones rock"
arr = words.split(' ')

arr.map! {|string| string.capitalize! }

new_string = arr.join(" ")


new_string = words.split(' ').map {|string| string.capitalize }.join(' ')

p new_string