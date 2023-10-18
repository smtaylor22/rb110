=begin
Problem:
  Input: String
  Output: Integer

  Rules:
    Implicit: Cant use Ruby Date and Time methods
    Explicit:

Examples/Test Cases:
00:00 -> 0
aftermidnight 12:34 -> 12 * 60 + 34 = 754
before midnight -> 12* 60 - 34 = 686
24 -> 0 

Data Structure:

Algorithm:
Split string into array by the ':' symbol
save to variable `time` which should be a two element array
Calculate the time depending on if it is before or after midnight


=end  

def after_midnight(string)
  time = string.split(':')
  time[0] = time[0].to_i % 24
  minutes(time[0].to_i) + time[1].to_i
end


def before_midnight(string)
  time = string.split(':')
  time[0] = time[0].to_i % 24
  minutes(time[0].to_i) - time[1].to_i
end

def minutes(hours)
  hours * 60
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0