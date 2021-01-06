# Q1: 
# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

# if false
#   greeting = “hello world”
# end

# greeting

# My A:
# I would expect nothing to happen, maybe an error to be thrown because the if statement does not assign
# 'hello world' to the greeting variable.

# LS A:
# greeting is nil here, and no "undefined method or local variable" exception is thrown.
# Typically, when you reference an uninitialized variable, Ruby will raise an exception, 
# stating that it’s undefined. However, when you initialize a local variable within an if block, 
# even if that if block doesn’t get executed, the local variable is initialized to nil.


# Q2:
# What is the result of the last line in the code below?

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting << ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings

# My A:
# puts greetings #..=> {a: 'hi'}
# Because informal greeting points to the same object as greeting but when it is reassigned to the value of 'a:'
# a new object is created and the greetings variable remains unchanged. (Review)

# LS A:
# The output is {:a=>"hi there"}. The reason is because informal_greeting is a reference to the original object.
# Since 'informal_greeting' was using the << method it modified the original object thereby impacting the value in 
# greeting.


# Q3:
# What will be printed by each of these code groups?

# A:
# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# My A:
# 'one'
# 'two'
# 'three'
# Because the method cannot see those variable initialized outside itself. The values passed are only references to
# the original object and when those values are reassigned in the method, new objects are created and the originals
# stay the same.

# B:
# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# My A:
# 'one'
# 'two'
# 'three'
# Because the method cannot see those variable initialized outside itself. The values passed are only references to
# the original object and when those values are reassigned in the method, new objects are created and the originals
# stay the same.

# C:
# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# My A:
# 'two'
# 'three'
# 'one'
# Because the #gsub! method within the mess_with_vars method mutates the original variable values that were being referenced.


# Q4:
# You have been tasked to help a co-worker fix the following code:
# The method is used to determine if an input string is an IP address representing dot-separated numbers.
# Ensure an input does not have more or less than 4 elements in the IP address (192.168.1.2)
# Esure the method returns a false condition if the input is not a valid IP address.

# My A:
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")

#   if dot_separated_words.size != 4
#     puts "Invalid entry."
#     return false
#   else
#     while dot_separated_words.size > 0 do
#       word = dot_separated_words.pop
#       return false unless is_an_ip_number?(word)
#     end
#   end
#   true
# end

# # LS A:
# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false unless dot_separated_words.size == 4

#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word)
#   end

#   true
# end






