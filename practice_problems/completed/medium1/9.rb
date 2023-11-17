=begin

Problem:

  Input:
  Output:

  Rules:
    Implicit:
    Explicit:

The Fibonacci series is a sequence of numbers starting with 1 and 1 
where each number is the sum of the two previous numbers: the 3rd Fibonacci 
number is 1 + 1 = 2, the 4th is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on.


1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 

Data Structure:


Alorithm:
return 1 if n is greater < 3

intialize `sum` variable to 2
loop n-2 times
  sum = (sum - 1) + (sum - 2)
return sum



=end  

def fibonacci(num)
  return 1 if num <= 2
  prev = 1
  last = 1
  sum = 0
  (num-2).times do |_|
    sum = prev + last
    prev = last
    last = sum
  end
  sum
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501