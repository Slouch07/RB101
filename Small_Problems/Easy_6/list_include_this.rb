# A method named include? that takes an Array and a search value as arguments. 
# This method should return true if the search value is in the array, false if it is not.

# Mental Model:
  # Create a method which takes two arguments, an array, and a value. The method will search the array
  # for the value and return true if it is found in the array and false if it is not.

# Input: an array, and a value
# Output: boolean (true or false)

# Cannot use Ruby's include? method

# Algorithm:
  # define method (include?)
  # search through given array for given value
  # return true or false depending on if the value was found or not.

def include?(array, value)
  array.any?(value)
end

# Further Exploration

# def include?(array, value)
#   array.each { |x| return true if x == value }
#   false
# end

  # Test Cases:
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false