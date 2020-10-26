require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

# Bonus features for our Calculator program.

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i().to_s() == num # <--implemented fix for better integer validation.
end

def float?(num) # <--method to check for valid float.
  num.to_f().to_s() == num
end

def number?(num) # <--method to check for valid numbers.
  valid_number?(num) || float?(num)
end

def operation_to_message(op) # Less dangerous, allows other code and still returns case value.
  choice = case op
           when '1'
            'Adding'
           when '2'
            'Subtracting'
           when '3'
            'Multiplying'
           when '4'
            'Dividing'
           end
  choice
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}")

loop do # Main Loop
  number1 = ''
  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp() # <--removed to_i to help with valid_number?

    if number?(number1)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  number2 = ''
  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp() # <--removed to_i to help with valid_number?

    if number?(number2)
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['choice'])
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['another_calc'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt(MESSAGES['goodbye'])