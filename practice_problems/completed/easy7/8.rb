=begin

Problem:
  Input: 2 arrays of ints
  Output: out 1 array of ints with product of each pair

  Rules:
    Implicit:
    Explicit: assume input arguments contain same number of elements


Examples/ Test Cases:


Data Structure:


Algorithm:
initialize new array for procuts names `products`
loop over each element in both arrays
  mulitply current element in first by current element in second argument
  add result to `product` array

return `product` array
=end


def multiply_list(array1, array2)

  products = []
  array1.each_with_index { |num, i| products << num * array2[i]}
  products
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]