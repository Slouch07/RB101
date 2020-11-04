name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This code will print out:
'BOB'
'BOB'

# This occurs because save_name is pointing to the same object that name is pointing to.
# When you change the object it will have an effect on both variables.