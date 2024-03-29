require_relative './game'
require_relative './player'
require_relative './board'
#Handles overall game flow and interactions
class ConnectFour
   
   def play 
      greeting
      player1_name=get_name(1)
      player2_name=get_name(2)
      game=Game.new(player1_name,player2_name)
      game.play
      while play_again?
         player1_name,player2_name = swap_names(player1_name,player2_name)
         game=Game.new(player1_name,player2_name)
         game.play
      end
      end_message
    end

   def greeting 
      puts "\nWelcome to Connect Four!\n"
   end

   def swap_names(name1,name2)
      temp=name1
      name1=name2
      name2=temp

      return name1,name2
   end

   def get_name(player_num)
      ask_name(player_num)
      name=gets.strip.capitalize
   end

   def ask_name(player_num)
      puts "\nPlease enter name for player #{player_num}: "
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