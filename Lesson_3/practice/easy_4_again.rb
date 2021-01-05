# Short Long Short
# A method that takes two strings as arguments, determines the longest of the two strings,
# and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.

# def short_long_short(str1, str2)
#   if str1.size < str2.size
#     str1 + str2 + str1
#   elsif str2.size < str1.size
#     str2 + str1 + str2
#   else
#     puts "They are the same size"
#   end
# end

# puts short_long_short('abc', 'defgh') == "abcdefghabc"
# puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
# puts short_long_short('', 'xyz') == "xyz"

###################################################################################################################################

# What Century is That?
# A method that takes a year as input and returns the century.

# def century(year)
#   century_start = 0
#   current_century = 0

#   while century_start < year
#     century_start += 100
#     current_century += 1
#   end

#   last_digit = current_century % 10
#   current_century = current_century.to_s
#   return current_century.concat("th") if current_century[-2] == "1"
  
#   case last_digit
#   when 1
#     current_century + "st"
#   when 2
#     current_century + "nd"
#   when 3
#     current_century + "rd"
#   else
#     current_century + "th"
#   end

# end

# puts century(2000) #== '20th'
# puts century(2001) #== '21st'
# puts century(1965) #== '20th'
# puts century(256) #== '3rd'
# puts century(5) #== '1st'
# puts century(10103) #== '102nd'
# puts century(1052) #== '11th'
# puts century(1127) #== '12th'
# puts century(11201) #== '113th'

###################################################################################################################################

# Leap Years (Part 1)
# A method that takes any year greater than 0 as input, and returns true if the year is a leap year,
# or false if it is not a leap year.

# def leap_year?(year)
#   puts "Please enter a year greater than 0" if year < 1

#   if year % 4 == 0
#     if year % 100 == 0
#       if year % 400 == 0
#         true
#       else
#         false
#       end
#     else
#       true
#     end
#   else
#     false
#   end
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == false
# puts leap_year?(1) == false
# puts leap_year?(100) == false
# puts leap_year?(400) == true

###################################################################################################################################

# Leap Years (Part 2)
# A method that takes into consideration the way a leap year was determined before and after 1752.
# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, leap years occur in any year 
# that is evenly divisible by 4.

# def leap_year?(year)
#   puts "Please enter a year greater than zero" if year < 0
#   return true if year < 1752 && year % 4 == 0
#   return true if year % 400 == 0
#   return true if year % 4 == 0 && year % 100 != 0
#   false
# end

# puts leap_year?(2016) == true
# puts leap_year?(2015) == false
# puts leap_year?(2100) == false
# puts leap_year?(2400) == true
# puts leap_year?(240000) == true
# puts leap_year?(240001) == false
# puts leap_year?(2000) == true
# puts leap_year?(1900) == false
# puts leap_year?(1752) == true
# puts leap_year?(1700) == true
# puts leap_year?(1) == false
# puts leap_year?(100) == true
# puts leap_year?(400) == true

###################################################################################################################################

# Multiples of 3 and 5
# A method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
# and then computes the sum of those multiples.

# def multisum(num)
#   multiples = (1..num).select { |x| x % 3 == 0 || x % 5 == 0 }
#   multiples.sum
# end

# puts multisum(3) == 3
# puts multisum(5) == 8
# puts multisum(10) == 33
# puts multisum(1000) == 234168

###################################################################################################################################

# Running Totals
# A method that takes an Array of numbers, and returns an Array with the same number of elements,
# and each element has the running total from the original Array.

# def running_total(num_arr)
#   arr_totals = []
#   count = 0
#   num_arr.select do |x|
#     if arr_totals.empty?
#       arr_totals << x
#     else
#       arr_totals << x + arr_totals[count]
#       count += 1
#     end
#   end
#   arr_totals
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []