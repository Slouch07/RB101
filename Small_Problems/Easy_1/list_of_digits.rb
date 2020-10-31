def print_digits(number)
  if number.integer? && number > 0
    list = number.to_s().split('')
    list.map { |x| x.to_i }
  else
    'Please input a valid positive number.'
  end
end

puts print_digits(12345) == [1, 2, 3, 4, 5]     # => true
puts print_digits(7) == [7]                     # => true
puts print_digits(375290) == [3, 7, 5, 2, 9, 0] # => true
puts print_digits(444) == [4, 4, 4]             # => true
puts print_digits(-100)
