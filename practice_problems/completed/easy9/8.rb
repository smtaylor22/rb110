=begin

Problem:
  Input: array representing grocery list
    - contains string item with integer representing count of item
  Output: array with correct coutn of string representation of item

  Rules:
    Implicit:
    Explicit:

Examples/ Test Cases:
[["apples", 3], ["orange", 1], ["bananas", 2]] == ["apples", "apples", "apples", "orange", "bananas","bananas"]

Data Structure:

Algorithm:
define method `buy_fruit` that takes nest array as input parameter
  initialize new empty array `result`
  Loop over each array in the input argument array
    append current element[0] current element[1] times to the `result` array
  return the result array 

=end

def buy_fruit(grocery_list)
  result = []
  grocery_list.each do |array|
    array[1].times { |_| result << array[0]}
  end
  p result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]