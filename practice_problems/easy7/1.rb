=begin
  
Problem:

  Input:2 arrays
  Output: both arrays combined into 1
  
  Rules:
    Implicit:
    Explicit:


Examples / Data Structures:

Data Structure:

Algorithm:
define method `interleave` that takes two arrays 
as input parameters `array1` and `array2`

initialize new empty array `output`

loop over each element of both arrays
assigning the element from the first array
to to the new array first and the second next

return the `output` array


=end

def interleave(array1, array2)

  output = []

  counter = 0

  while counter < array1.size
    output << array1[counter]
    output << array2[counter]
    counter += 1
  end
  output
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']