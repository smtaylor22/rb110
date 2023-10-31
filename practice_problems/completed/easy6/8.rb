=begin

Problem:

  Input: array 
  Output: integer representing the duplicate value

  Rules:
    Explicit:
    Implicit:



Examples/ Test Cases:


Data Structure:


Algorithm:
define method `find_dup` which 1 takes 1 array `array` as input paramater
create a new array `searched`

loop over each element in the `array` argument
  if the `searched` array does not include current element add it to the array
  if it is included return that element
=end  


def find_dup(array)

  searched = []

  array.each do |element|
    if searched.include?(element)
      return element
    else
      searched.push(element)
    end
  end
end






p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73