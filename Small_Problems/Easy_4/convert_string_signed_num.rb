# Convert a String to a Signed Number!
# A method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; 
# if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

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

def string_to_signed_integer(digit_str)
  if digit_str.include?("-")
    digit_str.delete!("-")
    string_to_integer(digit_str) * -1
  else
    digit_str.delete!("+")
    string_to_integer(digit_str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# LS A:

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end
