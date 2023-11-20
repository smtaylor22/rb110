=begin

Problem:
  Input:
  Output:

  Rules:
    Implicit:
    Explicit:


Examples/ Test Cases
all equal == :equilateral
2 equal 3rd is 3, 3, 1.5

valid triangle must have sum of two smallest sides must be greater than longest side and both greater than 0
Data Structure:


Algorithm:
if all 3 input arguments equal return :equilateral
if 2 of 3 input aruments equal and greater than 0 and greater than largest 

method for determingin triangle type
  convet inputs to floats and add to array called `sides`
  sort array
  if not valid return
    :invalid
  if all elemetns equal eachother 
    return :equilateral
  if first 2 elemetns equal eachother
    return :isosceles
  else
    return :scalene

def isosceles? array
  array[0] == array[1]

define equilateral?
  all elemetns equal eachother


method to check if triangle is valid?
turn 3 inputs into array
  find the largest side and sort from smallest to greatest
  return boolean value of check if the sum of the first two elements of the array are greater than the last


=end

def triangle(side1, side2, side3)
  sides = [side1.to_f, side2.to_f, side3.to_f].sort
  p sides
  case
  when invalid?(sides) then :invalid
  when equilateral?(sides) then :equilateral
  when isosceles?(sides) then :isosceles
  else
    :scalene
  end
end

def invalid?(sides)
  sides[0] + sides[1] > sides[2] && sides.all? {|side| side > 0}
end

def equilateral?(sides)
  sides.all? {|side| side == sides[0] }
end

def isosceles?(sides)
  sides[0] == sides[1]
end

p triangle(3, 3, 3) 
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid