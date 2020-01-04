require "pry"

def welcome
 puts 'Welcome to the Blackjack Table'
end

def deal_card
  return rand(1...12)
end

def display_card_total(card_total)
 puts "Your cards add up to #{card_total}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
sum 
end

def hit?(card_total)
prompt_user
user_input = get_user_input

if user_input != 'h' && user_input != 's'
  invalid_command
  prompt_user
  user_input = get_user_input
end 

if user_input == 'h'
 card_total += deal_card
end 

card_total
end

def invalid_command
 puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
initial_round
hit?(initial_round)
prompt_user
# binding.pry
get_user_input
user_input = get_user_input
new_total = display_card_total(card_total)

if user_input == 's'
 prompt_user
elsif user_input == 'h'
 new_total
end 

end
    
