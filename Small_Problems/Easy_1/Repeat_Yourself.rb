# Write a method that takes two arguments, a string and a positive integer, and prints 
# the string as many times as the integer indicates.

# My A:
def repeat_yourself(str, int)
  count = 0
  loop do
    break if count == int 
	  puts str
    count +=1
  end
end

# LS A:
# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end

repeat_yourself('Hello', 3)

# The LS answer is more efficient and doesn't cause an infinite loop when a negative integer
# is entered.