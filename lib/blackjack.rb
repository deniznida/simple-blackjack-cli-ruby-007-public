def deal_card
  # code #deal_card here
    rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  # code #initial_round here
  sum = rand(1..11) + rand(1..11)
  display_card_total(sum)
end

def end_game(card_total)
  # code #end_game here
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
  gets.strip.chomp
end

def hit? (card_total)
  # code hit? here
  prompt_user
  if get_user_input == 'h'
    card_total += deal_card
  end
    card_total
end

def invalid_command
  # code invalid_command here
  puts "invalid"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome  
  card_total = initial_round
  while card_total < 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
  end
  end_game(card_total)

end
    