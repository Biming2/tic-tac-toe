# Player class is used to store the players name and inputs
class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @move = [0, 0]
  end

  def move
    print 'Select the row for your move: '
    @move[0] = Integer(gets.chomp)
    @move[0] -= 1
    print 'Select the column for your move: '
    @move[1] = Integer(gets.chomp)
    @move[1] -= 1
  end
end
