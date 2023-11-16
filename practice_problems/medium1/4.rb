require "pry"
require "pry-byebug"
=begin
Problem:
  Input: integer representing number of switches
  Output: array representing lights on after n repetitions

  n is number of lights/switchesm

  Rules:
    Implicit:
    Explicit:

1st initialization 
toggle all on
2nd loop
even switches toggled
3rd loop
switches indexes of multiples of 3 are toggled

Examples/Test Cases:
5 lights
5 repitions

first loop 
[1,2,3,4,5] all on

second loop
[1,3,5]
third loop
[1,5]
4th loop
[1,4,5]
5th loop
[1,4]


Data Structure:
array with light numbers from 1-n
array of n boolean values initialized to true

Algorithm:
define method `light_toggling` which takes 1 input parameter `n`
  intialize array with values from 1..`n` names `lights`
  intialize array with `n` boolean values set to `true`
  this represents fist repitition so set `n` to `n - 1`
  intialize Outer_index parameter to n (or 2)
  loop `n` times
    initialize inner_index to outer_index
    loop over boolean array increment index elements at a time
    loop until the boolean array index is null
      set current index to the opposit of current value
      inner_index += inner_index
    increment outer_index by + 1
  select with index elements from values array where boolean array value at current index is true
  return this array
=end

def light_toggling(n)
  # binding.pry
  lights = (1..n).to_a
  # Represents on off state of lights
  toggles = Array.new(n, true) # All set to true, representing 1st iteration
  n -= 1 # 1 iteration done

  outer_index = 1
  n.times do |_|
    inner_index = outer_index
    until toggles[inner_index] == nil
      toggles[inner_index] = !toggles[inner_index]
      inner_index += (outer_index + 1)
    end
    outer_index += 1
  end 
  toggles
  lights.select.with_index { |light, i| toggles[i]}
end


p light_toggling(5) == [1, 4]
p light_toggling(10) == [1, 4, 9]