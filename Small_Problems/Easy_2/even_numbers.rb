# A program that prints all even numbers from a given range inclusive.
RANGE = (1..99)

def find_even(range)
  range.to_a.each { |num| puts num if num.even? } 
end

find_even(RANGE)

# Further Exploration:
# --------------------

1.upto(99) { |x| puts x if x % 2 == 0 }