=begin
Problem: 
  Input: string with alphabetic and non alphabetic characters
  Output: string with alphabetic characters and spaces

  Rules:
    Implicit: 
    Explicit: Replacing more than one consecutive alphabetic character should make only 1 space

Examples/Test Cases:
---what's my +*& line? -> ' what s my line '

Data Structure:

Algorithm:
define method cleanup that takes string parameter `string`
replace all non alphanumberic characters wtih spacs
squeze string to remove redundent spaces
=end 

def cleanup(string)
  string.gsub!(/[^0-9a-z ]/i, ' ')
  string.squeeze!
end


p cleanup("---what's my +*& line?") == ' what s my line '