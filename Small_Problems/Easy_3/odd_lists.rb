# A method that returns an Array that contains every other element of an 
# array that is passed in as an argument.

# def oddities(array)
#   list = []
#   counter = 0

#   loop do
#     break if counter >= array.size
#     list << array[counter]
#     counter += 2
#   end
#   list
# end

# Further Exploration
# --------------------
# def oddities(array)
#   list = []
#   counter = 1

#   loop do
#     break if counter >= array.size
#     list << array[counter]
#     counter += 2
#   end
#   list
# end

def oddities(array)
  array.select {|element| array.index(element).even?}
end


p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) #== [1, 3, 5]
p oddities(['abc', 'def']) #== ['abc']
p oddities([123]) #== [123]
p oddities([]) #== []

# p oddities([2, 3, 4, 5, 6]) #== [3, 5]
# p oddities([1, 2, 3, 4, 5, 6]) #== [2, 4, 6]
# p oddities(['abc', 'def']) #== ['def']
# p oddities([123]) #== []
# p oddities([]) #== []