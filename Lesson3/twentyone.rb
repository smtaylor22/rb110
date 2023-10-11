game_rules = <<HEREDOC
Welcome to Twenty-One!
Game Rules:
1. You will be playing with a normal 52-card deck consisting of the 4 suits
(hearts, diamonds, clubs, and spades), and 13 values (2, 3, 4, 5, 6, 7, 8, 9, 10,
jack, queen, king, ace).

2. The goal of Twenty-9One is to try to get as close to 21 as possible,
without going over. If you go over 21, it's a "bust" and you lose.

3. There are two players. The player(you) and the dealer(computer). You will each
be dealt 2 cards. You can see both of your cards and 1 of the dealers cards. You
will go first.

4. Card Values: all of the card values are pretty straightforward, except for
the ace. The numbers 2 through 10 are worth their face value. The jack, queen,
and king are each worth 10, and the ace can be worth 1 or 11. The ace's value
can be 1 if it will keep your cards total value under 21.

5. Player(you) turn: the player goes first, and can decide to either "hit" or "stay".
A hit means the player will ask for another card. Remember that if the total exceeds
21, then the player "busts" and loses.

5. Dealer(computer) turn: when the player stays, it's the dealer's turn. The dealer must
follow a strict rule for determining whether to hit or stay: hit until the
total is at least 17. If the dealer busts, then the player wins.

6.Comparing cards: when both the player and the dealer stay, it's time to
compare the total value of the cards and see who has the highest value.

7. Whoever has the highest score closest to 21 will win. The first to win 5 rounds
is the grand winner.

Ready? Press 'Enter'
HEREDOC

CARD_VALUES = { "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7,
                "8" => 8, "9" => 9, "10" => 10, "J" => 10,
                "Q" => 10, "K" => 10, "A" => 11 }

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

MAX_TOTAL = 21
MAX_DEALER_TOTAL = 17

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def prompt(msg)
  puts "=>#{msg}"
end

def play_again?
  answer = ''
  loop do
    prompt "-----------------------"
    prompt "Do you want to play again? Enter (y)es or (n)o."
    answer = gets.chomp
    break if answer.downcase == 'y' || answer.downcase == 'n'
    prompt "Sorry, Invalid input. Enter 'y' or 'n'"
  end
  answer
end

def calc_total(cards)
  score = 0
  cards.each do |card|
    score += CARD_VALUES[card[1]]
  end

  aces = cards.select { |arr| arr[1] == 'A' }
  # Adjust for when Aces value can equal 1
  aces.count.times do
    score -= 10 if score > MAX_TOTAL
  end

  score
end

def busted?(total)
  total > MAX_TOTAL
end

def calc_winner(player_total, dealer_total)
  if player_total > dealer_total
    'player'
  elsif player_total < dealer_total
    'dealer'
  else
    'tie'
  end
end

def display_winner(winner)
  case winner
  when 'player'
    prompt "You Won!"
  when 'dealer'
    prompt "The dealer won!"
  else
    prompt "It's a tie!"
  end
end

def declare_end_round(player_cards, dealer_cards, player_total, dealer_total)
  puts "=============="
  prompt "Player has #{player_cards}, for a total of: #{player_total}"
  prompt "Dealer has #{dealer_cards}, for a total of: #{dealer_total}"
  puts "=============="
end

def find_grand_winner(player_grand_total, dealer_grand_total)
  if player_grand_total >= 5
    return 'player'
  elsif dealer_grand_total >= 5
    return 'dealer'
  end
  nil
end

# Start Game with welcome message
prompt game_rules

loop do
  answer = gets
  break if answer == "\n"
  prompt "Invalid input. Press the 'Enter' key if your're ready."
end

player_grand_total = 0
dealer_grand_total = 0

# Main Game Loop
loop do
  system 'clear'
  deck = initialize_deck

  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  # Calculate the value of cards in each player's hand
  player_total = calc_total(player_cards)
  dealer_total = calc_total(dealer_cards)

  # Start round
  prompt "Ok! Let's begin!"
  prompt "Player's Score is #{player_grand_total}."
  prompt "Dealer's score is #{dealer_grand_total}"
  prompt "Dealer has: #{dealer_cards[0]} and unknown card"
  prompt "You have: #{player_cards} for a total of #{player_total}"

  # Player turn
  answer = nil
  loop do
    loop do
      prompt "Would you like to (h)it or (s)tay?"
      answer = gets.chomp
      break if answer.downcase == 'h' || answer.downcase == 's'
      prompt "Invalid input. Please enter 'h' or 's'."
    end
    break if answer.downcase == 's' || busted?(player_total)
    player_cards << deck.pop
    player_total = calc_total(player_cards)
    prompt "You have: #{player_cards}"
    prompt "Your total is: #{player_total}"
  end

  # End game and ask if wants to play again
  if busted?(player_total)
    prompt "You Busted!"
    declare_end_round(player_cards, dealer_cards, player_total, dealer_total)
    prompt "The dealer wins!"
    dealer_grand_total += 1
    break if find_grand_winner(player_grand_total, dealer_grand_total)
    answer = play_again?
    next if answer == 'y'
    break if answer == 'n'
  # if player didn't bust, must have stayed to get here
  else
    prompt "You chose to stay!"
  end

  # Dealer turn
  loop do
    break if busted?(dealer_total) ||
             calc_total(dealer_cards) >= MAX_DEALER_TOTAL
    prompt "Dealer hits!"
    dealer_cards << deck.pop
    dealer_total = calc_total(dealer_cards)
  end

  if busted?(dealer_total)
    prompt "Dealer Busted!"
    declare_end_round(player_cards, dealer_cards, player_total, dealer_total)
    prompt "The player wins!"
    player_grand_total += 1
    break if find_grand_winner(player_grand_total, dealer_grand_total)
    answer = play_again?
    next if answer == 'y'
    break if answer == 'n'
  # if dealer didn't bust, he can now stay
  else
    prompt "Dealer chose to stay!"
  end

  # Find the winner
  winner = calc_winner(player_total, dealer_total)

  player_grand_total += 1 if winner == 'player'
  dealer_grand_total += 1 if winner == 'dealer'

  declare_end_round(player_cards, dealer_cards, player_total, dealer_total)
  display_winner(winner)

  break if find_grand_winner(player_grand_total, dealer_grand_total)

  break if play_again? == 'n'
end

# Only display grand winner if someone scored 5 grand total points
grand_winner = find_grand_winner(player_grand_total, dealer_grand_total)
prompt "The Grand Winner is: #{grand_winner}!!!!" if grand_winner

prompt "Thanks for playing!"
