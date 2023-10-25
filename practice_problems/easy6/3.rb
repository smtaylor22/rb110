=begin

Problem:
  Input: Integer representing the first fibonaci number with the input parameter's number of digits
  Output: Integer representing the index of that fibonaci number (starting with integer 1)

  Rules
    Implicit:
    Explicit:

Examples/Test Cases:
(2) == 7          # 1 1 2 3 5 8 13
(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144

Data Structure:
Array for the fibonacci sequence

Algorithm:


=end  





p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847