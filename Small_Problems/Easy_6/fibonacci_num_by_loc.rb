# A method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. 
# (The first Fibonacci number has index 1.)

# Mental Model: create a method that takes an integer as an argument, and outputs an integer which represents the index of the first
#               number in the sequence that has the amount of digits specified by the given argument.

# fibonacci sequence begins with two ones, and then from there the subsequent numbers are the sum of the previous two numbers.
# the first fibonacci number has an index of 1.
# assume that the given argument is always >= 2

# the fibonacci array should stop being populated once it hits the index with the number which matches the number of digits input.

# How should non-integers be handled?

# input: an integer
# ouput: an integer

# Data Structure: array

# Algorithm:
# create method structure (find_fibonacci_index_by_length)
# create an array of fibonacci numbers (separate method?)
# find the index of the first number in the array where the given input matches the number of digits.
  # convert each index to a string to enable counting the size of the element.
# return the index


def fibonacci_array(size)
  fib_array = [1, 1]
  count = 0
  loop do
    fib_array << fib_array[count] + fib_array[count + 1]
    count += 1
    break if count == size
  end
  fib_array
end

def find_fibonacci_index_by_length(digit_length)
  fibonacci_array
end

p find_fibonacci_index_by_length(2)

# Test Cases:
# find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
# find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
# find_fibonacci_index_by_length(10) == 45
# find_fibonacci_index_by_length(100) == 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847

