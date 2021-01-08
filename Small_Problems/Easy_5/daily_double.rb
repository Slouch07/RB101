# A method that takes a string argument and returns a new string that contains the value of 
# the original string with all consecutive duplicate characters collapsed into a single character.

def crunch(string)
  new_string = ''
  current_char = ''
  string.chars.each do |char|
    new_string << char unless char == current_char
    current_char = char
  end 
  new_string
end

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