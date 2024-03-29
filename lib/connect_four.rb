require_relative './game'
require_relative './player'
require_relative './board'
#Handles overall game flow and interactions
class ConnectFour
   attr_reader :board, :player1, :player2
   def initialize 
      greeting
      @board = Board.new
      black='⚫'
      white='⚪'
      ask_name(1)
      @player1 = Player.new(gets,black)
      ask_name(2)
      @player2 = Player.new(gets,white)
      play
    end

   def greeting 
      puts "\nWelcome to Connect Four!\n"
   end

   def ask_name(player_num)
      puts "\nPlease enter name for player #{player_num}: "
   end

   def play
      
   end

   

end