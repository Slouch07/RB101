# A method that returns true if the string argument is palindromic, false otherwise.
# Method is case-insensitive and ignores all non-alphanumeric characters.
def palindrome?(string)
  new_string = string.downcase.delete('^a-z0-9')
  new_string == new_string.reverse
end

p palindrome?('madam') #== true
p palindrome?('Madam') #== true           # (case does not matter)
p palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
p palindrome?('356653') #== true
p palindrome?('356a653') #== true
p palindrome?('123ab321') #== false