=begin

Problem:
  

  Input: number
  Output: number

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - 

Algorithm:
loop over each multiple of 3 up to given number and add to sum
loop over each multiple of 5 up to given number and add to sum

Tests:
=end

# def multisum(num)
#   sum = 0
#   (1..num).each {|int| sum += int if (int % 3 == 0 || int % 5 == 0)}
#   sum
# end

def multisum(num)
  (3..num).reduce do |sum, n| 
    sum + (n % 3 == 0 || n % 5 == 0 ? n : 0)
  end
end


p multisum(3)

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168