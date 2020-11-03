# Q1: In this hash of people and their age, see if "Spot" is present.
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# # My A:
# p ages.key?("Spot")

# # Bonus: What are two other hash methods that would work just as well for this solution?
# p ages.include?("Spot")
# p ages.member?("Spot")


# Q2: Starting with this string:
# munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways (code will be executed on original 
# munsters_description above):
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# My A:
# p munsters_description.swapcase!
# p munsters_description.capitalize!
# p munsters_description.downcase!
# p munsters_description.upcase!


# Q3: We have most of the Munster family in our age hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# Add ages for Marilyn and Spot to the existing hash:
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# My A:
# ages.merge!(additional_ages)
# p ages


# Q4: See if the name "Dino" appears in the string below:
# advice = "Few things in life are as important as house training your pet dinosaur."

# My A:
# p advice.include?("Dino")

# LS A:
# p advice.match?("Dino")


# Q5: Show an easier way to write this array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# My A:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


# Q6: How can we add the family pet "Dino" to our usual array:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# My A:
# flintstones << 'Dino'
# p flintstones


# Q7: In the previous practice problem we added Dino to our array like this:
#  flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# How can we add multiple items to our array? (Dino and Hoppy)

# My A:
# flintstones.append('Dino', 'Hoppy')
# p flintstones

# LS A:
# flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item

# Q8: Shorten this sentence, ...remove everything starting from "house".
# advice = "Few things in life are as important as house training your pet dinosaur."

# My A:
# p advice.slice!(0, 39)
# p advice

# Ls A:
# p advice.slice!(0, advice.index('house'))
# p advice


# Q9: Write a one-liner to count the number of lower-case 't' characters in the 
#     following string:
# statement = "The Flintstones Rock!"

# My A:
# puts statement.count('t')

# Q10: If we had a 40 character wide table of Flintstone family members, 
    #  how could we easily center that title above the table with spaces?
# title = "Flintstone Family Members"

# My A:
# title.center(40)

















