=begin
  Problem:
    Input: array of integers
    Output: array of two integers, the integers closest together in value

    Rules:
      Implicit:
      Explicit: 


  Examples:
  [5, 25, 15, 11, 20] = [15, 11]
  [19, 25, 32, 4, 27, 16] = [25, 27]
  [12, 7, 17] = [12, 7]


  Data structures:


  Algorithm:
  lowest difference variable
  array of lowest integers variable
  loop over input array with index
    loop over array again starting at + 1 from current index
      find difference current elemetn from outer loop with the current elemetn in inner loop
      if this difference is less than lowest difference seen update lowest differfence 
        update array of lowest integers
  return lowest integer array
=end


# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

# def closest_numbers(arr)
#   lowest_diff = (arr[0] - arr[1]).abs
#   lowest_ints = [arr[0], arr[1]]

#   arr.each_with_index do |num1, idx|
#     arr[idx+1..-1].each do |num2|
#       difference = (num1 - num2).abs
#       if difference < lowest_diff
#         lowest_diff = difference
#         lowest_ints = [num1, num2]
#       end
#     end
#   end
#   lowest_ints
# end

# def closest_numbers(arr)
#   p arr.sort[0..1]
# end
def closest_numbers(arr)
  # Sort the array to make it easier to find closest numbers
  sorted_arr = arr.sort

  # Initialize variables to keep track of the closest numbers and their difference
  closest_pair = [sorted_arr[0], sorted_arr[1]]
  min_difference = (sorted_arr[1] - sorted_arr[0]).abs

  # Iterate through the sorted array to find the closest pair
  (1..sorted_arr.length - 2).each do |i|
    difference = (sorted_arr[i + 1] - sorted_arr[i]).abs

    if difference < min_difference
      closest_pair = [sorted_arr[i], sorted_arr[i + 1]]
      min_difference = difference
    end
  end

  closest_pair.sort  # Return the result in ascending order
end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".