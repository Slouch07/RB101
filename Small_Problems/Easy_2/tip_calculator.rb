#  A program that calculate the total bill when given a bill amount and a tip percentage.

print "=> How much is the bill?: "
bill_amount = gets.chomp.to_f

print "=> What percentage would you like to tip?: "
tip_percent = gets.chomp.to_f

tip_amount = (bill_amount * (tip_percent / 100)).round(2)
total_bill = (bill_amount + tip_amount).round(2)

# puts "The tip is $#{tip_amount}"
# puts "The total bill is $#{total_bill}"

# Further Exploration
# --------------------
# Modify the solution so it always prints the results with two decimal places.

puts "The tip is $#{format("%.2f", tip_amount)}"
puts "The total bill is $#{format("%.2f", total_bill)}"

