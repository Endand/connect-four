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
      player1.choose_col
   end
end