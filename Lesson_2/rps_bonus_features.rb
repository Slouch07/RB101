MOVES = {
  'r' => 'rock',
  'p' => 'paper',
  's' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}

WHO_WINS = {
  'rock' => ['lizard', 'scissors'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['spock', 'paper'],
  'spock' => ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def winner?(player1, player2)
  WHO_WINS[player1].include?(player2)
end

def get_result(player, computer)
  if winner?(player, computer)
    'Player wins!'
  elsif winner?(computer, player)
    'Computer wins!'
  else
    "It's a tie!"
  end
end

def get_choice(*)
  Kernel.gets().chomp().downcase()
end

loop do
  system "clear"
  prompt("Welcome to RPSLS - First to 5 is the Grand Champion!")

  player_score = 0
  computer_score = 0

  selection = <<-MSG
    Please select your move:
    'r' - rock
    'p' - paper
    's' - scissors
    'l' - lizard
    'sp' - spock
  MSG

  loop do
    choice = ''
    loop do
      prompt(selection)
      choice = get_choice(selection)

      if MOVES.key?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = MOVES.values.sample

    prompt("Player: #{MOVES[choice]}! Computer: #{computer_choice}!")

    result = get_result(MOVES[choice], computer_choice)

    if result == "Player wins!"
      player_score += 1
      prompt('Player wins!')
    elsif result == "Computer wins!"
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

  prompt("Enter 'y' to play again.")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thanks for playing. Have a nice day!')
