=begin

Problem:

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. 
There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.
  Input: 2 arrays 
  Output: both arrays merged together into one array with duplicate values removed

  Rules:
    Explicit:
    Implicit: return new array


Examples/Test Cases:

Data Structure:

Algorithm:
use the `Array#union` method to combine both arrays without duplicates
=end

def merge(array1, array2)
  array1.union(array2)
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]