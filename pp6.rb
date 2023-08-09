=begin
Problem:
  Write code that changes the array below so that all of the names are shortened to just 
  the first three characters. Do not create a new array.
  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

  Input: array of strings
  Output: same array but modified

  Rules:
    Explicit requirements:
      - Mutate orginol array
    Implicit requirements:
      - 

Example/Test Cases: 
%w(Fred Barney Wilma Betty BamBam Pebbles) => %w(Fre Bar Wil Bet Bam Peb)

Data strucure:
 - array

Algorithm:
- Loop over each string in array and get the substring of the first 3 characters of the string
  - Assign this value to the current array index
- can use the `Array#map!` function
Tests:

=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |string|
  string[0,3]
end

p flintstones