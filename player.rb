# Player class is used to store the players name and inputs
class Player
  attr_accessor :move
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @move = -1
  end
end
