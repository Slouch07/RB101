# Assume you have the following code:

require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)

# Q: What will each of the 4 puts statements print?

# My A:
#   1. 
#   2. 
#   3. 
#   4.

# LS A:
#   1. -4712-01-01
#   2. 2016-01-01
#   3. 2016-05-01
#   4. 2016-05-13

# Ruby Docs Location: https://ruby-doc.org/stdlib-2.7.2/libdoc/date/rdoc/Date.html
