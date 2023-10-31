=begin

Problem:
  Input: array and integer  
  Output: boolean


Examples / Test Cases


Data Structure:


Algorithm:
Loop over array checking if current element equals input integer
return true if so
after loop if not found return false

=end

def include?(array, int)
  array.each {|element| return true if element == int}
  return false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false