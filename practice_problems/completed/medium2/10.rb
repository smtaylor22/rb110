=begin

Problem:
  Input: integer
  Output: integer

  Rules:
    Implicit:
    Explicit:


Examples/ Test Cases:
3 -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)


Data Structure:



Algorithm:
calculate square of sum of integers upto and including input
  range from 1..input sum ^ 2
calculate sum of squares of integers upt and including output
initialize sum_sqrs variable
  1 upto input
    sum_sqrs += current element ^ 2 
find difference of two numbers



=end   

def sum_square_difference(num)
  sqr_sums = (1..num).sum ** 2
  sum_sqrs = (1..num).reduce() {|sum, n| sum + n ** 2}
  sqr_sums - sum_sqrs
end



p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150