=begin
Problem:
  Add up all of the ages from the Munster family hash:
  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

  Input: hash
  Output: integer

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
add_hash(arges) == 6174 

Data strucure:
 - Hash

Algorithm:
- Call `Hash#values` method on the hash to get array of the hash values
- Call `Array#sum` to add all the elements of the new array
- return result of `Hash#values` and `Array#sum`

Tests:

=end

def add_hash(hash)
  hash.values.sum
end


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p add_hash(ages)

# Answer key
ages.values.inject(:+) # => 6174