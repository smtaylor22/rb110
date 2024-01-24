=begin
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'.
The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Problem:
  Input: string
  Output: hash with keys from each uniq letter of string with values representing count of letter key in string

  Rules:
    Explicit: Key must be symbol

Examples:
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Notes:
Example seems to be sorting the keys alphabetically

Data structure
start with string
convert to hash with symbol keys and integer values

Algorithm:
High level
- count occurance of each uniq character
- add this count to hash with character as symbol key

Loop over the uniq characters in string
  find count of current character in original string
  use current char as symbol as hash key and assign value of count to this key

return the hash ( may need to sort here)

=end

def letter_count(string)
  string.chars.uniq.each_with_object({}) do |char, hash|
    hash[char.to_sym] = string.count(char)
  end
end

p letterCount('arithmetics')