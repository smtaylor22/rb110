=begin
Problem:
  sum total age in male members hash family
  Input: hash of hashes
  Output: integer

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - 

Algorithm:
  Return array of integers of each males age
  sum the array

Tests:

=end


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}


x = munsters.select{|key, value| value['gender'] == 'male'}.map{|key,value| value['age']}.sum

p x