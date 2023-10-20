=begin

Problem:

  Input: Array of integers 0-19
  Output: Sorted array based on alphabetic value of word in english language

  Rules
    Explicit: 
    Implicit:


Example/Test Cases:

Data Structure:


Algorithm:
create a global string array of english number strings called `ENGLISH_STRINGS`
creat a global array the `ENGLISH_STRINGS` array sorted called `ENGLISH_STRINGS_SORTED`


Define function alphabetic_number_sort with takes 1 input parameter `array`
Invoke sort function with block on `array` argument with `a` and `b` as block parameters
  get the string from ENGLISH_STRINGS using the current element `a` and `b` as the index
  use this string to find the index of that string in the sorted array using `Array#find_index` for both `a` and `b`
  use this index value for both `a` and `b` to compare each other 
return the sorted array
=end  

ENGLISH_STRINGS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

ENGLISH_STRINGS_SORTED = ENGLISH_STRINGS.sort



def alphabetic_number_sort(array)
  array.sort do |a, b|
    a_string = ENGLISH_STRINGS[a]
    b_string = ENGLISH_STRINGS[b]
    a_index = ENGLISH_STRINGS_SORTED.find_index(a_string)
    b_index = ENGLISH_STRINGS_SORTED.find_index(b_string)
    a_index <=> b_index
  end
end

# NUMBER_WORDS = %w(zero one two three four
#   five six seven eight nine
#   ten eleven twelve thirteen fourteen
#   fifteen sixteen seventeen eighteen nineteen)

# def alphabetic_number_sort(numbers)
# numbers.sort_by! { |number| NUMBER_WORDS[number] }
# end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]