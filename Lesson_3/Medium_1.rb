# Q1: 
# Write a one-line program that creates the following output 10 times, 
# with the subsequent line indented 1 space to the right:
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

# LS A:
# 10.times { |sentence| puts (' ' * sentence) + 'The Flintstones Rock!' }


# Q2: 
# The result of the following statement will be an error:
# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# My A: 
# This is because a string and integer cannot be summed using the concatenate operator.
# puts "the value of 40 + 2 is " + "#{40 + 2}"
# puts "the value of 40 + 2 is " + (40 + 2).to_s

# Q3: 
# Alan wrote the following method, which was intended to show all of the factors 
# of the input number:

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

# puts factors(15)

# How can you make this work without using begin/end/until?

# My A:
# def factors(number)
#   divisor = number
#   factors = []
#   loop do
#     if number <= 0
#       puts "Please enter a valid positive integer."
#       break
#     else 
#       factors << number / divisor if number % divisor == 0
#       divisor -= 1
#       break if divisor == 0
#     end
#   end
#   factors
# end

# p factors(0)

# Bonus 1: The purpose is to find the numbers that divide into the number evenly.
# Bonus 2: The purpose is to return the stored values in the factors array.

# LS A:
# while divisor > 0 do
#   factors << number / divisor if number % divisor == 0
#   divisor -= 1
# end


# Q4:
# Is there a difference between the two, other than what operator she 
#     chose to use to add an element to the buffer?

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# p rolling_buffer1([1, 2, 3, 4, 5], 5, 7)
# p rolling_buffer2([1, 2, 3, 4, 5], 5, 7)

# A:
# The input argument called buffer will be modified and will end up being changed
# after rolling_buffer1 returns. That is, the caller will have the input array that 
# they pass in be different once the call returns. In the other implementation, 
# rolling_buffer2 will not alter the caller's input argument.


# Q5: 
# What's wrong with the code?
# limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# My A:
# The limit variable is out of the method's scope and needs to be inititated internally.

# def fib(first_num, second_num)
#   limit = 15
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# LS A:
# def fib(first_num, second_num, limit)
#     while first_num + second_num < limit
#       sum = first_num + second_num
#       first_num = second_num
#       second_num = sum
#     end
#     sum
#   end
  
#   result = fib(0, 1, 15)
#   puts "result is #{result}"


# Q6: 
# What is the output of the following code?
# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# My A: 42
# LS A: 34

# The reason being, the variable answer is never changed. It is just passed as
# an argument to the method which then returns 50 but answer is still 42, so 42 minus 8
# is 34.

# Q7:
# Does the method mess up the family's age and gender? 
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# puts mess_with_demographics(munsters)

# My A:
# Yes, all ages will increase by 42 and gender will be changed to 'other'.
# This happens because the method grabs the value of each key which is another 
# hash. The method then grabs the value of the 'age' and 'gender' keys and updates them.

# LS A:
# Yes, since Ruby passes the object_id of each argument to the method and not the value,
# and since the method did not re-assign demo_hash to a new object_id(variable) the method
# is using the original munsters hash and thus changing it.


# Q8:
# Suppose we define a method called rps as follows, which follows the classic rules of 
# rock-paper-scissors game, but with a slight twist that it declares whatever hand was 
# used in the tie as the result of that tie.
# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# A: Paper


# Q9: 
# Consider these two simple methods:
# What would be the return value of the following method invocation?
# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# p bar(foo)

# A:
# bar(foo) => 'no'
# Since foo returns 'yes', 'yes' is passed on to bar which will return 'no' since the
# expression param == 'no' is false.











