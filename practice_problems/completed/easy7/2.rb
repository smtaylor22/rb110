=begin

Problem:

  Input: string
  Output: hash represneting
    - number of lowercase chars
    - number of uppercase chars
    - number of chars that are non-alphanumeric
  
  Rules:
    Implicit:
    Explicit:

Examples / Test Cases
abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }


Data Structure:
hash


Algorithm:
define method `letter_case_count` that takes 1 string as input paramater
initialize empty hash `output`

set `output[:lowercase]` to the count of lowercase letters
set `output[:uppercase]` to the count of uppercase letters
set `output[:neither]` to the count of non-alphanumeric characters

return output hash


=end

def letter_case_count(string)
  output = {}
  output[:lowercase] = string.count("a-z")
  output[:uppercase] = string.count("A-Z")
  output[:neither] = string.count("^a-zA-Z")
  p output
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }