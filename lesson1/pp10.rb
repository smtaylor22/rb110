=begin
Problem:
  munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }
  Modify the hash such that each member of the Munster family 
  has an additional "age_group" key that has one of three values 
  describing the age group the family member is in (kid, adult, or senior). 
  Your solution should produce the hash below

  { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
  
  Input: Hash 
  Output: Same hash

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 


Data strucure:
 - Hash

Algorithm:
- Loop over each key and value in the munsters hash
  - Add new key "age_group" with value "kid" if the "age" key value is between 0-17
  - Add new key "age_group" with value "adult" if the "age" key value is between 18-64
  - Add new key "age_group" with value "senior" if the "age" key value is 65+

- Return the hash

Tests:

=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  case value['age']
  when (0..17)
    value['age_group'] = 'kid'
  when (18..64)
    value['age_group'] = 'adult'
  when (65..)
    value['age_group'] = 'senior'
  end

end
p munsters

ok = { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
"Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
"Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
"Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
"Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

p munsters === ok