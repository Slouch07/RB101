VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'S' => 'spock'
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def winner?(player1, player2)
  (player1 == 'rock' && (player2 == 'scissors' || player2 == 'lizard')) ||
    (player1 == 'paper' && (player2 == 'rock' || player2 == 'spock')) ||
    (player1 == 'scissors' && (player2 == 'paper' || player2 == 'lizard')) ||
    (player1 == 'lizard' && (player2 == 'spock' || player2 == 'paper')) ||
    (player1 == 'spock' && (player2 == 'rock' || player2 == 'scissors'))
end

def display_results(player, computer)
  if winner?(player, computer)
    'Player wins!'
  elsif winner?(computer, player)
    'Computer wins!'
  else
    "It's a tie!"
  end
end

loop do
  prompt("Welcome to RPSLS - First to 5 is the Grand Champion!")

  player_score = 0
  computer_score = 0

  selection = <<-MSG
    Please select your weapon:
    'r' - rock
    'p' - paper
    's' - scissors
    'l' - lizard
    'S' - spock
  MSG

  loop do
    choice = ''
    loop do
      prompt(selection)
      choice = Kernel.gets().chomp()

      if VALID_CHOICES.key?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    prompt("Player chose: #{VALID_CHOICES[choice]}! Computer chose: #{computer_choice}!")

    if display_results(VALID_CHOICES[choice], computer_choice) == "Player wins!"
      player_score += 1
      prompt('Player wins!')
    elsif display_results(VALID_CHOICES[choice], computer_choice) == "Computer wins!"
      computer_score += 1
      prompt('Computer wins!')
    else
      prompt("No point awarded for a tie.")
    end

    prompt("Player score: #{player_score} | Computer score: #{computer_score}")

    if player_score == 5
      prompt('Player is Grand Champion!!')
      break
    elsif computer_score == 5
      prompt('Computer is Grand Champion!!')
      break
    end
  end

  prompt('Would you like to play again? y/n')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thanks for playing. Have a nice day!')
