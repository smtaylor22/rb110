# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

=begin

Problem:

  Input: string
  output: a character that occurs least often

  Rules:
    if multiple characters with same # occurrences return first one
    ignore case
    
examples/test
"Hello World" == "h"
"Peter Piper picked a peck of pickled peppers" == "t"
Happy birthday! == ' '
aaaaaAAAA == 'a'

data Struct

algorithm
count occurences of each character
save this a hash increment each by 1 when we find them
find the key or keys with lowsest value
check which key occurs first in the String
return that KeyError


initialize Hash 
loop over each character in String
    set hash key to 1
    increment value of current chara key to + 1 if not in hash


Find hash elements with lowest value
intialize lowest value set to first elemetn in hash
loop over each elemetn in hash
      if hash key value < lowest_value
        set lowset value to current value of hash in LocalJumpError

loop over hash selecting elements with value of lowest value
        # will return array of keys

initliaze empty array of indexes
loop over the Array of keys find the index of that key in the String
        append index where key is found in string to array_index

get lowest value of array of indexes

return string[lowest_index]

=end
