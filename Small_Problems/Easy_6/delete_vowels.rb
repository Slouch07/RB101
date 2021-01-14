# A method that takes an array of strings, and returns an array of the same string values,
# except with the vowels (a, e, i, o, u) removed.

# input: an array
# output: an array

# Is the method to return a new array object? or mutate the original?
  # I will return a new array object in this case.

# Data structure: array

# Algorithm:
# define a method
# iterate through the elements in the array and delete any lowercase or upper case vowels.
# return the new_array without the vowels.


def remove_vowels(array)
  array.map do |string|
    string.delete("aeiouAEIOU")
  end
end



p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']