def reverse_it(string)
  string.split.reverse.join(' ')
end

p reverse_it('This is backwards!')
p reverse_it('') == ''
p reverse_it('Hello World') == 'World Hello'
p reverse_it('Reverse these words') == 'words these Reverse'