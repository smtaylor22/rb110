=begin
For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :
an array [t, k] (in Ruby and JavaScript)

Problem:

  Input: non-empty lowercase string
  Output: 2-item array containing substring and count of it as integer

  Rules:


Example:
"ababab" ---> (t = "ab", k = 3)

"abcde" ---> (t = "abcde", k = 1)
because for this string, the minimum substring 't'
such that 's' is 'k' times 't', is 's' itself.

Data Structure:

Notes:
- if all chars uniq, return string s and 1
- find smallest repeated substring where the substring is added together k times to create string s

intialize output array



ababab
- 6 
- if count is even of chars
- size / 2 

Algorithm:
if even count
  loop from 1 upto size of string times with block parameter called slice
    Find all substrings of size slice length 
    get the count of all substrings
    if all substrings are equal
      return after add substring to output array and add slice as second variabvle as count of all substrings
      we can return since we are starting with smallest we know we found the smallest with the most count if we found a pattern
    check if all slices of size 
    finde slice of 
  find smallest
else
  return the original string and 1 in array

=end


def f(s)

  output = []
  substrings = []
  1.upto(s.size) do |slice|

    (0...s.size).step(slice) do |start|
      substrings << s[start, slice]
    end

    if substrings.all? {|i| i == substrings[0]}
      return [substrings[0], substrings.size]
    end
    substrings = []
  end


end



p f("ababab") == ['ab', 3]

p f("abcde") == ['abcde', 1]

p f("abcabcabc")