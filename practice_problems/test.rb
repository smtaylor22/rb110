array = [1, 2, 3, 4, 5]

x = array.select do |num|
puts num if num.odd?
end

p x


=begin

This code will ouput 3 integers `1`, `3`, `5`.
It will return an empty string


In this case  the `do..end` block on lines 3-5 passed as on argument to the 
`Array#select` method has a return value of `nil` every time. This happens on 
line 4 where the `puts` method is passed the block parameter `num` as an argument if 
the expression evaluates as true that `num` is an odd number. For each iteration
line 4 returns nill. When the block parameter is an even number the expresion 
evaluates as a falsey value and the `num` is not output. The return value of the block
is a falsey value.
If the block parameter `num` is an odd number and the expression evaluates 
to true the the `num` block paremeter gets output by the `puts` method
but return value of the block will still be `nil` because the `puts` method always
returns `nil`.

Therefore each iteration of the `Array#select` method does 
not select an element from the `array` array it was invoked on and returns 
an empty array.

This illustrates the concept of selection on collections in ruby.
In this case the `Array#select` is a selection method. This method returns
a new array that only contains elements from each iteration where the block 
return value evalutates to true. The return value of a block is always the 
return value of the last expression in the block.


=end
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.select { |n| n.odd? }


=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

This code outputs nothing. It returns a new array of all the odd numbers in the `arr`
array

On line 42 the `Array#select` method is invoked on the local variable `arr` array
The method is passed a block with a block parameter `n`. The method checks whether 
the current element in the iteration of the `arr` array has an odd or even value.
If the block returns a truthy value that element is added to the new array.
When the `Array#select` method is finished it returns the newly created array.

This illustrates the concept of selection on collections in ruby.
In this case the `Array#select` is a selection method. This method returns
a new array that only contains elements from each iteration where the block 
return value evalutates to true. The return value of a block is always the 
return value of the last expression in the block. The final return value of the select 
method is the newly created array with selected elemetns or an empty array if none
were selected. 


=end

=begin

What does the following code return? What does it output? Why? What concept does it demonstrate?

This code outputs the newly created array that is the same as the first array
It returns the newly created array same as above

On line 80 the `Array#select` method is invoked on the `arr` local variable from line 79
The block on line 82-84 is passed as an argument to the `select` method 
On each iteration the `select` method will consider the return value of the block
In this case the block return value will always return an integer. Because 
this value is not `false` or `nil` it is considered a truthy value.
So when the `select` method returns the newly created array it will contain all 
the same elemetns as the array `arr`.


This illustrates the concept of selection on collections in ruby.
In this case the `Array#select` is a selection method. This method returns
a new array that only contains elements from each iteration where the block 
return value evalutates to true. The return value of a block is always the 
return value of the last expression in the block. With selection in ruby,
each iteration considers the return value of the block and takes that into 
account for which elemetns get selected.
 The final return value of the select 
method is the newly created array with selected elemetns or an empty array if none
were selected. 



=end  
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_array = arr.select do |n|
   n + 1
end

p new_array




=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

This code will output the newly created array `new_array` which will contain a 
boolean values

It will return the same array as above. 

On line 125 the local variable `words` is initialized to an array of strings 
On line 129-131 the `Array#map` method is invoked on the `words` array of strings
The `map` method is passed a block with a block parameter `word` as an argument on lines 130-132
On line 132 the block return value is the boolean value of invoking
the `String#start_with` method on the block parameter `word` checking whether 
it starts with the string `'t'`. 

The `map` function on line 135 returns the newly created array which is assigned to 
the new local variable `new_array`

This illustrates the concept of trasnformation on collections in Ruby. In Ruby the `map` 
method takes an collection as input and transforms the originol collection to a 
new collection with the exact same number of elements as the collection it is invoked on. 
When the map method is invoked on a collection it considers the return value of the block 
for each iteration adding this value to the new collection. When `map` has finished iterating
over all the elemtns of the colelction it was invoked on it returns the new collection.




=end


words = %w(jump trip laugh run talk)

new_array = words.map do |word|
  word.start_with?("t")
end

p new_array

=begin
What does the following code return? What does it output? Why? What concept does it demonstrate?

This code will output each elemetn of the local variable `arr` on line 1
it will return the originol array `arr`

on line 160 the local varaible `arr` is assigned the value of an array of integers

On line 164 the `Array#each` method is invoked on the `arr` array
It is passed a block as an argument. On each iteration of the `each` method 
the block outputs the value by passing the the block parameter `n` which is the current elemetn
in the iteration of the array `arr`, to the `puts` method.


This illustrates the concept of iteration on collections in Ruby. The `each` method
is invoked on an collection an will iterate over each elemetn in the colleciont. 
It will iterated over each elemetn in the collection and return the originol collection
it was invoked on.



=end  

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each { |n| puts n }

###


=begin

This code will output nothing 
it will return a new hash object with the keys and values swapped up

=end

{ a: "ant", b: "bear", c: "cat" }.each_with_object({}) do |(key, value), hash|
   hash[value] = key
end

