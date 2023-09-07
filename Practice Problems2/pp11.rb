=begin
Problem:
  Given the following data structure use a combination of methods,
   including either the select or reject method, to return a new array 
   identical in structure to the original but containing only the integers that are multiples of 3.
  
  Input: array 
  Output: array

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - aray
Algorithm:
loop over each subarray
loop over each element in the subarray
  only selecting the element if it is a multiple of 3

return new array

Tests:

=end

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

new_arr = arr.map do |sub_arr|
  sub_arr.select{|element| element % 3 == 0 }
end



output = [[], [3, 12], [9], [15]]

puts new_arr == output