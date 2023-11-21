=begin
Problem:

  Input: array
  Output: sorted array using bubble sort

  Rules:
    Implicit:
    Explicit: must use same array as given


Examples/ Test Cases:

Data Structure:


Algorithm:
define method `bubble_sort`
initialize local variable `length` for length of array input
initialize local variable `swapped` to false

loop until there has been no swap in a pass
  loop over range of input array from index 0 to `length` - 1 of the array
    if array[i] is > array[i+1]
      swap a[i] with a[i+1]
      swapped = true
    length = length - 1
return array  




Wikipedia
procedure bubbleSort(A : list of sortable items)
    n := length(A)
    repeat
        swapped := false
        for i := 1 to n - 1 inclusive do
            if A[i - 1] > A[i] then
                swap(A[i - 1], A[i])
                swapped := true
            end if
        end for
        n := n - 1
    until not swapped
end procedure

=end


def bubble_sort!(array)
  n = array.size - 1
  swapped = true

  while swapped
    swapped = false
    for i in 1..n do 
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        swapped = true
      end
    end
    n -= 1
  end
end





array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)