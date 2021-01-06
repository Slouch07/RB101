# Convert a String to a Number! (REVIEW)
# A method that takes a String of digits, and returns the appropriate number as an integer.

# input - a string version of a number.
# output - an integer version of the input string

# separate individual charaters in the string. (array - .chars)
# iterate through each element and convert it to the integer version. (new array? map, select?)
# convert the array of integers into a single number

DIGITS = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
}

def string_to_integer(digit_string)
  array_of_chars = digit_string.chars
  digit_array = array_of_chars.map { |x| DIGITS[x] }
  multiplier = 0
  digit_array.each { |n| multiplier = (multiplier * 10) + n }
  multiplier
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570