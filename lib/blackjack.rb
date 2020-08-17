def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card  + deal_card
  display_card_total(sum)
  sum
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 'h'
    total += deal_card
  elsif input != 's' && input != 'h'
    invalid_command
    prompt_user
    get_user_input
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  until number >= 21
    number = hit?(number)
    display_card_total(number)
  end
  end_game(number)
end
  
    
