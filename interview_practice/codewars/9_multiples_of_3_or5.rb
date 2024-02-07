=begin
Problem:
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Additionally, if the number is negative, return 0.

Note: If the number is a multiple of both 3 and 5, only count it once.

  Input: Integer
  Output: sum of all multiples of 3 or 5 below input number

  Rules:
  - multiples must be less than input number
  - Negative input returns 0
  - If multiple is a multiple of both 3 and 5 only count it once
  - inputs less than 3 return 0



Examples:
10 - 3, 6, 9, 5 == 23
20 = 3, 6, 9, 12, 18, 5, 10, 15 78

Data Structure:



Algorithm:
- Find all multiples of 3 
- Find all multiples of 5
- array of mulitples
- sum of the uniq elements 

Start with input number
if input number is less than 3 return 0

start at 3 
start at 5 
count up until counter >= input


get sum of uniq elemetns

=end


def solution(num)
  return 0 if num <= 3

  multiples = []

  current_multiple_3 = 0
  current_multiple_5 = 0

  loop do
    current_multiple_3 += 3 
    current_multiple_5 += 5 

    multiples << current_multiple_3 if current_multiple_3 < num
    multiples << current_multiple_5 if current_multiple_5 < num

    break if current_multiple_3 >= num
  end

  multiples.uniq.sum
end

p solution(6)
p solution(10)
p solution(20)