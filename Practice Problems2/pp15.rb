=begin
Problem:
  Given this data structure write some code to return an array which contains only the hashes where all the integers are even.
  Input: array of hashes
  Output: array of hashes

  Rules:
    Explicit requirements:
      - 
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - 

Algorithm:
loop over each hash in array
return hash if all element in value array are even


Tests:

=end








arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
  hsh.all? do |_, val|
    val.all?{|el| el.even? }
  end
end

p new_arr