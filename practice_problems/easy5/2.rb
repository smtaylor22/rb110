=begin
Problem:
  Notes:
  Integer Input > 0 == After Midnight
  Integer Input < 0 == Before Midnight
  Midnight == "24:00"
  After midnight it rolls over to "00:00"

  Positive numbers are minutes past midnight or "24:00"
  There are 1440 minutes in a day

  Input: Positive or Negative integer representing the time of day in minutes
  Output: Formatted string in "hh:mm" of the time in 24 hr format

  Rules:
    Implicit: Work with any integer input
    Explicit: May not use `Integer#Date` `Integer#Time`

Examples/Test Cases:
0 == "00:00"
-3 == "23:57"
35 == "00:35"

Notes:
-1437 % 1400 == 3 minutes
3000 % 1400 == 120 minutes
Data Structure:

Algorithm:
Declare some global constants
define method `time_of_day` taking 1 integer parameter called `int`
intialize `minutes` variable and set value to int % 1400
  # handles minutes over 1400
Take `result` invoke `Integer#divmod` 60 which returns array of [q,r] (quotient and remainder) saved as `result`
Use sprintf to print hours concated with sprintf output of minutes 
  sprintf('%.3d', result[0]) + ':' + sprintf('%.3d', result[1])
=end  

MINUTES_IN_DAY = 1440
MINUTES_IN_HOUR = 60

def time_of_day(int)
  minutes = int % MINUTES_IN_DAY
  result = minutes.divmod(MINUTES_IN_HOUR)
  sprintf('%.2d', result[0]) + ':' + sprintf('%.2d', result[1])
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"