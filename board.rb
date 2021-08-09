# Board class is used to store the plays and display the board itself
class Board
  @board_array = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]

  def display
    @board_array.each_with_index do |row, row_index|
      if row_index.zero?
        print " -------------\n |"
      else
        print "\n -------------\n |"
      end
      row.each_with_index do |column, column_index|
        if column_index.zero?
          print " #{column} | "
        else
          print "#{column} | "
        end
      end
      if row_index == 2 then print "\n -------------\n" end
    end
  end

  def update_values(row, column, symbol)
    @board_array[row][column] = symbol
  end
end
