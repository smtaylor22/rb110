=begin
# # Given an array of numbers, return true if any 5 consecutive numbers are greater than 3. 
# If there are less than 5 numbers in the array, return true if all are greater than 3. -- Stephen

# Problem:
#   Input: array of integers
#   Output: boolean

#   Rules:
#     Implicit:
#     Explicit: If size of input array is < 5 return true if all elements > 3
#     otherwise return false


# Examples/Test Cases:
# [4, 5, 6, 7, 8] == true
# [2, 4, 5, 6, 7, 8] == true
# [1, 2, 3, 4, 5] == false

# Data Structure:
# array 
# boolean

# Algorithm:
# set a local variable result to false
# counter variable
# loop do 
#   if size of array is less than 5
#     check if all elements are > 3
#   else
#     break if counter == input array size
#     Loop over each element with index 
#     take slice of input array starting from 0 getting five elements
#       Loop over each element in slice
#         check if all elemetns are greater than 3
#         if all greater than 3 set result to true

# return result variable


=end  

def check_consecutive_numbers(arr)
  result = false
  counter = 0

    if arr.length < 5
      return arr.all? { |num| num > 3 }
    end

    (0..arr.length - 5).each do |i|
      p arr[i,5]
      p i 
      p (0..arr.length - 5)
      result = arr[i,5].all? do |num|
      num > 3
    end
    
  end
  return result
end

puts check_consecutive_numbers([4, 5, 6, 7, 8]) # true
puts check_consecutive_numbers([2, 4, 5, 6, 7, 8]) # true
puts check_consecutive_numbers([1, 2, 3, 4, 5]) # false
puts check_consecutive_numbers([4, 4]) # true (less than 5 numbers, all greater than 3)
puts check_consecutive_numbers([2, 2]) # false (less than 5 numbers, not all greater than 3)

=begin
# Given an array of numbers, return the count of all combination of 
# 3 numbers where the values are in decreasing order.  -- Stephpen

Problem
  Input: array of int
  Output: integer

  Rules:
    Implicit:
    Explicit:


Examples
[5, 4, 3, 2, 1] 5,4,3, = 1   5,3,2

DAta structure

Algorithm:
intialize comibinations variable to zero
loop over each element in the array block varaible a
  Loop over elemetns start after first elemnt block variable b
    loop over elemetns starting after the other block variable c 
      if a > b > c
        count += 1

return count      


=end
# Test cases


# def count_decreasing_triplets(arr)
#   combinations = 0
#   arrays_comb = []
#   arr.combination(3) do |a, b, c| 
#     if a > b && b > c
#       arrays_comb << [a,b,c]
#     end
#     combinations += 1 if a > b && b > c 

#   end
#   p arrays_comb
#   combinations
#   # arr.each.with_index do |a, index|
#   #   arr[index..-1].each_with_index do |b, middle_index|
#   #     arr[middle_index..-1].each_with_index do |c, last_index|
#   #       combinations += 1 if a > b && b > c
#   #     end
#   #   end
#   # end
#   # return combinations
# end
# puts count_decreasing_triplets([5, 4, 3, 2, 1]) # Expected output: 10
# puts count_decreasing_triplets([-1, -2, -3, 4]) # Expected output: 1
# puts count_decreasing_triplets([1, 2, 3, 4, 5]) # Expected output: 0 (No combinations)