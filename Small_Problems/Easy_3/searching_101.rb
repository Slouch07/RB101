# Problem:

# Write a program that solicits 6 numbers from the user, then prints a message that 
# describes whether or not the 6th number appears amongst the first 5 numbers.
numbers = []

puts "==> Enter the 1st number:"
first = gets.chomp.to_i
numbers << first

puts "==> Enter the 2nd number:"
second = gets.chomp.to_i
numbers << second

puts "==> Enter the 3rd number:"
third = gets.chomp.to_i
numbers << third

puts "==> Enter the 4th number:"
fourth = gets.chomp.to_i
numbers << fourth

puts "==> Enter the 5th number:"
fifth = gets.chomp.to_i
numbers << fifth

puts "==> Enter the last number:"
last = gets.chomp.to_i

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}."
else
  puts "The number #{last} does not appear in #{numbers}."
end



