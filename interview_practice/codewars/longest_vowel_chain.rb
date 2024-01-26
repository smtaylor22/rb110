=begin
 The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. 
 Given a lowercase string that has alphabetic characters only (both vowels and consonants) 
 and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

Problem:

  Input: lowercase string of alphabetic chars (vowels and consonants) no spaces
  Output: integer - length of longest vowel substring

  Notes:
  vowels 
    aeiou

  will need to check all vowel substrings
  track which is the longest we have seen

Examples:
suoidea == 3 uoi
p solve("codewarriors") == 2 od io
p solve("iuuvgheaae") == 4 iuu eaae
p solve("ultrarevolutionariees") == 3 io iee
p solve("strengthlessnesses") == 1 s e e e e ...  
p solve("cuboideonavicuare") == 2 u oi eo a i ua
p solve("chrononhotonthuooaos") == 5 o o o o uooao
p solve("iiihoovaeaaaoougjyaw") == 8 oo aeaaaoou


Data Structure:


Algorithm:

High level
- Find all substrings made up of 'aeiou' characters
- Find the largest of these substrings

array_of_vowel_substrings 
substring empty string
- Find all substrings made up of 'aeiou' characters
  loop over each character in substring
    if consonant skip
    if vowel 
      concat vowel to vowel_substring
    else
      append substring to array of vowel substrings if substring is not empty
      set substring to empty string

return max of array_of_vowel_substrings
=end


def solve(s)
  # vowel_substrings = []
  # substring = ''
  # s.each_char do |char|
  #   if %w(a e i o u).include?(char)
  #     substring.concat(char)
  #   else
  #     vowel_substrings << substring if !substring.empty?
  #     substring = ''
  #   end
  # end
  # vowel_substrings << substring if !substring.empty?
  # vowel_substrings.max_by {|sub| sub.size}.size

  p s.scan(/[aeiou]+/)
end

solve("suoidea") == 3


p solve("suoidea") == 3
p solve("codewarriors") == 2
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
