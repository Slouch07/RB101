# A program that prints all odd numbers from a given range inclusive.
RANGE = (1..99)

def find_odd(range)
  range.to_a.each { |num| puts num if num.odd? } 
end

find_odd(RANGE)

# Further Exploration:
# --------------------

1.upto(99) { |x| puts x if x % 2 != 0 }