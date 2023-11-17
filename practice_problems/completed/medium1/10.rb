=begin
Problem:

  Input:
  Output:

  Rules:
    Implicit:
    Explicit:

Examples/ Test Cases:

1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 

Data Structure:

Algorithm:
convert int to str 
return str index of minus 1 converting it back to an integer



=end

# def fibonacci_last(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last.to_s[-1].to_i
# end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)
p fibonacci_last(1_000_007)