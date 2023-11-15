=begin

Problem:
  Input: string containing 1 or more words
  Output: Same string with words with 5 or more chars reversed


  Rules:
    Implicit: String Input will only contain letters and spaces
    Explicit: Include spaces only when more than 1 word present



  Examples/Test Cases:


  Data Structure:


  Algorithm:
  Split string into array of words
  loop over array of words using `Array#map!`
    reverse the current word element if size is greater than 5
    otherwise return the current element to the block
  join array with space
=end

def reverse_words(string)

  string.split.map do |word|
    word.reverse! if word.size >= 5
    word
  end.join(' ')
end


puts reverse_words('Professional') == 'lanoisseforP'         # => lanoisseforP
puts reverse_words('Walk around the block') == 'Walk dnuora the kcolb'# => Walk dnuora the kcolb
puts reverse_words('Launch School') == 'hcnuaL loohcS'        # => hcnuaL loohcS
