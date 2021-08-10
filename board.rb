# Board class is used to store the plays and display the board itself
class Board
  attr_reader :board_array

  WIN = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze

  def initialize
    @board_array = [0, 1, 2, 3, 4, 5, 6, 7, 8]
  end

  def display
    system('clear') || system('cls')
    puts <<-HEREDOC
    -------------
    | #{board_array[0]} | #{board_array[1]} | #{board_array[2]} |
    -------------
    | #{board_array[3]} | #{board_array[4]} | #{board_array[5]} |
    -------------
    | #{board_array[6]} | #{board_array[7]} | #{board_array[8]} |
    -------------
    HEREDOC
  end

  def update_values(cell, symbol)
    @board_array[cell] = symbol
  end

  def full_board?
    @board_array.all? { |value| value.is_a? String }
  end

  def game_over?
    WIN.any? do |combo|
      [@board_array[combo[0]], @board_array[combo[1]], @board_array[combo[2]]].uniq.length == 1
    end
  end
end
