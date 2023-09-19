VALID_CHOICES = %w(rock paper scissors lizard spock r p sc l sp)

def test_method
  prompt("test message")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
	(first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') ||
	(first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') ||
	(first == 'scissors' && second =='lizard') ||
	(first == 'lizard' && second =='spock') ||
	(first == 'lizard' && second =='paper') ||
	(first == 'spock' && second == 'scissors') ||
	(first == 'spock' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  # Choosing rock paper scissors
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

  # computer choosing
  computer_choice = VALID_CHOICES.sample
  prompt("You chose #{choice} computer chose #{computer_choice}!")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
prompt("Thank you for playing. Good bye")