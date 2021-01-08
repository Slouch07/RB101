# A method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers 
# sorted based on the English words for each number:

def alphabetic_number_sort(array)
  alphabetized = {
    0 => 'zero', 1 => 'one', 2 => 'two',
    3 => 'three', 4 => 'four', 5 =>  'five',
    6 => 'six', 7 => 'seven', 8 => 'eight',
    9 => 'nine', 10 => 'ten', 11 => 'eleven',
    12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
    15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
    18 => 'eighteen', 19 => 'nineteen'
  }

  array.sort_by { |num| alphabetized[num] }

end

# NUMBERS = {
#   0 => "zero", 1 => "one", 2 => "two", 3 => "three",
#   4 => "four", 5 => "five", 6 => "six", 7 => "seven",
#   8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
#   12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
#   16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
# }

# def alphabetic_number_sort(range)
#   alpha_values = range.map { |num| NUMBERS[num] }.sort
#   alpha_values.map { |values| NUMBERS.key(values) }
# end


p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]