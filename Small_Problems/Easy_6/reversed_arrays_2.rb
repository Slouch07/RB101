# A method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

# Mental Model: create a method that takes an array's elements and creates a new array with with those elements but in reverse order of index.

# input: an array
# output: a new array object

# cannot use method from previous exercise.
# cannot use .reverse or .reverse!

# create method structure
# create new array object
  # iterate through original array starting from last index until the zero index
  # append each element from the original array to the new array
# return the new array object.

def reverse(array)
  new_array = []
  index = array.size
  loop do
    break if index == 0
    new_array.push(array[index - 1])
    index -= 1
  end
  new_array
end


# Test Cases
p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b e d c)) #== %w(c d e b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([]) #== []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true