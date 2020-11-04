# A program that will take a user's name and greet them. If the user inputs an exclamation point
# after their name, the computer will yell at them (all caps).

def prompt(input)
  print ">>> #{input}"
end

prompt("What is your name?: ")
name = gets.chomp.capitalize

greeting = 'Hi'

if name.include?('!')
  prompt("#{greeting.upcase} #{name.upcase.chop}! WHY ARE WE YELLING?\n")
else
  prompt("#{greeting} #{name}.\n")
end

