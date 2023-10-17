=begin
Problem:
  Pick out the minimum age from our current Munster family hash:
  ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

  Input: Hash
  Output: Integer

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 } => 10

Data strucure:
 - Hash

Algorithm:
- Creat `lowest` empty local variable to return integer
- Loop through the hash checking each value
  - if current value is less than `lowest` reassign lowest to this value

  - could also use the `Enumberable#min_by` method

  - could also just turn values into array and return min value
Tests:

=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.min_by {|key, val| val}
