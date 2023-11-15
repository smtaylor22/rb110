=begin

Problem:

  Input: string containing 2 words first name and last name separated by space
  Output: rearanged string containig last name comma first name

  Rules:
    Implicit:
    Explicit:


Examples/Test Cases:
'Joe Roberts') == 'Roberts, Joe'

Data Structure:
string 
array
new string

Algorithm:
define method `swap_name` that takes 1 input parameter string `string`
  concat a comma onto the end of the string
  spit convert string to array of words
  reverse the array
  return the joined array with space

=end

def swap_name(string)
  string.concat(',').split.reverse.join(' ')
end



p swap_name('Joe Roberts') == 'Roberts, Joe'