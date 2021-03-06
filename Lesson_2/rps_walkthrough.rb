VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def winner?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') ||
    (player1 == 'paper' && player2 == 'rock') ||
    (player1 == 'scissors' && player2 == 'paper')
end

def display_results(player, computer)
  if winner?(player, computer)
    prompt("You won!")
  elsif winner?(computer, player)
    prompt("Computer wins!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}! Computer chose: #{computer_choice}!")

  display_results(choice, computer_choice)

  prompt("Would you like to play again? y/n")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Have a nice day!")
