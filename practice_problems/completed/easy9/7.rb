=begin
Problem:
  Input: 3 integers
  Output: String representing letter grade of average of grades

  Rules:
    Implicit:
    Explicit:


Examples/ Test Cases:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

Data Structure:
Integer

Algorithm:
define method `get_grade` that takes 3 input integer parameters `grade1` `grade2` `grade3`
  calculate the average of the 3 input arguments
  use case statement to return correct letter grade 
  when average >= 90 && average <= 100
    'A'
  etc
=end 

def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3
  case
  when average >= 90 && average <= 100
    'A'
  when average >= 80 && average < 90
    'B'
  when average >= 70 && average < 80
    'C'
  when average >= 60 && average < 70
    'D'
  else
    'F'
  end
end



p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"