=begin
Problem:

  Input: integer
  Output: nth fibonaci number as integer


  Rules:
    Implicit:
    Explicit:

Examples/ Test Cases:
1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 

3 
1 + 1 
1 + 1 + (2)
4
1+1 + (1+1) + ()
1 + 1 + 2

Data Structure:


Algorithm:
define recursive method `fibonacci` with 1 input argument `n`
Break condition
  return 1 if n <= 2
  fib(n - 1) + fib(n - 2)


=end  

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765