=begin
  Problem:

    Input: 2 array arguments of integers
    Output: array containing product of every pair of numbers sorted in increasing order

    Rules:
      Explicit: neighter argument in empty array
      Implicit:

  Examples/Test Cases:
[2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
2* 1
2*2
2*3
2*4
4*1
4*2
4*3
4*4

  Data Structure:

  Algorithm:
  Combine the product of each element of both arrays using the `Array#product` method
  pass block to method to mulitply the combination of the 2 options
  Take the return and loop over each pair using `Array#map!`
    for the each pair invoke `Enumberable#reduce` method passing in the `:*` operand to the method
  now flatten the array to one array using `Array#flatten`
  sort the array using `Array#sort`
=end

def multiply_all_pairs(array1, array2)

  array1.product(array2).map!{ |array| array.reduce(:*) }.flatten.sort

end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]