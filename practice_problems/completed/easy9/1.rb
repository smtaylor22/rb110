=begin

Problem:
  Input: 2 arguments: array of strings and hash
  Output: Print out String combining the name and title and occupation

  array when combined creates a person's name
  hash contains the title and occupation of the person

  
  Rules: 
    Explicit:
    Implicit:

  Examples/Test Cases:


  Data Structures:


  Algorithms:
  Use string interpolation to print ot respective values

=end

def greetings(array, hash)

  "Hello, #{array.join(' ')}! Nice to have a #{hash.values.join(' ')} around."  

end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) == "Hello, John Q Doe! Nice to have a Master Plumber around."