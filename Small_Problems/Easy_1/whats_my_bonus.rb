# Method to determine user's bonus.
#
# Method takes two arguments(positive int, boolean).
# Returns half the salary if true, and zero if false.

def calculate_bonus(salary, bonus)
  bonus_amount = 0
  if bonus == true
    bonus_amount = salary / 2
  else
    bonus_amount
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# # LS A:
# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end