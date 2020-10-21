# Consider the following method and a call to that method:
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

# Q: Use the ruby documentation to determine what this code will print.

# My A:
# This will throw an error due to not enough arguments and the fact the 'd' has no default
# value.

# LS A:
# [4, 5, 3, 6]

# Ruby Doc location: https://ruby-doc.org/core-2.7.2/doc/syntax/calling_methods_rdoc.html 
# Postional Default Arguments.


