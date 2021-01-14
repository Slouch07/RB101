# A method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
# that contain the first half and second half of the original Array, respectively.
# If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


# Mental Model:
  # Create a method that takes a single array as an argument and outputs a single array with two nested arrays
  # with the first half of the elements from the original array in the first new array, and the last half of the elements in
  # the second new array. If the original array has an odd number of elements, the first array shall contain the
  # extra element.

# Questions:
  # How should non-array elements be handled?
  # Is this a new array object being output?

# Inputs: a single array
# Output: a single array with two nested array elements.

# Data Structure:
  # array

# Algorithm:
  # define the method (def halvsies)
  # initialize two sub-arrays and one parent array
  # count the number of elements in the array.
    # initialize a variable to hold the size of the array
    # if the array has an even number of elements, divide the elements equally into two separate arrays.
      # nest two new arrays in a single new array
    # if the array has an odd number of elements, the first element will get the (elements / 2) + 1
      # and the second array will get the last half of elements.
  # return the new array


def halvsies(array)
  total = array.size
  if total.even?
    arr1 = array.slice(0, (total / 2))
    arr2 = array.slice((total / 2), total)
  else
    arr1 = array.slice(0, (total / 2) + 1)
    arr2 = array.slice((total / 2) + 1, total)
  end
  [arr1, arr2]
end

# Test Cases:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

