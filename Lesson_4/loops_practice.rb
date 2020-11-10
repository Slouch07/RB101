# Runaway Loop
# loop do
#   puts 'Just keep printing...'
#   break
# end

# Loopception
# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

# # Control the Loop
# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end

# Loop on Command
# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp.downcase
#   break if answer == 'yes'
#   puts "Incorrect answer please input 'yes'"
# end

# Say Hello
# say_hello = true

# while say_hello
#   5.times { puts 'Hello!'}
#   say_hello = false
# end

# Print While
# numbers = []

# while numbers.size < 6
#   numbers << rand(0..99)
# end

# puts numbers

# Count Up
# count = 1

# until count > 10
#   puts count
#   count += 1
# end

# Print Until
# numbers = [7, 9, 13, 25, 18]
# counter = 0

# until counter == numbers.size
#   puts numbers.fetch(counter)
#   counter += 1
# end

# That's Odd
# for i in 1..100
#   puts i if i.odd?
# end

# Greet Your Friends
# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for f in friends
#   puts "Hello, #{f}!"
# end

# Even or Odd?
# count = 1

# loop do
#   puts "#{count} is odd!" if count.odd?
#   puts "#{count} is even!" if count.even?
#   count += 1
#   break if count > 5
# end

# Catch the Number
# loop do
#   number = rand(100)
#   puts number
#   break if number.between?(0, 10)
# end

# Conditional Loop
# process_the_loop = [true, false].sample
# loop do
#   if process_the_loop
#     puts "The loop was processed!"
#     break
#   else
#     puts "The loop wasn't processed!"
#     break
#   end
# end

# Get the Sum
# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "Thats correct!"
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

# Insert Numbers
# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.size == 5
# end
# puts numbers

# Empty the Array
# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.empty?
# end

# Stop Counting
# 5.times do |index|
#   puts index
#   break if index == 2
# end

# Only Even
# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# First to Five
# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next unless number_a == 5 || number_b == 5
#   puts "5 was reached!"
#   break
# end
