#Handles win conditions and game logic
class Game
   attr_reader :board, :player1, :player2
   def initialize
      @board = Board.new
      black='⚫'
      white='⚪'
      ask_name(1)
      @player1 = Player.new(gets,black)
      ask_name(2)
      @player2 = Player.new(gets,white)
   end

   def ask_name(player_num)
      puts "\nPlease enter name for player #{player_num}: "
   end

   def play
      
   end
end