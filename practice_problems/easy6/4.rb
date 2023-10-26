=begin

Problem:
  Input: array
  Output: array with all elements reversed

  Rules:
    Explicit: return the same original input array object
    may not use `Array#reverse` or `Arrray#reverse!`
    Implicit:


Examples/Test Cases:
[1,2,3,4] == [4, 3, 2, 1]
['abc'] == ['abc']
[] = []

Data Structure:
1 array

Algorithm:
define method `reverse!` that takes `array` as 1 input parameter
  intialize local variable `array_copy` to copy of input parameter `array`
  initialize a local varialbe `index` set to 0 for iteration over array
  Loop over the copy of the array until the `array_copy` is empty
    pop the last element of array copy
    set the original array at current index to the pop value

  return original array
=end


def reverse!(array)

  array_copy = array.dup
  index = 0

  until array_copy.empty?
    array[index] = array_copy.pop
    index += 1
  end

  array
end












list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true