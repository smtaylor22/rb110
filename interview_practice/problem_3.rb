=begin
 
Problem:
  Input: string 
  Output: same sequence as input string but every 2nd over every 3rd work charcter of word in string converted to upppercase

  Rules:
    Implicit: 
    Explicit:

Examples/Test Cases:
Lorem Ipsum is simply dummy text of the printing
Lorem Ipsum iS simply dummy tExT of the pRiNtInG


aaA bB c == aaA bB c 

Data Structure:


Algorithm:
Break string into an array to loop over it 
loop over array of words 
  if word is one of every third word in sequence
    loop over characters capitalizing every 2nd character
      if character is one of egvery 2nd 
        capitalze character

return string


=end



# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:


def to_weird_case(string)
   string.split.map.with_index do |word, index|
    if (index + 1 ) % 3 == 0
      word.chars.map.with_index do |char, word_index|
        if (word_index + 1 ).even? && char != ' '
          char.upcase
        else
          char
        end
      end.join()
    else 
      word
    end
  end.join(' ')
end

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') 
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".