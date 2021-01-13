# Description
################
# A method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes and seconds.

# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes,
# and a double quote (") to represent seconds. 


# Input/Output
#################
# input: a float (representing an angle between 0 - 360 degrees)
  # eg) 0 => 0°, 30 => 30°, 70.50 => 70.5°

# output: a string (that represents the angle in degrees, minutes, and seconds.)
  # eg) 0 => 0°00'00", 30 => 30°00'00", 76.73 => 76°43'48"

# Mental Model
#################
# Create a method that takes a float representing an angle as an argument and converts it into a string
# representing that angle in the format of (deg°, min', sec').

# Questions:
  # How are non-floats to be handled?
  # 

# Explicit Requirements
#########################
# float given must be output as a degree with the degree symbol(°)
# minutes must be output with a (') symbol.
# seconds must be output with a (") symbol.
# A degree has 60 minutes, while a minute has 60 seconds.
  # 1 degree = 60 minutes
  # 1 minute = 60 seconds

# Implicit Requirements
#########################
# must convert numbers after the decimal of the given floating point into minutes and seconds.
# use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07"

# Algorithm
#############
# define method (dms)
# initialize variables to store the degree, minutes, and seconds
# convert given float to degrees, minutes and seconds and store in variables
  # extract whole number from float and place in variable.
  # convert remainder of whole degree into minutes and seconds.
# output degrees, minutes and seconds in requested format.
  # format string to produce two digit numbers with leading zeros for minutes and seconds.


# Provides the degree symbol
DEGREE = "\xC2\xB0"


def dms(angle_float)
  
end

# Test Cases
p dms(30) #== %(30°00'00")
p cleardms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")