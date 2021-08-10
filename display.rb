# Module for displaying text
module Display
  def enter_name(current)
    print "Please enter the #{current} player's name: "
  end

  def select_cell(name)
    print "#{name}, select the cell for your move: "
  end

  def game_over_board_full
    print "GAME OVER! Board is full\n"
  end

  def game_over_winner(winner)
    print "GAME OVER! The winner is #{winner}!\n"
  end
end
