=begin

Problem:

  Input: string
  Output: string with every word capitalized

  Rules:
    Implicit: none
    Explicit:

Examples/ Test Cases
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Data Structure:

Algorithm:
define method `word_cap` that takes 1 input parameter `string`
initialize new variable `words` setting the value to the return of split string into words(split on " " character)
loop over each word
  Invoke the `String#capitalize!` method on each word
return the words array after of invoking the `String#join` method on the `words` array 
  joining each word with space character

=end

def word_cap(string)
  words = string.split
  words.map! { |word| word.capitalize }
  words.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

LOWERCASE = 97..122
UPPERCASE = 65..90
DIF = 32

def word_cap_ascii(string)
  capitalized = string.split.map do |word| 
    ascii_first_chr = word.chr.ord
    word[0] = (ascii_first_chr - DIF).chr if LOWERCASE.include?(ascii_first_chr)
    word
  end
  p capitalized.join(' ')

end

p word_cap_ascii('four score and seven') == 'Four Score And Seven'
p word_cap_ascii('the javaScript language') == 'The Javascript Language'
p word_cap_ascii('this is a "quoted" word') == 'This Is A "quoted" Word'