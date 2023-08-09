=begin
Problem:
  Find the index of the first name that starts with "Be"
  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

  Input: Array of strings
  Output: integer index

  Rules:
    Explicit requirements:
      - Strings are case sensistive
    Implicit requirements:
      - 

Example/Test Cases: 
%w(Fred Barney Wilma Betty BamBam Pebbles) => Betty

Data strucure:
 - Array

Algorithm:
- Loop over array checking if the current element string starts with the substring 'Be'
- Return the index

Tests:

=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

found = nil
flintstones.each_with_index do |element, index|
  if element.start_with?('Be')
    found = index
  end
end

p found

p flintstones.index { |name| name[0, 2] == "Be" }