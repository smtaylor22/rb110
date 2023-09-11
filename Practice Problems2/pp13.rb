=begin
Problem:
 return a new array containing the same sub-arrays as the 
 original but ordered logically by only taking into consideration the odd numbers they contain.
  
  Input: array
  Output: array

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - array

Algorithm:
loop over each subarray comparing them with sort if the current element is odd

Tests:

=end

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]


new_arr = arr.sort do |a, b|
  a2 = a.select {|x| x.odd? } 

  b2 = b.select { |el| el.odd? } 

  a2 <=> b2
end

p new_arr


output = [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]

puts new_arr == output