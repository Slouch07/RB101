# A method that will take a short line of text, and print it within a box.

# SYMBOLS = [
#   ['+', '-', '-', '+'],
#   ['|', ' ', ' ', '|'],
#   ['|', ' ', ' ', '|'],
#   ['|', ' ', ' ', '|'],
#   ['+', '-', '-', '+'],
# ]

# First attempt
# def print_in_box(text)
#   box_length = text.size
#   if box_length == 0
#     puts SYMBOLS[0].join
#     puts SYMBOLS[1].join
#     puts SYMBOLS[2].join
#     puts SYMBOLS[3].join
#     puts SYMBOLS[4].join
#   else
#     SYMBOLS[2].insert(2, text)
#     box_length.times do |x|
#       SYMBOLS[0].insert(2, "-").join
#       SYMBOLS[1].insert(2, " ").join
#       SYMBOLS[3].insert(2, " ").join
#       SYMBOLS[4].insert(2, "-").join
#     end
#     puts SYMBOLS[0].join
#     puts SYMBOLS[1].join
#     puts SYMBOLS[2].join
#     puts SYMBOLS[3].join
#     puts SYMBOLS[4].join
#   end
# end

# Refactoring
def print_in_box(text)
  banner_size = text.size
  puts "+-" + ("-" * banner_size) + "-+"
  puts "| " + (" " * banner_size) + " |"
  puts "| #{text} |"
  puts "| " + (" " * banner_size) + " |"
  puts "+-" + ("-" * banner_size) + "-+"
end

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+