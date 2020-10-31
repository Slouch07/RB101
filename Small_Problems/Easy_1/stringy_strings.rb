def stringy(int)
  result = []
  count = 0
  
  while count < int
    if int != 0 && int.to_s.to_i == int
      if count.even?
        result << '1'
      else
        result << '0'
      end
      count += 1
    else
      puts "Invalid input. Please enter a positive integer."
    end
  end
    result.join('')
end

# count = 0
# while count < int
#   if int != 0 && int.to_s.to_i == int
#     number = count.even? ? 1 : 0
#       result << number
#     count += 1
#   else
#     puts "Invalid input. Please enter a positive integer."
#   end
# end
#   result.join('')
# end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
 