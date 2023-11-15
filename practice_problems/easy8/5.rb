=begin

Problem:

  Input: 2 numbers representing the starting number and ending number
  Output: print all numbers in range except print 
    fizz if divisible by 3 
    buzz if divisible by 5 
    fizzbuzz if divisible by both 3 and 5


  Rules
    Implicit:
    Explicit:
  what happens if givne ranger where start is before end

  Examples/Test Cases
  # fizzbuzz(1, 15) -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

  Data Structure:


  Algorithm:
  define method `fizzbuzz` taking `start` parameter and `end` parameter
    use ruby `Integer#upto` method to iterate from start number to last number
      pass block to method for each iteration
        if current element divisible by 3 
          puts Fizz
        if current element divisible by 5
          puts Buzz
        if current element divisible by 3 and 5
          puts FizzBuzz
        else
          puts element
    
=end

def fizzbuzz(start, stop)
  start.upto(stop) do |num|
    if num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    elsif num % 5 == 0
      puts 'Buzz'
    elsif num % 3 == 0
      puts 'Fizz'
    else
      puts num
    end
  end

end


fizzbuzz(1, 15) 