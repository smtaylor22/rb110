=begin
Problem:
  Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.
  Input: array 
  Output: new reordered array

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - hash and strings

Algorithm:
loop over each subarray in array
if array contains strings order alphabetically
if array contains integers order by integers 
return new array


Tests:

=end

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]


new_arr = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end

p new_arr