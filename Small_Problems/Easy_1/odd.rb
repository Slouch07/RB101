def is_odd?(num)
  if num.integer?
    num % 2 != 0
  else
      puts "Please input a valid integer."
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
 