=begin
Complete the function scramble(str1, str2) that returns true if a 
portion of str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered.

Problem:
  Input: 2 strings
  Output: boolean

  Rules: Ignore dealing with case and punctuation


Examples:
scramble('rkqodlw', 'world') ==> True
scramble('cedewaraaossoqqyt', 'codewars') ==> True
scramble('katas', 'steak') ==> False
scramble('rkqodlw',           'world'     )
scramble('cedewaraaossoqqyt', 'codewars'  )
scramble('katas',             'steak'     )
'scriptjava',        'javascript')
'scriptingjava',     'javascript')


Data structure:


Algorithm:

Notes
- check if all letters from 2nd input string can be found in first input string
- Need to have the correct count of letters needed 

- Get uniq chars of both strings
   - loop over get count of every element in both strings
   - save char and count as hash

loop over keys in second string hash
  check if all key, value pairs in hash have same value as key in frist string hash
  return boolean result
=end


def scramble(s1, s2)
  s1_hash = s1.chars.uniq.each_with_object({}) do |char, hash|
    hash[char] = s1.count(char)
  end

  s2_hash = s2.chars.uniq.each_with_object({}) do |char, hash|
    hash[char] = s2.count(char)
  end

  s2_hash.all? do |key, val|
    s1_hash[key] && s1_hash[key] >= val
  end
end


p scramble('rkqodlw', 'world')
p scramble('cedewaraaossoqqyt', 'codewars')
p scramble('katas', 'steak')