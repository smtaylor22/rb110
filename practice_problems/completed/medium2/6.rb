=begin
Problem:
  Input: 3 integers
  Output: symbol representing what kind of triangle is input

  Rules:
    Implicit:
    Explicit:

Examples/Test cases:
60, 70, 50 all < 90 acute
30, 90, 60 one == 90 right
120, 50, 10 one > 90 obtuse
0, 90, 90 invalid needs to be > 0
50, 50, 50  invalid sum > 180

Data Structures

Algorithm
define method `triangle` which takes 3 integers represetning degrees of angles in triangle,
  add each argument to array of angles
  case statment to check elements
  check if invalid
    any element in array == 0 or sum of degrees != 180
  if any element == 90 
    right
  if all elements are < 90
    acute
  else
    obtuse
  
=end   

def triangle(degree1, degree2, degree3)
  degrees = [degree1, degree2, degree3]
  
  case
  when degrees.include?(0) || degrees.sum != 180
    :invalid
  when degrees.any? { |degree| degree == 90 }
    :right
  when degrees.all? { |degree| degree < 90 }
    :acute
  else
    :obtuse
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid