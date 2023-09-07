=begin
Problem:
  Given the following data structure, 
  and without using the Array#to_h method, 
  write some code that will return a hash where the 
  key is the first item in each sub array and the value is the second item.
  
  Input: array
  Output: hash

  Rules:
    Explicit requirements:
      - cant us `Array#to_h` method
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - array of 

Algorithm:
initialze a new empty hash
loop over each array with each
  set the new empty hash key to arr[0] and the value to arr[1]

return the new empty hash

Tests:

=end

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

hsh = {}

arr.each do |sub_arr|
  hsh[sub_arr[0]] = sub_arr[1]
end


output = {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

puts hsh == output