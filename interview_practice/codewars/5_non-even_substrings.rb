=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

Problem:
  Input: string of integers
  Output: integer of odd numbered substrings

  Rules:


Examples:
"1341" 1, 1, 3, 13, 41, 341, 1341
1 3 4 1 
13 34 41
134 341 
1341

13415
1 3 4 1 5
12 34 41 15
134 341 415
1341 3415
13415

size / n 
5 / 1
5 / 2 

1357 1 3 5 7 15 17 135 137 357 1357
Data Structure:
Array of characters in integers string
Array of each integer substring

initialize substring count
Find all consecutive slices of 1 up to size of string 
slice variable that is initialized to n
number of possible substrings at iteration num_possible_subs
num_ossibl_sub times do slicing with index
  slice string from [index, slice] starts at index and slices a substring of length slice
  incremnt substring count by 1 if converting to integer and checking if its odd evaluates as true
  increment counter by slice

return substring count

Algorithm:
Finda all combinations of n characters from 1 upto the length of the input string
add to odd substring array if joining the current combination and converting to itneger is odd number
return size of odd substring array


=end


# def solve(string)
#   odd_substrings_count = 0
#   num_possible_subs_per_slice = string.size
#   1.upto(string.size) do |slice|
#     num_possible_subs_per_slice.times do |index|
#       odd_substrings_count += 1 if string[index, slice].to_i.odd? 
#     end
#     num_possible_subs_per_slice -= 1
#   end
#   odd_substrings_count
# end 

def solve(s) 
  substring_array = []
  (0..s.length-1).each do |start|
    (start..s.length-1).each do |last|
      substring_array << s[start..last] 
    end
  end
  p substring_array
end
# 1341
# 1 13 134 1341
# 3 34 341
# 4 41
# 1



# 1341
# 1 3 4 1 
# 13 34 41
# 134 341 
# 1341

# def wrong(string)
#   char_arr = string.chars
#   odd_substrings_count = 0
#   comb_arr = []
#   1.upto(string.size) do |n|
#     char_arr.combination(n) do |comb|
#       # odd_substrings_count += 1 if comb.join.to_i.odd?
#       comb_arr << comb if comb.join.to_i.odd? && comb.scan(\[comb]+\)
#     end
#   end
#   # odd_substrings_count
#   p comb_arr

# end
p solve("1341")