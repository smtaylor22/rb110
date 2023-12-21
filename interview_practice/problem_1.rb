=begin
  
Problem
  Input: array of integers
  Output: output an array of integers
  
returning a new array

Examples:
[8,1,2,2,3]] == [3, 0, 1, 1, 2]
8 1,2,3  = 3
1 0 = 0
2 1 = 1
3 1,2 = 2

[1]
1 0 = [0]

Data Structure:


Algorithm:

loop over all elemetns in input array
  initialize smaller_sum in the loop to 0
  loop over all unique elements in input array
    check if current element is < all other elements in array
      increment the smaller_sum count by 1 if smaller
  append smaller_sum to output array

return output_array of numbers smaller
=end


# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

def smaller_numbers_than_current(array)
  array.map do |num|
    smaller_sum = 0
    array.uniq.each do |comparison|
      smaller_sum += 1 if comparison < num
    end
    smaller_sum
  end
end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".