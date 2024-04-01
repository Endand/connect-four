#Handles win conditions and game logic
class Game
   attr_reader :board, :player1, :player2
   def initialize(player1_name, player2_name)
      @board = Board.new
      black='⚫'
      white='⚪'
      @player1 = Player.new(player1_name,black)
      @player2 = Player.new(player2_name,white)
   end

   def play
      winner=nil
      turn=1
      until winner || @board.full?
         player = turn.odd? ? @player1 : @player2

         board.display

         #check if player can choose this col
         player_choice = player.choose_col
         until @board.can_put?(player_choice)
            @board.cant_choose_msg
            player_choice = player.choose_col
         end

         #fill in the cell accordingly
         @board.mark_cell(player.color,player_choice)

         #check if it's a win
         

         turn+=1
      end
      board.display
   end
end

def tie_msg
   puts "\nBoard is full! It's a tie!\n"
end