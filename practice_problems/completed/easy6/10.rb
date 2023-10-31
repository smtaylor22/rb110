=begin
This code will output `%w(Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo)``
This is because the array elements of `array1` added to `array2` reference 
the same objects in memory. This means when the destructive method 
`Array#upcase!` permantily mutates the original `array1` array elements these 
changes will show up in the `array2` elements. 

=end  


array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2