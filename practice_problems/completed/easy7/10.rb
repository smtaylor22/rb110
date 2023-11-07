=begin

Problem:
  Input: String
  Output: next to last word in string


  Rules:
    Implicit:
    Explicit: Word is sequence of non-blank chars
    input will always have at least 2 words


  Examples/Test Cases:
  last word == last
  Launch School is great! == is


  Data Structure:

  Algorithm:
  Split string on " " character into new array `words`
  return the [-2] index


=end 

def penultimate(string)

  string.split(' ')[-2]

end


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'