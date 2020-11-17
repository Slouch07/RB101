# A method that searches for all multiples of 3 or 5 that lie between 1 and some other number, 
# and then computes the sum of those multiples.

# def multisum (int)
#   range = (1..int).to_a
#   multiples = []
  
#   range.each do |multiple|
#     if multiple % 3 == 0 || multiple % 5 == 0
#       multiples << multiple 
#     end
#   end
#     multiples.sum
# end

# def multisum (int)
#   multiples = (1..int).select do |multiple|
#     multiple % 3 == 0 || multiple % 5 == 0
#   end
#     multiples.sum
# end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
p multisum(20) == 98


