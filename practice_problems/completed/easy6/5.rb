=begin

Problem:
  Input: array
  Output: new array

Examples/Test Cases:


Data Structure:
array

Algorithm:
define method `reverse` that takes 1 input parameter `array`
initialize new array `reversed`
initialize new local variable `index` = -1
loop until `array[index]` equal `nill`
  push current element at index of `array` to `reversed`
  increment index -1

return `reversed`

=end


def reverse(array)
  reversed = []
  index = -1
  until array[index] == nil
    reversed << array[index]
    index -= 1
  end
  reversed
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true