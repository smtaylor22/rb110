=begin

Problem:

  Input: array of integers
  Output: average of all integers in the array as integer

  Rules:
    Implicit: will never have empty array as [input
    - always expect positive integes as input
    Explicit: May not use `Array#sum` method


  Examples/Test Cases:
      [1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3

  Data Structure:
  array of integers
  output to create new integer


  Algorithm:
      use `Enumberable#reduce` method with the `(:+)` symbol to get the sum
      divide by the size of the input array
      return result

  OR  
      initialize a `sum` local variable to 0
      iterate over each element in the input array using each
        increment `sum` variable by value of current element
      divide sum by size of the array and return reslut
=end  


def average(array)
  p array.reduce(:+) / array.size
end




puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40