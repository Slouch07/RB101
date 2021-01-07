
def cleanup(string)
  string.gsub(/[^a-zA-Z0-9]/, " ").squeeze(" ")
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---what's my +*& line? hello?") == ' what s my line hello '