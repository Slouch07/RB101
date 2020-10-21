# Use irb to run the following code:
s = 'abc'
puts s.public_methods.inspect

# Q: How would you modify this code to print just the public methods that are defined 
#    or overridden by the String class? That is, the list should exclude all members that 
#    are only defined in Object, BasicObject, and Kernel.

# My A:
# puts s.public_methods(all=false).inspect
# Ruby Doc location: https://ruby-doc.org/core-2.7.2/Object.html#method-i-public_methods

# LS A:
# puts s.public_methods(false).inspect
