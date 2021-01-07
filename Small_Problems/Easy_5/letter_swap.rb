# A method that takes a string of words and returns a string in which the first 
# and last letters of every word are swapped.

# a, b = b, a - Ruby will create a temporary array for [b, a] and then a = temp[0], b = temp[1]

# def swap(string)
#   words = string.split
#   words.each { |word| word[0], word[-1] = word[-1], word[0] }.join(' ')
# end

# def swap(string)
#   str_arr = string.split.map do |element|
#               first = element[0]
#               last = element[-1]
#               element[0] = last
#               element[-1] = first
#               element
#             end
#   str_arr.join(' ')
# end

# p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') #== 'ebcdA'
# p swap('a') #== 'a'

# Further Exploration
# If the letters are passed to the swap_first_last_character method I don't think you can pass the letters back together.
# it has to be the word returned.

# def swap_first_last_characters(first, last)
#   first, last = last, first
#   word
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word[0], word[-1])
#   end
#   result.join(' ')
# end

# p swap('Oh what a wonderful day it is')