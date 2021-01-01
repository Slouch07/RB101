# How old is Teddy?
# A program that randomly generates and prints Teddy's age between 20 and 200.

# def get_age()
#   age = rand(20..200)
#   puts "Teddy is #{age} years old!"
# end

# get_age()

# Further Exploration
# The program will ask for a name, and then print the age for that person. 
# If no name is input, use "Teddy" as the name.
# def get_age(name = "Teddy")
#   age = rand(20..200)
#   puts "#{name} is #{age} years old!"
# end

# print "What is your name?: "
# answer = gets.chomp.capitalize

# get_age(answer)
# get_age()

###################################################################################################################################

# How big is the room?
# A program that asks a user for the length and width of a room in meters and then displays
# the area of the room in both square meters and square feet.

# def display_area(length, width)
#   sq_metres = (length * width)
#   sq_feet = (sq_metres * 10.7639)
#   puts("The area of the room is #{'%.2f' % sq_metres} square metres which is #{'%.2f' % sq_feet} square feet.")
# end

# print "What is the length of the room in metres?: "
# len = Kernel.gets().chomp().to_f

# print "What is the width of the room in metres?: "
# wid = Kernel.gets().chomp().to_f

# display_area(len, wid)

# Further Exploration:
# Modify this program to ask for the input measurements in feet, and display the results in square feet,
# square inches, and square centimeters.

# def display_area(length, width)
#   sq_feet = (length * width)
#   sq_inches = (sq_feet * 144)
#   sq_cm = (sq_feet * 929.0304)
#   puts("The area of the room is #{'%.2f' % sq_feet} square feet; #{'%.2f' % sq_inches} square inches; #{'%.2f' % sq_cm} square centimetres.")
# end

# print "What is the length of the room in feet?: "
# len = Kernel.gets().chomp().to_f

# print "What is the width of the room in feet?: "
# wid = Kernel.gets().chomp().to_f

# display_area(len, wid)

###################################################################################################################################

# Tip Calculator
# The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the 
# tip and the total amount of the bill.

# def calculate_total_bill(bill, tip_percent)
#   tip_amt = (tip_percent / 100) * bill
#   total_bill = tip_amt + bill
#   puts "The tip amount is: $#{'%.2f' % tip_amt}"
#   puts "The total bill is: $#{'%.2f' % total_bill}"
# end

# print "What is the amount of the bill?: $"
# bill_amt = gets.chomp.to_f

# print "What is the tip percentage you want to give?: "
# tip_rate = gets.chomp.to_f

# calculate_total_bill(bill_amt, tip_rate)

###################################################################################################################################

# # When will I Retire?
# # A program that displays when the user will retire and how many years she has to work until retirement.

# print "What is the current year?: "
# current_year = gets.chomp.to_i

# print "What is your current age?: "
# current_age = gets.chomp.to_i

# print "What age would you like to retire?: "
# retire_age = gets.chomp.to_i

# years_till_retire = retire_age - current_age
# retire_year = years_till_retire + current_year

# puts "It's #{current_year}. You will retire in #{retire_year}."
# puts "You have only #{years_till_retire} years of work to go!"

###################################################################################################################################

# Greeting a user
# A program that will ask for user's name. The program will then greet the user. 
# If the user writes "name!" then the computer yells back to the user.

# def greeting(name)
#   if name.end_with?('!')
#     name.delete!('!')
#     puts ("Hello #{name}. why are we screaming?").upcase!
#   else
#     puts ("Hello #{name}.")
#   end
# end

# print "What is your name?: "
# name = gets.chomp.capitalize

# greeting(name)

###################################################################################################################################

# Odd Numbers
# A program that will print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# numbers = (1..99)
# numbers.each { |n| puts n if n % 2 != 0 }

# number = 0
# until number == 99
#   number += 1
#   if number.odd?
#     puts number
#   end
# end

###################################################################################################################################

# Even Numbers
# A program that will print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# (1..99).each { |n| puts n if n.even? }

###################################################################################################################################

# Sum or Product of Consecutive Integers
# A program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product 
# of all numbers between 1 and the entered integer.

# def get_sum(int)
#   total_sum = (1..int).sum
#   puts "The sum of integers between 1 and #{int} is: #{total_sum}"
# end

# def get_product(int)
#  list_of_ints = (1..int).select { |n| n}
#  product_total = 1
#  list_of_ints.each { |n| product_total *= n}
#  puts "The product of integers between 1 and #{int} is: #{product_total}"
# end

# loop do
#   print "Please enter an integer greater than 0: "
#   int = gets.chomp.to_i

#   if int.to_s.to_i == int && int > 0
#     loop do
#       print "Enter 's' to compute the sum, 'p' to compute the product: "
#       answer = gets.chomp.downcase
#       if answer == 's'
#         get_sum(int)
#         break
#       elsif answer == 'p'
#         get_product(int)
#         break
#       else
#         puts "Please enter a valid choice: 's' or 'p'"
#       end
#     end
#   else
#     puts "Please enter a positive integer greater than 0."
#   end

#   puts "Would you like to compute another integer?: 'y' or 'n'"
#   choice = gets.chomp.downcase
#   break unless choice.start_with?('y')
# end

# puts "Goodbye"



