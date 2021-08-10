require_relative 'board'
require_relative 'player'
require_relative 'display'
# Game logic
class Game
  include Display
  attr_reader :board, :player_one, :player_two, :current_player, :state

  def initialize
    @board = Board.new
    @player_one = create_player('first', 'X')
    @player_two = create_player('second', 'O')
    @current_player = @player_one
    @state = true
  end

  def create_player(current, symbol)
    enter_name(current)
    name = gets.chomp
    Player.new(name, symbol)
  end

  def switch_current_player
    current_player == player_one ? player_two : player_one
  end

  def valid_move?(move)
    (move =~ /^-?[0-8]+$/) && Integer(move).between?(0, 8) && (@board.board_array[Integer(move)].is_a? Integer) ? true : false
  end

  def move_input(player)
    until valid_move?(player.move)
      select_cell(player.name)
      player.move = gets.chomp
    end
    player.move = Integer(player.move)
  end

  def play
    while state
      board.display
      move_input(@current_player)
      board.update_values(@current_player.move, @current_player.symbol)
      game_finish?
      @current_player = switch_current_player
    end
  end

  def game_finish?
    if board.full_board?
      board.display
      game_over_board_full
      @state = false
    elsif board.game_over?
      board.display
      game_over_winner(current_player.name)
      @state = false
    end
  end
end
