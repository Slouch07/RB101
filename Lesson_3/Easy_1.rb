# Q1: What would you expect the code below to print out?
# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# My A:
# I would expect to see [1, 2, 3] as the #uniq method will remove all the duplicate
# elements in an array.

# Correction: as it didn't have the (!) the #uniq method did not actually change the 
#             array. So it would print out the elements on individual lines with the #puts
#             method.
#             1
#             2
#             2
#             3


# Q2: Describe the difference between ! and ? in Ruby. And explain what would happen 
#     in the following scenarios:

# The difference is that an ! is used when denoting a method in which mutates the caller
  # which means to effectively change the original object. A ? denotes a method
  # or an operation (ternary) that determines 'truthiness' of an expression or object
  # like an integer.

# 1. What is != and where should you use it?
# A. This is the not equal to operator, and its used when comparing one object to another
#    and will return 'true' or 'false' depending on what is being compared to what.

# 2. Put ! before something, like !user_name
#    This is can be used to turn an object into it's the opposite of their
#    boolean equivalent. ie) !user_name would return false.

# 3. Put ! after something, like words.uniq!
#  This turn the #uniq method into a destructive version which will affect the original
#  object. ie) [1, 2, 3, 3].uniq! will now be [1, 2, 3]

# 4. Put ? before something
#    This can denote the ternary operator which determines the truthiness
#    of an object or expression.

# 5. Put ? after something
#    Can indicate a method is determining truthiness. ie) odd?

# 6. Put !! before something, like !!user_name
#    Used to turn an object into is boolean equivalent. ie) !!user_name returns true.


# Q3: Replace the word "important" with "urgent" in this string:
# advice = "Few things in life are as important as house training your pet dinosaur."

# # My A: 
# advice.gsub!('important', 'urgent')
# puts advice


# Q4: The Ruby Array class has several methods for removing items from the array. 
#     Two of them have very similar names. Let's see how they differ:
# numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array 
# between method calls)?

# numbers.delete_at(1) # This will delete the number 2 which is at index 1.
# numbers.delete(1) # This will delete the argument provided which is the number 1.


# Q5: Programmatically determine if 42 lies between 10 and 100.

# My A: 
# (10..100).include?(42)

# LS A:
# (10..100).cover?(42)


# Q6: Starting with the string:
# famous_words = "seven years ago..."

# Show two different ways to put the expected "Four score and " in front of it.

# My A:
# famous_words.prepend("Four score and ")
# famous_words.insert(0, "Four Score and ")
# puts famous_words

# LS A:
# "Four score and " + famous_words
# "Four score and " << famous_words


# Q7: If we build an array like this:
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# # Make this into an un-nested array.

# # My A:
# flintstones.flatten!
# p flintstones


# Q8: Given the hash below:
# flintstones = { 
#   "Fred" => 0, 
#   "Wilma" => 1, 
#   "Barney" => 2, 
#   "Betty" => 3, 
#   "BamBam" => 4, 
#   "Pebbles" => 5 
# }
# Turn this into an array containing only two elements: Barney's name and Barney's number.

# My A:
# rubble = flintstones.filter! { |k, v| k == "Barney"}.to_a
# rubble.flatten!
# p rubble

# LS A:
# flintstones.assoc("Barney")















