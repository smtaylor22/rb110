=begin
Problem:

  Input: array
  Output: array containing every other element

  Rules:
    Implicit:
    Explicit:


Examples/Test Cases


Data Structure:
array

Algorithm:
  select elments whose index is odd

=end

def oddities(array)
  array.select.with_index { |_, i| i.even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]