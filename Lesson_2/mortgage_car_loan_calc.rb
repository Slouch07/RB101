# A program that will calculate a user's monthly payments on a loan.
def monthly_rate(apr)
  (apr.to_f() / 100) / 12
end

def years_to_months(years)
  years.to_i() * 12
end

def monthly_payment(loan, int, term)
  loan * (int / (1 - (1 + int)**(-term)))
end

loan_amount = ''
loop do
  puts "How much money would you like to borrow? Format: 1000 or 10000"
  loan_amount = gets().chomp().to_i()

  if loan_amount >= 0
    break
  else
    puts "Please enter a valid positive number."
  end
end

int_rate = ''
loop do
  puts "Please enter an annual interest rate? Format: 3.55 or 5"
  annual_rate = gets().chomp()
  int_rate = monthly_rate(annual_rate)

  if int_rate >= 0
    break
  else
    puts "Please enter a positive annual interest rate."
  end
end

term = ''
loop do
  puts "How many years would you like to pay the loan back?"
  years = gets().chomp()
  term = years_to_months(years)

  if term >= 0
    break
  else
    puts "Invalid number of years."
  end
end

payment = monthly_payment(loan_amount, int_rate, term).round(2)

puts "Your monthly payment will be $#{payment}"
