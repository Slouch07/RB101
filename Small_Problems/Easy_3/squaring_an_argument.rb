# A method that computes the square of its argument 
# (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(int)
  multiply(int, int)
end

# Further Exploration
def power(int, exp)
  multiply(int, 1) ** exp
end

p square(5) == 25
p square(-8) == 64
p power(5, 2) == 25
p power(-8, 2) == 64

