=begin

Problem:

  Input: odd Integer
  Output: Print out n * n diamond

  Rules:
    Implicit:
    Explicit:


Examples/Test Cases


Data Structure:


Algorithm:
intialize counter variable
Loop n times
  print counter * '*' output
  increment counter by two if < n
  decrement coutner by two if > n 

=end



def diamond(n)
  counter = 1
  padding = (n/2)
  puts
  n.times do |iteration|
    puts ("#{' ' * padding}#{"*" * counter}")
    counter = iteration >= (n/2) ? counter - 2 : counter + 2
    padding = iteration < (n/2) ? padding - 1 : padding + 1
  end 
end


diamond(9)

