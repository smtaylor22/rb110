=begin

Problem:

  Input: array of strings
  Output: print number of occurences of each string

  Rules:
    Implicit:
    Explicit: Words are case-sensitive

  Examples/Test Cases

  DAta Structure:
  hash to track counts of words

  Algorithm:
  initialize hash for tracking counts
  loop until input array is empty
    Look at first word
    find all occurences of this word in array
    add this count and word key to a hash with count as value
    delete all occurences of this word

  loop over counter hash each
  print all key value pairs in hash

=end 


def count_occurrences(array)
  occurences = {}

  until array.empty?
    occurences[array[0]] = array.count(array[0])
    array.delete(array[0])
  end

  occurences.each do |key, value|
    puts "#{key} => #{value}"
  end
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)