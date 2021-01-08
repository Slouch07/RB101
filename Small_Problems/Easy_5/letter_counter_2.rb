# A method that takes a string with one or more space separated words and returns a hash 
# that shows the number of words of different sizes but does not count non-alphanumeric characters.

# def word_sizes(string)
#   clean_words = string.split.map { |word| word.gsub(/\W+/, ' ') }
#   cleaner_words = clean_words.map { |word| word.delete(' ') }
#   cleaner_words.map { |word| word.size }.tally
# end

# Refactor
def word_sizes(string)
  string.split.map { |word| word.delete('^A-Za-z').size }.tally
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}