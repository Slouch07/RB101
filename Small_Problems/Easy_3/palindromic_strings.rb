# A method that returns true if the string passed as an argument is a palindrome, false otherwise.

# def palindrome?(string)
#   if string.reverse == string
#   else
#     false
#   end
# end

# LS A:
# def palindrome?(string)
#   string == string.reverse
# end

# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true

# Further Exploration
# --------------------
# A method that determines whether an array is palindromic. (the elements appear in the same sequence forward and backwards)
def palindrome?(array)
  array == array.reverse
end
