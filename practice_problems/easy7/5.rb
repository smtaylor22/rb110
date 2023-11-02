=begin


Problem:

  Input: String
  Output: String with every other letter capitalized. ignoring but accounting
  for numbers and symbols

  Rules:
    Explicit:
    Implicit:

Examples/Test Cases:

Data Structure:
I Love Launch School! == 'I LoVe lAuNcH ScHoOl!'
ALL_CAPS == 'AlL_CaPs'
ignore 77 the 444 numbers == 'IgNoRe 77 ThE 444 NuMbErS'
Algorithm:
initialize `action` local variable and set to boolean value `false`
initialize `working_array` to store new string to save result of `map`
Use `Array#map` to loop over the array of the characters in the string
    set `action` to the opposite value
     if  a letter
      ternary operator to return upcase of the letter or downcase
    else
     return current ch to map block to `working_array`

return joined array
=end

def staggered_case(string)

  action = false
  working_array = string.chars.map do |chr|
      action = !action
      if chr =~ /[a-zA-Z]/
        result = action ? chr.upcase : chr.downcase
      else
        chr
      end
    end
    working_array.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'