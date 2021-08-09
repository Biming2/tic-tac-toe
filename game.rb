require './board'
require './player'
# Game logic
def initialize_player(count, symbol)
  print "Please enter the #{count} player's name: "
  name = gets.chomp
  Player.new(name, symbol)
end

board = Board.new

player_one = initialize_player('first', 'X')
player_two = initialize_player('second', 'O')

player_one.move
board.update_values(player_one.move[0], player_one.move[1], player_one.symbol)
# board.display
