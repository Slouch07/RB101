def reverse_words(string)
  words = []
  string.split.each do |word|
    if word.size >= 5
      words << word.reverse
    else
      words << word
    end
  end
    words.join(' ')
end

 p reverse_words('Professional')          # => lanoisseforP
 p reverse_words('Walk around the block') # => Walk dnuora the kcolb
 p reverse_words('Launch School')         # => hcnuaL loohcS

