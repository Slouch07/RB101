# A method that will generate a random number between 20 - 200 which will output
# a string with the random number included as an age.

# def age_generator
#   age = (rand(20..200))
#   puts "Teddy is #{age} years old!"
# end

# Further Exploration:
# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.

def age_generator
  print "=> What is your name?: "
  name = gets.chomp
  name = 'Teddy' if name.empty?
  
  age = (rand(20..200))
  puts "#{name} is #{age} years old!"
end

age_generator