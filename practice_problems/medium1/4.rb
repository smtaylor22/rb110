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




=end



p light_toggling(5) == [1, 4]
p light_toggling(10) == [1, 4, 9]