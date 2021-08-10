require_relative 'game'

def start_game
  system('clear') || system('cls')
  current_game = Game.new
  current_game.play
end

def restart_game?
  puts 'Do you wish to restart the game? (y/n): '
  choice = gets.chomp
  choice.downcase!
  case choice
  when 'y'
    main
  when 'n'
    exit
  else
    restart_game?
  end
end

def main
  start_game
  restart_game?
end

main
