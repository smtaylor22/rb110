=begin
Problem:
  Input: float representing degrees
  Output: Output string representing degrees, minutes, and seconds
  Rules:
    Implicit: Use %() to not require escaping " character in string
    Explicit: Use 2 digit leading 0 string formatter for minutes and seconds
      ('%.2d', 1) -> 01


EXamples/Test Cases:
121.135
121 degrees -> whole number portion of degrees remains the same
.315 * 60 = 8.1 Multiply Decimal portion by 60
8 minutes -> the whole number becomes the minute
.1 * 60 = 6 Multiply the remaing decimal by 60
6 seconds -> can be a decimal if needed 
  Round the seconds 

Data Structure:

Algorithm:
initialize constant for Degree symbol
define method `dms` that takes one floating point number as input `float`
initialize `result` local variable for array returned by invoking `divmod` by 1 method on argument `float`
initialize local variale `degree` to `result[0]` and convert to integer
initialize local variable `mins_secs` to `result[1]` * 60
initialize local variable `minutes` to `mins_secs[0]` and convert to integer
initialize local variable `seconds` to `mins_secs[1].round` to nearest whole number and convert to integer
output integers as strings using `sprintf()`

=end

DEGREE = "\xC2\xB0"

# def dms(float)
#   degrees_mins = float.divmod(1)
#   degrees = degrees_mins[0].to_i

#   mins_secs = degrees_mins[1] * 60
#   mins_secs = mins_secs.divmod(1)
#   minutes = mins_secs[0].to_i

#   seconds = mins_secs[1] * 60
#   seconds = seconds.round.to_i
#   if seconds == 60
#     minutes += 1
#     seconds = 0
#   end

#   degrees_output = degrees.to_s
#   minutes_string = sprintf('%.2d', minutes)
#   seconds_string = sprintf('%.2d', seconds)
  
#   p %(#{degrees_output}#{DEGREE}#{minutes_string}'#{seconds_string}")
  
# end


DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  degrees_float = degrees_float % 360
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
  

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")