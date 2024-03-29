require_relative './game'
require_relative './player'
require_relative './board'
#Handles overall game flow and interactions
class ConnectFour
   
   def start 
      greeting
      game=Game.new
      game.play
      while play_again?
         game.board.reset
         game.play
      end
      end_message
    end

   def greeting 
      puts "\nWelcome to Connect Four!\n"
   end

   def play_again?
      ans=ask_again
      ans=='y' ? true : false
   end

   def ask_again
      puts "Play Again? (Y/N)"
      ans=''
      until ans=='y' || ans=='n'
         ans=gets.strip.downcase[0]
      end
      ans
   end

   def end_message
      puts "\nThank you for playing!\n"
   end

end