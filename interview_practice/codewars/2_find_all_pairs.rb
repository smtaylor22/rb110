=begin
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Problem:
  Input: array of integers
  Output: integer (count of pairs)

  Rules
    Implicit:
    Explicit: empty array return count of 0
    

Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

Data Structures:


Notes:
The count seems to be 1 unless there is a pair that occurs morer than once


Algorithm:
variable to store count
Get the uniq elements in the input array
Get the count of each element 
Divide this count by 2 
add this amount to pairs count
  This will be the number of pairs of elements
  0 if only 1 counted
  1 if 2 count
  1 if 3 counted etc....


=end

def pairs(arr)
  arr.uniq.sum do |num|
   arr.count(num) / 2
  end
end

p pairs([1, 2, 5, 6, 5, 2])
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])