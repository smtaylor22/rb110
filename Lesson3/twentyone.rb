=begin

1. Initialize deck
2. Deal cards to player and dealer
3. Player turn: hit or stay
  - repeat until bust or "stay"
4. If player bust, dealer wins.
5. Dealer turn: hit or stay
  - repeat until total >= 17
6. If dealer bust, player wins.
7. Compare cards and declare winner.


player turn
1. ask "hit" or "stay"
2. if "stay", stop asking
3. otherwise, go to #1

dealer turn
1. ask "hit" or "stay"
2. if "stay", stop asking
3. otherwise, go to #1

=end

CARD_VALUES = {"2": 2, "3": 3, "4": 4, "5", 5, "6": 6, "7": 7, "8": 8, "9": 9, "10": 10
                "J": 10, "Q": 10, "K": 10, "A": 11}

deck = [["H", "2"], ["H", "3"], ["H", "4"], ["H", "5"], ["H", "6"], 
        ["H", "7"], ["H", "8"], ["H", "9"], ["H", "10"], ["H", "J"], ["H", "Q"], 
        ["H", "K"], ["H", "A"], ["S", "2"], ["S", "3"], ["S", "4"], ["S", "5"], 
        ["S", "6"], ["S", "7"], ["S", "8"], ["S", "9"], ["S", "10"], ["S", "J"], 
        ["S", "Q"], ["S", "K"], ["S", "A"], ["D", "2"], ["D", "3"], ["D", "4"], 
        ["D", "5"], ["D", "6"], ["D", "7"], ["D", "8"], ["D", "9"], ["D", "10"], 
        ["D", "J"], ["D", "Q"], ["D", "K"], ["D", "A"], ["C", "2"], ["C", "3"], 
        ["C", "4"], ["C", "5"], ["C", "6"], ["C", "7"], ["C", "8"], ["C", "9"], 
        ["C", "10"], ["C", "J"], ["C", "Q"], ["C", "K"], ["C", "A"]]




# Main Game Loop
loop do
  deck.shuffle!

  player_hand = []
  dealer_hand = []
  
  2.times do |x| 
    player_hand << deck.pop
    dealer_hand << deck.pop
  end

  puts "Welcome to TwentyOne the game!"
end



def calc_total(cards)
  score = 0
  cards.each do |arr|
    score += CARD_VALUES[arr[0]]
  end

  aces = hand.select{|arr| arr[1] == 'A'}
  # Adjust for when Aces value can equal 1
  aces.count.times do
    score -= 10 if score > 21
  end

  score
end

def busted?(cards)
  calc_total(cards) > 21
end

def player_turn()
  answer = nil
  loop do
    puts "hit or stay?"
    answer = gets.chomp
    break if answer == 'stay' || busted?   # the busted? method is not shown
  end

  # End game and ask if wants to play again
  if busted?
    input = ''
    puts "You Busted! Do you want to play again?"
    loop do
      puts "Enter y for yes or n for no"
      input = gets.chomp
      break if input.downcase == 'n' || input.downcase == 'y'
      puts "Invalid input."
    end

  else
    puts "You chose to stay!"  # if player didn't bust, must have stayed to get here
  end

  # ... continue on to Dealer turn
end

#Dealer turn. The dealer turn will follow a very similar pattern as the 
# player turn. Except: the dealer's break condition will occur at the 
# top of the "hit or stay" loop. See if you can figure out why that is.
def  dealer_turn()
  answer = nil
  loop do
    break if busted?
    if calc_total(cards) => 17  # If minimum score value reached can decide to hit or stay
      puts "hit or stay"
      answer = gets.chomp
      break if answer == 'stay'
    puts "You must hit!"
  end
  
  if busted?
    # probably end the game? or ask the user to play again?
  else
    puts "You chose to stay!"  # if dealer didn't bust, he can now stay
  end

  # ... continue on to Dealer turn


def declare_winner()