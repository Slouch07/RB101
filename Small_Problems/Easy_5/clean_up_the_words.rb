# A method that returns a string with all of the non-alphabetic characters replaced by spaces.
def cleanup(string)
  string.gsub(/\W+/, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '