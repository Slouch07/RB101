# A method that takes a string of words and returns a string in which the first 
# and last letters of every word are swapped.

def swap(string)
  words = string.split
  words.each { |word| word[0], word[-1] = word[-1], word[0] }.join(' ')
end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a') #== 'a'