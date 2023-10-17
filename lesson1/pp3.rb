=begin
Problem:
  remove people with age 100 and greater.
  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
  
  Input: hash
  Output: modified hash

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - assuming that we should mutate the originol array

Example/Test Cases: 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages = { "Herman" => 32, "Lily" => 30, "Eddie" => 10 }

Data strucure:
 - Hash

Algorithm:
- Use the `Hash#select!` method to loop over each key, value pair and select those with value less than 100
- return modified hash

Tests:

=end

def remove_100(hash)
  hash.select! do |_, val|
    val < 100
  end
end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p remove_100(ages)

# Could have used the `Hash#keep_if` method