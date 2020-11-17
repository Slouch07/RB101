# A method that determines and returns the ASCII string value of a string that is passed 
# in as an argument.

# The ASCII string value is the sum of the ASCII values of every character in the string.

def ascii_value(string)
  ascii_array = [] 
  string.split('').each { |char| ascii_array << char.ord }
  ascii_array.sum
end

# Further Exploration
# --------------------
# char.ord.chr == char
# When #ord is called on a longer it string will return the first character of the string. 
# e.g. 'for'.ord.chr => 'f'


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0