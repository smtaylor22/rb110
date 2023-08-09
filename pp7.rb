=begin
Problem:
  Create a hash that expresses the frequency with which each letter occurs in this string:
  statement = "The Flintstones Rock"
  { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

  Input: String
  Output: Hash

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - Assuming letters are case sensistive

Example/Test Cases: 


Data strucure:
 - Hash

Algorithm:
- Create a new hash local variable named `hash`
- Loop over each character of the string 
  - If the hash has the character as key
    - take the current value and increment by 1
  - else create a new key with the current character with a value of 1

Tests:

=end

statement = "The Flintstones Rock"

hash = {}

statement.each_char do |char|
  if hash.key?(char)
    hash[char] += 1
  else
    hash[char] = 1
  end
end

p hash

