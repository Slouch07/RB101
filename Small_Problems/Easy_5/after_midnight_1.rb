# A method that takes and integer as input and outputs the time (24hr clock) based on whether it is positive or negative.
# A negative integer would denote a time, in minutes, before midnight (00:00).
# A positive integer would denote a time, in minutes, after midnight, or midnight itself if 0 is input.

# Input: a positive or negative integer
# Output: a string in a 24hr clock format.
  # input = 0; output = "00:00"
  # input = -90; output = "22:30"
  # input = 90; output = "01:30"

# Find minutes per hour
# Find hours per day
# Find minutes per day
# Ensure the time difference lands between 0 and minutes per day
# Take the time difference and find the hours and minutes.
# Format the return value to look like "hh:mm"

def time_of_day(int)

end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"