def prompt(message)
  puts "==> #{message}"
end

def get_sum(first, second)
  first + second
end

def get_difference(first, second)
  first - second
end

def get_product(first, second)
  first * second
end

def get_quotient(first, second)
  first / second
end

def get_remainder(first, second)
  first % second
end

def get_power(first, second)
  first ** second
end

prompt("Enter the first number:")
first = gets.chomp.to_i

second = ''
loop do
  prompt("Enter the second number:")
  second = gets.chomp.to_i
  if second == 0
    puts "Please enter a number greater than zero."
  else
    break
  end
end

prompt("#{first} + #{second} = #{get_sum(first, second)}")
prompt("#{first} - #{second} = #{get_difference(first, second)}")
prompt("#{first} * #{second} = #{get_product(first, second)}")
prompt("#{first} / #{second} = #{get_quotient(first, second)}")
prompt("#{first} % #{second} = #{get_remainder(first, second)}")
prompt("#{first} ** #{second} = #{get_power(first, second)}")

