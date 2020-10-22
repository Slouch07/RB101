# Q: What do each of these puts statements output?
a = %w(a b c d e)
#puts a.fetch(7)
#puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }

# My A:
# 1. Error - index doesn't exist.
# 2. 'beats me'
# 3. 49

#Ruby Doc location: https://ruby-doc.org/core-2.7.2/Array.html#method-i-fetch

# LS A:
# puts a.fetch(7)
# IndexError: index 7 outside of array bounds: -5...5

# puts a.fetch(7, 'beats me')
# beats me

# puts a.fetch(7) { |index| index**2 }
# 49
