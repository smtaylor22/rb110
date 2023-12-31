require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diagonals

# get up to the last element in the array and join them
# append the word or/and and append the last element in the array to string
def joinor(squares, separator=', ', conj='or')
  case squares.size
  when 0 then ''
  when 1 then squares.first.to_s
  when 2 then squares.join(" #{conj} ")
  else
    output = squares[0..-2].join(separator) 
    "#{output}#{separator}#{conj} #{squares[-1]}"
  end
end

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop: disable Metrics/AbcSize
def display_board(brd)
  # system 'clear'
  puts "You're an #{PLAYER_MARKER}. Computer is a #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop: enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board 
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

# def computer_places_piece!(brd)
#   threat = detect_threat(brd)
#   if !!threat
#     brd[threat] = COMPUTER_MARKER
#   else
#     square = empty_squares(brd).sample
#     brd[square] = COMPUTER_MARKER
#   end
# end

# Loop over each section of winning lines
# def detect_threat(brd)
#   WINNING_LINES.each do |line|
#     if brd.values_at(*line).count(PLAYER_MARKER) == 2
#       if brd.values_at(*line).index(INITIAL_MARKER)
#         index = brd.values_at(*line).index(INITIAL_MARKER)
#         return line[index]
#       end
#     end
#   end
#   return false
# end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

# def find_winning_move(line, board)
#   if board.values_at(*line).count(COMPUTER_MARKER) == 2
#     board.select{|k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
#   else
#     nil
#   end
# end

def computer_places_piece!(brd)
  square = nil

  # offense first 
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # defense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # pick square 5 

  if brd[5] == INITIAL_MARKER
    square = 5
    brd[square] = COMPUTER_MARKER
  end

  # just pick a square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_score = 0
computer_score = 0
match_point = 5


def determine_player()
  prompt "Would you or the computer like to go first?"
  first_player = nil
  loop do
    prompt "Enter 1 for you to go first or 2 for computer to go first"
    first_player = gets.chomp.to_i
    if first_player == 1 || first_player == 2
      break
    else
      prompt "Invalid input. 1 or 2 are the only valide choices"
    end
  end
  first_player
end


def place_piece!(board, current_player)
  if current_player == 1
    player_places_piece!(board)
  else
    computer_places_piece!(board)
  end
end

def alternate_player(current_player)
  current_player == 1 ? 2 : 1 
end


loop do
  board = initialize_board
  prompt "Welcome to Tictactoe!"
  
  player = determine_player

  prompt "Your score is #{player_score}, the Computer's score is #{computer_score}"

  loop do
    display_board(board)
    place_piece!(board, player)
    player = alternate_player(player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  winner = detect_winner(board)
  if someone_won?(board)
    prompt "#{winner} won!"
  else
    prompt "It's a tie!"
  end

  player_score += 1 if winner == 'Player'
  computer_score += 1 if winner =='Computer'

  prompt "You won the game!" if player_score == match_point
  prompt "The computer won the game!" if computer_score == match_point
    
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')

end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
