=begin

Problem:

  Input: positive integer
  Output: return array where each element is one of the input input integers

  Rules:
    Implicit: 
    Explicit:

Examples/Test Cases
7 -> [7]
12345 -> [1, 2, 3, 4, 5] 

Data Structure:

Algorithm:
Use digits method
or we could convert to string 
map on array of chars to return array where each char is turned back into integer

=end  


def digit_list(int)
  p int.digits.reverse
end


p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true