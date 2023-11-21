=begin

Problem:

  Input: string
  Output: hash with percenteage of each type of character

  Rules:
    Implicit:
    Explicit:


  Examples/Test Cases
  abCdef 123 == 50.0
  5/10

  AbCd +Ef
  3/8

  Data Structure:

  Algorithm:
  use letter case count but modify to set the value of the hash key to count of characters divided by total characters
  convert 1 at least to float
  multiply value by 100
  round with precision of 1
=end


def letter_percentages(string)
  output = {}
  output[:lowercase] = ((string.count("a-z") / string.size.to_f)*100).round(1)
  output[:uppercase] = ((string.count("A-Z") / string.size.to_f)*100).round(1)
  output[:neither] = ((string.count("^a-zA-Z") / string.size.to_f)*100).round(1)
  output
end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }