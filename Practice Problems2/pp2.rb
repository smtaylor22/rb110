=begin
Problem:
  order this array of hashes based on the year of publication of each book, from the earliest to the latest
  
  Input: array of hashes
  Output: reordered array of hashes

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - hash

Algorithm:
Sort array by Looping over each element in the array sorting by the hash`published` key value

Tests:

=end


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

a = books.sort do |a,b|
  a[:published] <=> b[:published]
end

puts a