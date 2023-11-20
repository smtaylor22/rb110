=begin

Problem:

  Input: String with parenthesis
  Output: boolean true or false if all parenthesis are balanced

  Rules:
    Implicit:
    Explicit:

Examples/ Test Cases:


Data Structure:


Algorithm:
initialze `left_count` variable
initialize `right_count` variable
get only parenthesis from string and loop over array of parenthesis characters
    if '(' increment `left_count` by 1
    if ')' increment `right_count` by 1
    return false if `right_count` is greater than `left_count`
return true if never returned false
  anytime the right is greater than left unbalanced
  if we get to end of string and right does not equal left unbalanced
=end 

def balanced?(string)
  left_count = 0
  right_count = 0

  string.gsub(/[^()]/,'').each_char do |chr|
    left_count += 1 if chr == '('
    right_count += 1 if chr == ')'
    return false if right_count > left_count
  end
  left_count == right_count
end



p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false