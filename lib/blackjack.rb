def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  card_sum = first_card + second_card
  display_card_total(card_sum)
  card_sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
    if input == "h"
      new_total = card_total + deal_card
    elsif input == "s"
      new_total = card_total
    else invalid_command
    end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
  
end
    
