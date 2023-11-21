require 'date'
=begin
Problem:

  Input: year
  Output: integer representing number of friday the 13ths in the year

  Rules:
    Implicit:
    Explicit: Assume year will always be greater than 1752


Examples/ Test Cases:
2015 == 3
1986 == 1
2019 == 2

Data Structure:
Date class

Algorithm:
initialize a count variable
Loop over all dates up to dec 31 of that year
increment count variable by 1 if day == 13
return count


=end  

def friday_13th(year)
  limit = Date.new(year, 12, 31)
  count = 0
  Date.new(year).step(limit) {|date| count += 1 if date.mday == 13 && date.friday? }
  count
end



p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2