=begin
Problem:
  Given the following data structure and without modifying the original array, 
  use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.
  
  Input: array of hashes
  Output: new array of modified hashes

  Rules:
    Explicit requirements:
      - original array must be unmodified
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - array of hashes

Algorithm:
loop over each hash in the array using map
create a shallow copy of the hash
Loop over each key value pair incrementing value by 1
return new array

Tests:

=end

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hsh|
  hsh_cop = hsh.dup
  hsh.each do |key,value|
    hsh_cop[key] += 1
  end
  hsh_cop
end


p arr
exmp_arr = [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

puts new_arr == exmp_arr