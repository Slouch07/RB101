# A method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.
# The triangle should go from left to right

# Mental Model:
  # Create a method that take a integer as an argument and outputs a triangle whose base and height are the same size as
  # the given integer.


# How are non-integers handled?

# Input: an integer
# Output: a series of stars in a triangle patter (string)

# Algorithm:
  # define method (triangle)
  # create a loop in which will print the 'n' number of rows
    # create a loop in which will print the 'n' number of columns
      # in the first row => print 'n - 1' spaces and 1 star
      # in second row => print 'n - 2' spaces and 2 stars
      # continue the above until the 'n' value is reached
  # output triangle

def triangle(size)
  row_count = 0
  loop do
    row_count += 1
    loop do
      print (" " * (size - row_count))
      break
    end
    puts ("*" * row_count)
    break if row_count == size
  end
end


# Test Cases:
triangle(5)
#    *
#   **
#  ***
# ****
#*****

triangle(9)
#        *
#       **
#      ***
#     ****
#    *****
#   ******
#  *******
# ********
#*********