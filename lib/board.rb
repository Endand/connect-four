#Handles initialization and manipulation of the game board
class Board
   attr_reader :game_board
   
   def initialize
      @game_board = Array.new(6) { Array.new(7) { " " } }
   end
   
   def display
      # Display top border
      puts "+----" * 7 + "+"

      # Display game board
      @game_board.each_with_index do |row|
         print "|"
         row.each do |cell|
            if cell==" "
               print "  #{cell} |"
            else
               print " #{cell} |"
            end
         end
         puts "\n+" + "----+" * 7
      end
   end
   
   #marks cell and return false if the column is full
   def mark_cell(color,col)
      row=5
      until row<0 || @game_board[row][col]==" "
         row-=1
      end
      row >= 0 ? (@game_board[row][col] = color) : false
   end
   
   def reset
      @game_board = Array.new(6) { Array.new(7) { " " } }
   end

   def full?
      @game_board[0].none? {|col| col==' '}
   end
end

