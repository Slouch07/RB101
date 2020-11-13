# A method that returns true if its integer argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.

def palindromic_number?(int)
  int.to_s.reverse == int.to_s
end


# p palindromic_number?(34543) #== true
# p palindromic_number?(123210) #== false
# p palindromic_number?(22) #== true
# p palindromic_number?(5) #== true

# Further Exploration
# --------------------
# Ruby sees these numbers as binary code and produces a number based of that instead of taking the input as is.
p palindromic_number?(005500) #== true
p palindromic_number?(0550) #== true