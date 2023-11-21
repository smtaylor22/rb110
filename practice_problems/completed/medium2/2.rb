require "pry"
require "pry-byebug"
=begin
  Problem:
    Input: String
    Output: boolean true or false if word can be spelled from blocks


    Rules:
      Implicit:
      Explicit:


  Examples / Test Cases
  blocks
  B:O   X:K   D:Q   C:P   N:A
  G:T   R:E   F:S   J:W   H:U
  V:I   L:Y   Z:M


  BATCH == true

  Data Structure:
  nested array representing blocks


  Algorithm:
  Master block nested array
  define method block_word? which takes 1 string as input
    make a copy of the `blocks` array
    loop over each chard in input string
      check if current letter can be found in blocks array
        delete blcok from copy block array letter is found 
      if letter not found return false
    otherwise return true
=end
  
BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
 ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
 ['V', 'I'], ['L', 'Y'], ['Z', 'M']]


def block_word?(word)
  current_blocks = BLOCKS.dup
  # binding.pry
  word.each_char do |chr|
    found = false
    current_blocks.each_with_index do |block, index|
      if block.include?(chr.upcase)
        found = true
        current_blocks.delete_at(index)
      end
      break if found == true
    end
    return false if found == false # letter was not found in available blocks
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

p BLOCKS