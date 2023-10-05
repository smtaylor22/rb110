=begin
Problem:
  
  Input: 
  Output: 

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 


Data strucure:
 - 

Algorithm:
- 

Tests:

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end





=end


# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.pop(1)
end