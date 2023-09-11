=begin
Problem:
 Given this data structure write some code to return an array containing the colors of the fruits, and the sizes of the vegetables. 
 The sizes should be uppercase and the colors should be capitalized.
  
  Input: hasn
  Output: array

  Rules:
    Explicit requirements:
      - sizes should be uppercase
      - colors shoud lbe cabpitalized
    Implicit requirements:
      - 

Example/Test Cases: 

Data strucure:
 - array

Algorithm:
Loop over each key value pair in hash
get the colors key and size key
map the colors key value to `String#capitalize` each string in array
call the `String#upcase` on the size key value


Tests:

=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}



new_arr = []

hsh.each_value do |val|
  new_arr.push(val[:colors].map{|str| str.capitalize }) if val[:type] == 'fruit'
  new_arr.push(val[:size].upcase) if val[:type] == 'vegetable'
end


output = [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

p new_arr
puts new_arr == output