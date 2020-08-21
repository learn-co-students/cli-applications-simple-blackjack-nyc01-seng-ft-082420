def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  sum = first_card + second_card
  display_card_total(sum)
  sum
end

def hit?(sum)
  prompt_user
  choice = get_user_input
  if choice == "h"
    sum += deal_card
  elsif choice == "s"
    sum
  else
    invalid_command
    prompt_user
    choice = get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  while sum <= 21 do
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
