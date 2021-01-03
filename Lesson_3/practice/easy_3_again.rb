# # Searching 101
# # A program that solicits 6 numbers from the user, then prints a message that describes 
# # whether or not the 6th number appears amongst the first 5 numbers.

# def prompt(message)
#   print "==> #{message}"
# end

# numbers = []

# prompt("Enter the 1st number: ")
# first = gets.chomp.to_i
# numbers << first

# prompt("Enter the 2nd number: ")
# second = gets.chomp.to_i
# numbers << second

# prompt("Enter the 3rd number: ")
# third = gets.chomp.to_i
# numbers << third

# prompt("Enter the 4th number: ")
# fourth = gets.chomp.to_i
# numbers << fourth

# prompt("Enter the 5th number: ")
# fifth = gets.chomp.to_i
# numbers << fifth

# prompt("Enter the last number: ")
# sixth = gets.chomp.to_i

# if numbers.include?(sixth)
#   puts "The number #{sixth} appears in #{numbers}."
# else
#   puts "The number #{sixth} does not appear in #{numbers}"
# end

###################################################################################################################################

# Arithmetic Integer
# A program that prompts the user for two positive integers, and then prints the results of the following operations on those two 
# numbers: addition, subtraction, product, quotient, remainder, and power.

# def prompt(message)
#   print "==> #{message}"
# end

# def addition(n1, n2)
#   sum = n1 + n2
#   prompt("#{n1} + #{n2} = #{sum}")
# end

# def subtraction(n1, n2)
#   difference = n1 - n2
#   prompt("#{n1} - #{n2} = #{difference}")
# end

# def multiplication(n1, n2)
#   product = n1 * n2
#   prompt("#{n1} * #{n2} = #{product}")
# end

# def division(n1, n2)
#   quotient = n1 / n2
#   prompt("#{n1} / #{n2} = #{quotient}")
# end

# def remainder(n1, n2)
#   modulo = n1 % n2
#   prompt("#{n1} % #{n2} = #{modulo}")
# end

# def power(n1, n2)
#   exponential = n1 ** n2
#   prompt("#{n1} ** #{n2} = #{exponential}")
# end

# prompt("Enter the first number: ")
# first = gets.chomp.to_i
# prompt("Enter the second number: ")
# second = gets.chomp.to_i

# puts addition(first, second)
# puts subtraction(first, second)
# puts multiplication(first, second)
# puts division(first, second)
# puts remainder(first, second)
# puts power(first, second)

###################################################################################################################################

# Counting the Number of Characters
# A program that will ask a user for an input of a word or multiple words and give back the number of characters. 
# Spaces should not be counted as a character.

# print "Please write a word or multiple words: "
# string = gets.chomp
# char_count = string.split.join.size
# puts "There are #{char_count} characters in \"#{string}\"."

###################################################################################################################################

# Multiplying Two Numbers
# A method that takes two arguments, multiplies them together, and returns the result.

# def multiply(n1, n2)
#   return n1 *n2
# end

# puts multiply(5, 3) == 15

###################################################################################################################################

# Squaring an Argument
# A method that computes the square of its argument (the square is the result of multiplying a number by itself).

# def multiply(n1, n2)
#   return n1 *n2
# end

# def square(n1)
#   multiply(n1, n1)
# end

# puts square(5) == 25
# puts square(-8) == 64

###################################################################################################################################

# Exclusive Or
# A function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.

# def xor?(a, b)
#   return true if a && !b
#   return true if b && !a
#   false
# end

# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false

###################################################################################################################################

# Odd Lists
# A method that returns an Array that contains every other element of an Array that is passed in as an argument.

# def oddities(array)
#   array.select.each_with_index { |item, idx| item if idx.even? }
# end

# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []

###################################################################################################################################

# Palindromic Strings (Part 1)
# A method that returns true if the string passed as an argument is a palindrome, false otherwise.

# def palindrome?(string)
#   return true if string.reverse == string
#   false
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

###################################################################################################################################

# Palindromic Stings (Part 2)
# A method that returns true if the string passed as an argument is a palindrome, false otherwise. 
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.

# def real_palindrome?(string)
#   return true if string.reverse.downcase.gsub(/\W/, ' ').split.join == string.downcase.gsub(/\W/, ' ').split.join
#   false
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

###################################################################################################################################

# Palindromic Numbers
# A method that returns true if its integer argument is palindromic, false otherwise.

# def palindromic_number?(integer)
#   return true if integer.to_s.reverse.to_i == integer
#   false
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true