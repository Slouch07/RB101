# Problem 1:
# Given the array below. Turn this array into a hash where the names are the keys
# and the values are the positions in the array.
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# # My A:
# new_flintstones = {}

# flintstones.each_with_index do |key, index|
#   new_flintstones[key] = index
# end

# p new_flintstones
# p flintstones


# Problem 2:
# Add up all of the ages from the Munster family hash:
# ages = { 
#   "Herman" => 32, 
#   "Lily" => 30, 
#   "Grandpa" => 5843, 
#   "Eddie" => 10, "Marilyn" => 22, 
#   "Spot" => 237 
# }

# My A:
# total_age = []
# ages.each do |key, value|
#   total_age << value
# end

# p total_age.sum

# # LS A:
# total_ages = 0
# ages.each { |_,age| total_ages += age }
# total_ages # => 6174

# ages.values.inject(:+) # => 6174


# Problem 3:
# In the age hash remove people with age 100 and greater.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# # My A:
# p ages.reject { |name, age| age >= 100 }

# # LS A:
# p ages.keep_if { |_, age| age < 100 }


# Problem 4: 
# Pick out the minimum age from our current Munster family hash:
# ages = { 
#   "Herman" => 32, 
#   "Lily" => 30, 
#   "Grandpa" => 5843, 
#   "Eddie" => 10, 
#   "Marilyn" => 22, 
#   "Spot" => 237 
# }

# My A:
# p ages.values.min
# p ages.min


# Problem 5:
# In the array find the index of the first name that starts with "Be"
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# # A:
# p flintstones.index { |name| name[0, 2] == "Be" }


# Problem 6:
# Amend this array so that the names are all shortened to just the first three characters:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# # My A:
# flintstones.map! { |name| name[0, 3] }
# p flintstones

# Problem 7:
# Create a hash that expresses the frequency with which each letter occurs in this string:
# statement = "The Flintstones Rock"

# #  A:
# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a
# letters.each do |letter|
#   letter_frequency = statement.scan(letter).count
#   result[letter] = letter_frequency if letter_frequency > 0
# end

# p result


# Problem 8: (review)
# What happens when we modify an array while we are iterating over it? 
# What would be output by this code?
# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# # A:
# The array would change with each iteration. 


# Problem 9:
# Write your own version of the rails 'titleize', which captilalizes the first letter of each string.
# words = "the flintstones rock"

# # My A: 
# def titleize(string)
#   words = string.split
#   words.map! { |word| word.capitalize }
#   words.join(' ')
# end

# p titleize(words)

# LS A:
# words.split.map { |word| word.capitalize }.join(' ')


# Problem 10:
# Modify the hash so that each member has an new key - "age_group" which contains either "kid, adult, or senior".
# kid 0 <=> 17, adult 18 <=> 64, senior > 65
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# # A:
# kid = (0..17)
# adult = (18..64)
# senior = (65..10000)

# munsters.each do |key, value|
#   case value["age"]
#   when kid
#     value["age_group"] = "kid"
#   when adult
#     value["age_group"] = "adult"
#   else
#     value["age_group"] = "senior"
#   end  
# end

# munsters.each do |key, value|
#   if kid.include?(value["age"])
#     value["age_group"] = "kid"
#   elsif adult.include?(value["age"])
#     value["age_group"] = "adult"
#   else
#     value["age_group"] = "senior"
#   end  
# end

# puts munsters











