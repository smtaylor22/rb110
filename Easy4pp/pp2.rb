=begin

Problem:
  Write a method that takes a year as input and returns the century. 
  The return value should be a string that begins with the century number, 
  and ends with st, nd, rd, or th as appropriate for that number.

  New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

  Input: number
  Output: number converted to string with appropriate ending

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - 

Algorithm:
0-100 1st 
101-200 2nd
201-300 3rd
...
1801-1900 19th

Divide the number by 100 and always round up to the next whole number to get the current century 

if last 2 digts if in range of 1-9 
  th

if last two digits are in range of 10-20
  th
  
if length of string is one or the last two is a 0 followed by 
  if ends 1 
    st
  if ends 2
    nd
  if ends 3 
    rd
  else
    th
else



Tests:
=end

def century(year)
  century_val = year.ceildiv(100)

  ending = %w(st nd rd th)

  range1 = century_val % 10
  range2 = century_val % 100

  if range1 == 1 and range2 != 11
    century_val.to_s + ending[0]
  elsif range1 == 2 and range2 != 12
    century_val.to_s + ending[1]
  elsif range1 == 3 and range2 != 13
    century_val.to_s + ending[2]
  else
    century_val.to_s + ending[3]
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)