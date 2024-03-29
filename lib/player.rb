#Handles player movement and input validation
class Player
   attr_reader :name, :color
   def initialize(name,color)
      @name=name.strip.capitalize
      @color=color
   end

   def choose_col
      input=-1
      until (1..7).include?(input)
         ask_col
         input=gets.strip
         begin
            input=Integer(input)
            
         rescue ArgumentError
            not_int_msg
            input=-1
         end
         bound_out_msg unless (1..7).include?(input)
      end
      input-1
   end

   def ask_col
      puts "\n#{@name}, please choose a column to put token in (1...7).\n"
   end

   def bound_out_msg
      puts "\nPlease choose a number between 1 to 7, inclusive.\n"
   end

   def not_int_msg
      puts "\nPlease enter a NUMBER, not any other type.\n"
   end

end