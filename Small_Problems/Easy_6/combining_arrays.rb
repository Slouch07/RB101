# A method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.

# Mental Model: create a method that takes two arrays as arguments and combine those arguments into a single array.

# Questions:
  # new array object?
  # does it matter the order the two arrays are combined in?
  # this is not a single array with nested arrays?

# Explicit Rules:
  # There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays. (uniq, flatten)

# input: two arrays
# output: a single array (no duplicate values)

# Algorithm:
  # create method structure (def merge)
  # take arrays passed in as arguments and merge them
  # create a single array
  # ensure no duplicate values are present

def merge(arr1, arr2)
  arr1.union(arr2)
end

# Further Explorations
# def merge(arr1, arr2)
#   (arr1 + arr2).uniq
# end

# Test Cases 
p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]