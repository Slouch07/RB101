# A method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. 
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Mental Model: create a method which takes an array and reverses the index places (not reverse each element), and outputs the same array with the changes implemented.

# reverse elements in place
# return same array object
# cannot use .reverse or .reverse! methods

# input: an array
# output: the same array

# Data Structure: array

# Algorithm:
  # create method structure
  # reverse the given array's indexes
    # swap first and last index, swap second and second to last index??
  # return the mutated array

def reverse!(array)
  temp_array = []
  temp_array << array.pop until array.empty?
  array << temp_array.shift until temp_array.empty?
  array
end

# Test Cases:
list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true