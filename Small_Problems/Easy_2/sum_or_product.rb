# A program which asks a user for an integer greater than zero and then asks the user
# if they would like the sum or product of all the numbers between 1 and the given number.

def prompt(message)
  print (">>#{message}\n")
end

def sum_of_range(integer)
  range = (1..integer).sum
end

def product_of_range(integer)
  range = (1..integer).inject(:*)
end

input = ''
loop do
  prompt("Please enter an integer greater than 0: ")
  input = gets.chomp.to_i
  break unless input <= 0
end

selection = ''
loop do
  prompt("Enter 's' to compute the sum, 'p' to compute the product: ")
  selection = gets.chomp.downcase
  break if selection == 's' || selection == 'p'
end

case selection
when 's'
  prompt("The sum of the integers between 1 and #{input} is #{sum_of_range(input)}.")
when 'p'
  prompt("The product of the integers between 1 and #{input} is #{product_of_range(input)}.")
end



