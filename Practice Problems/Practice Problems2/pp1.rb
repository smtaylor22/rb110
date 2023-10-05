=begin
Problem:
  order this array of number strings by descending numeric value
  arr = ['10', '11', '9', '7', '8']
  Input: array of strings
  Output: array of strings

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - array

Algorithm:

Tests:

=end

arr = ['10', '11', '9', '7', '8']

x = arr.sort {|a, b| b.to_i <=> a.to_i}

p x