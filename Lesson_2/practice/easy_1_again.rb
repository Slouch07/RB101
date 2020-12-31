# List_of_digits
# A method that takes one argument, a positive integer, and returns a list of the digits in the number.

# def digit_list(num)
#   list = num.to_s.chars
#   list.map! { |x| x.to_i }
# end

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

###################################################################################################################################

# How Many?
# A method that counts the number of occurrences of each element in a given array.

# vehicles = [
#   'car', 'car', 'truck', 'car', 'SUV', 'truck',
#   'motorcycle', 'motorcycle', 'car', 'truck'
# ]

# def count_occurrences(array)
#   occurrences = array.uniq
#   occurrences.each do |x|
#     puts "#{x} => #{array.count(x)}"
#   end
# end

# count_occurrences(vehicles)

###################################################################################################################################

# Reverse It (Part 1)
# A method that takes one argument, a string, and returns a new string with the words in reverse order.

# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

###################################################################################################################################

# Reverse It (Part 2)
# A method that takes one argument, a string containing one or more words, and returns the given string with words that contain five 
# or more characters reversed.

# def reverse_words(string)
#   words = string.split
#   words.map! do |word|
#     if word.length >= 5
#       word.reverse
#     else
#       word
#     end
#   end
#   words.join(' ')
# end

# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

###################################################################################################################################

# Stringy Strings
# A method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1.

# def stringy(int)
#   string = ""
#   for i in (1..int)
#     if i % 2 != 0
#       string << "1"
#     else 
#       string << "0"
#     end
#   end
#   string
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'
# puts stringy(15) == '101010101010101'
# puts stringy(25) == '1010101010101010101010101'

###################################################################################################################################

# Array Average
# A method that takes an argument, an array containing integers, and returns the average of all numbers in the array.

# def average(int_array)
#   int_array.sum / int_array.size
# end

# def average(int_array)
#   sum = 0
#   int_array.each { |x| sum += x }
#   sum / int_array.length
# end

# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

###################################################################################################################################

# Sum of Digits
# A a method that takes one argument, a positive integer, and returns the sum of its digits.

# def sum(int)
#   int.to_s.chars.map { |x| x.to_i }.sum
# end

# def sum(int)
#   int.digits.sum
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

###################################################################################################################################

# What's my Bonus?
# A method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean 
# is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

# def calculate_bonus(int, bonus)
#   bonus ? int / 2 : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000
