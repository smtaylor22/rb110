=begin
  
Problem:
  Input: array of integers
  Output: sum of sums 

  Rules:
    Implicit:
    Explicit: assume always be given array with 1 integer

  Examples/Test Cases:
  [3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)

  Data Structure:

  Algorithm:
    Initialize a counter variable `counter`
    Initialize new sum array `sums`
    while counter <= size of input array
      append elements in array range from 0..counter
      increment counter by 1
    return flattened `sums` array and calculate sum of all integers in array
=end

def sum_of_sums(array)
  counter = 0
  sums = []

  while counter < array.size
    sums << array[0..counter]
    counter += 1
  end
  p sums.flatten.sum
end


p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35