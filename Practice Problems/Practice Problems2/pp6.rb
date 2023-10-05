=begin
Problem:
  print out the name, age and gender of each family member from hash
  Input: hash
  Output: print out values

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - 

Algorithm:
loop over each hash  
get values from hash key at current loop 
use string interpolation to print current loop hash key with each array element


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
  arr = value.values
  puts "#{key} is a #{arr[0]}-year-old #{arr[1]}"
end  