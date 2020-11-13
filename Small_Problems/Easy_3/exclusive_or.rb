# A method that takes two arguments and returns true if only one of it's arguments is truthy.
# Otherwise it will return false. (returns a boolean result (true/false))

def xor?(arg1, arg2)
  if arg1 && arg2
    false
  elsif !arg1  && !arg2
    false
  else 
    true
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false