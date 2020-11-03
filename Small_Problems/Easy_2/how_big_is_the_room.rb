# A program that will take the length and width of a room input by a user
#  and will output the total square metres and square feet of the room.

# def calculate_room_size
#   print "=> What is the length of the room in metres?: "
#   length = gets.chomp.to_f

#   print "=> What is the width of the room in metres?: "
#   width = gets.chomp.to_f

#   total_sq_m = length * width
#   total_sq_f = total_sq_m * 10.7639

#   puts "=> The area of the room is #{total_sq_m.round(2)} square metres (#{total_sq_f.round(2)} square feet)."
# end

# calculate_room_size

# Further Exploration:
# Modify this program to ask for the input measurements in feet, and display the results in square feet, 
# square inches, and square centimeters.

def calculate_room_size
  print "=> What is the length of the room in feet?: "
  length = gets.chomp.to_f

  print "=> What is the width of the room feet?: "
  width = gets.chomp.to_f

  total_sq_f = (length * width).round(2)
  total_sq_in = (total_sq_f * 144).round(2)
  total_sq_cm = (total_sq_f * 929.0304).round(2)

  puts "=> The area of the room is #{total_sq_f} square feet (#{total_sq_in} square inches and #{total_sq_cm} square centimetres)."
end

calculate_room_size