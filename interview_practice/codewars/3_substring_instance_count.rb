=begin
  
Complete the solution so that it returns the number of times the search_text is 
found within the full_text. Overlap is not permitted : "aaa" contains 1 instance of "aa", not 2.

Problem:
  Input: 2 strings, a full text and a string to find in tedxt
  Output: integer count of substring in search text

  Rules: 
    Implicit:
    Explicit: search text cannot overlap to find multiple occurences

Examples:
full_text = "aa_bb_cc_dd_bb_e", search_text = "bb"
    ---> should return 2 since "bb" shows up twice


full_text = "aaabbbcccc", search_text = "bbb"
    ---> should return 1


Data Structure:
String


Algorithm:
Find all occurances of substring in string
If substring is multiple characters each check must be a slice of the number of chars in substring

1 char string we could use count

Use the scan method to find the patter given 

=end

def solution(whole_text, search_text)
  whole_text.scan(search_text).size
end

p solution('abcdeb','b') == 2
p solution('abcdeb', 'a') == 1
p solution('abbc', 'bb') == 1