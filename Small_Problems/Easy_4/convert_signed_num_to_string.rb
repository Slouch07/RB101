# Convert a Signed Number to a String!
# A method that takes an integer, and converts it to a string representation.
# Adding the ability to represent negative numbers as well.

DIGITS = {
  0 => "0",
  1 => "1",
  2 => "2",
  3 => "3",
  4 => "4",
  5 => "5",
  6 => "6",
  7 => "7",
  8 => "8",
  9 => "9",
}

def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(int)
  return '0' if int == 0
  if int < 0
    integer_to_string(int * -1).prepend("-")
  else
    integer_to_string(int).prepend("+")
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'