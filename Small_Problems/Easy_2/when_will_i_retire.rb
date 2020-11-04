# A program that will display when the user will retire and how many years left
# until retirement.
CURRENT_YR = 2020

def prompt(message)
  print "=> #{message}"
end

prompt("What is your age?: ")
current_age = gets.chomp.to_i

prompt("What age would you like to retire?: ")
retirement_age = gets.chomp.to_i

years_left = retirement_age - current_age
retirement_year = CURRENT_YR + years_left

prompt("Currently the year is #{CURRENT_YR}. You will retire in #{retirement_year}.\n")
prompt("You have #{years_left} years of work left!\n")

