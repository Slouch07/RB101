# A method that takes a string with one or more space separated words and returns a hash 
# that shows the number of words of different sizes.

# convert string to an array of strings.
# iterate through the array and count the size of the string, store the total in an array.
# the each count element will act as the value for each hash key.
# iterate through the count array, and count the size occurrences, place these values in the hash as the pair value.

# def word_sizes(string)
#   words = Hash.new
#   sizes = []
#   string.split.each do |word|
#     sizes << word.length 
#   end
#   sizes.each do |size|
#     words[size] = sizes.count(size)
#   end
#   words
# end

# Refactor
def word_sizes(string)
  string.split.map { |word| word.size }.tally
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}