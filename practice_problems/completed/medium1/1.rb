=begin
Problem:

  Input: array 
  Output: new array with first element moved to the end of the array

  Rules:
    Implicit:
    Explicit:



Examples/Test Cases:


Data Structure:


Algorithm:
define method `rotate_array` which takes 1 input parater array
  save copy of input array to new local variable
  shift new array and save this to new local variable
  append this element to the new array


  
=end



def rotate_array(array)
  new_array = array.dup
  first = new_array.shift
  new_array << first
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true