# A program that will ask a user for a word or multiple words and return the number of
# characters. (Spaces not included)

def prompt(message)
  puts "=> #{message}"
end

print "Please write a word or multiple words: "
input = gets.chomp

count = 0
input.chars.each do |char| 
  count += 1 if char != ' '
end

prompt("There are #{count} characters in \"#{input}\"")