
# input = string
# output = string
# remove duplicate consecutive characters in each string.
  # convert to array of characters
  # grab the first character and place it in a new string array.
  # compare the next character to the previous character to determine if they are equal
    # if equal, don't place the character in new string array
    # if not equal, place character in new string array.


# def crunch(string)
#   idx = 0
#   new_string = []
#   while idx <= string.length
#     new_string << string[idx] unless string[idx] == string[idx + 1]
#     idx += 1
#   end
#   new_string.join
# end

# Refactor
# def crunch (string)
#   new_string = ''
#   current_char = ''
#   string.each_char do |char|
#     new_string << char unless char == current_char
#     current_char = char
#   end
#   new_string
# end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''