=begin
Problem:
  Turn this array into a hash where the names are the keys and the values are the positions in the array.
  flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

  Input: array
  Output: hash with each element key and array index as value

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 
  array_to_hash(flintstones) == {"Fred" => 0, Barney" => 1, "Wilma" => 2, "Betty" => 3, "Pebbles" => 4, "BamBam" => 5}

Data strucure:
 - hash

Algorithm:
- Initialize a hash object
- Loop over each element in the array
- add the current element of the array as a new key in the hash 
and assign the current array element index as the value
- return the new hash

Tests:

=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

def array_to_hash(arr)
  hash = {}
  arr.each_with_index {|element, index| hash[element] = index}
  hash
end

p array_to_hash(flintstones)