def welcome() 
  puts 'Welcome to the Blackjack Table'
end

def deal_card()
  rand(1..11)
end

def display_card_total(num)
puts "Your cards add up to #{num}"
end

def prompt_user()
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input()
 gets.chomp
end


def end_game(num)
 puts "Sorry, you hit #{num}. Thanks for playing!"
end


def initial_round()
  sum = deal_card()
  sum2 = deal_card()
  total = sum + sum2
  display_card_total(total)
  return total 
end

def invalid_command()
  puts "Please enter a valid command"
end


def hit?(num)
prompt_user
input = get_user_input
if input == 'h'
  num += deal_card()
elsif input == 's'
nil
else
invalid_command()
hit?(num)
end 
num
end

def runner
 welcome()
 num = initial_round()
 while num <= 21 
   num = hit?(num)
  # display_card_total()
  end
  if num > 21 
  end_game(num)
  end
  end

