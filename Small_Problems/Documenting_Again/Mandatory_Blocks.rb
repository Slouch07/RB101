# The Array#bsearch method is used to search ordered Arrays more quickly than #find 
# and #select can. Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

# Q: How would you search this Array to find the first element whose value exceeds 8?

# My A: 
puts a.bsearch { |n| n > 8 }
#Ruby Doc location: https://ruby-doc.org/core-2.7.2/Array.html

# LS A:
# value = a.bsearch { |element| element > 8 }
# puts value # => 11