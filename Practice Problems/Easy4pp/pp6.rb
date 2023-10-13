=begin

Problem:
  Input: array of integers
  Output: array of integers

  Rules:
    Explicit requirements:
      - 1 element array will return array with same element
      - emtpy array input returns empty array output
    Implicit requirements:
      - 

Example/Test Cases: 
running_total([2, 5, 13]) 
running total of [2, 5, 13]
first round 2
second iteration 5 + 2 = 7  
third iteration 7 + 13 = 20
[2,7,29]

Data strucure:
 - array of integers

Algorithm:
running total method takes one parameter `arr`
Intialize a `current_sum` variable to 0
Invoke the `map` function on the arr argument passed to function if arr is not empty
Reassign the `arr` to the return value of the `map` function
Add the `current_sum` to the current element in the iteration
return the new array

Tests:

=end

# def running_total(arr)
#   current_sum = 0
#   arr.map do |num|
#     current_sum += num
#   end
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []


# def running_total_with_object(arr)
#   current_sum = 0
#   arr.each_with_object([]) {|i, a| a.push(current_sum += i)}
# end

# p running_total_with_object([2, 5, 13]) == [2, 7, 20]
# p running_total_with_object([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total_with_object([3]) == [3]
# p running_total_with_object([]) == []

def running_total_reduce(arr)
  total = 0
  arr.reduce([]) {|new_array, int| new_array.push(total += int)}
end

p running_total_reduce([2, 5, 13]) == [2, 7, 20]
p running_total_reduce([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_reduce([3]) == [3]
p running_total_reduce([]) == []

