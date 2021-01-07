# A method that returns a string with all of the non-alphabetic characters replaced by spaces.

def cleanup(string)
  string.gsub(/\W+/, ' ')
end

# def cleanup(string)
#   string.gsub(/[^a-zA-Z]/, ' ').squeeze(' ')
# end

# def cleanup(string)
#   string.gsub(/\W/, ' ').squeeze(' ')
# end

# Further Exploration

# def cleanup(string)
#   alphabet = Array("a".."z")
#   string.chars.map { |char| alphabet.include?(char) ? char : ' '}.join.squeeze(' ')
# end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line? hello?") == ' what s my line hello '
