VALID_CHOICES = %w(rock paper scissors lizard spock)
ABB_CHOICES = %w(r p c l s)

def test_method
  prompt("test message")
end

def convert_letters(choice)
  case choice
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'c'
    'scissors'
  when 'l'
    'lizard'
  when 's'
    'spock'
  end
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper') ||
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

comp_win = 0
me_win = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} or type r for rock, l for lizard, c for scissors, p for paper, s for spock.")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    elsif ABB_CHOICES.include?(choice)
      choice = convert_letters(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You chose #{choice} computer chose #{computer_choice}!")

  display_results(choice, computer_choice)

  if win?(computer_choice, choice)
    comp_win += 1
  elsif win?(choice, computer_choice)
    me_win += 1
  end

  prompt("Score is computer: #{comp_win} to you: #{me_win}")

  if comp_win == 3
    prompt("Computer won #{comp_win} to #{me_win}")
  elsif me_win == 3
    prompt("You won #{me_win} to #{comp_win}")
  end

  break if comp_win == 3 || me_win == 3
end

prompt("Thank you for playing. Good bye")
