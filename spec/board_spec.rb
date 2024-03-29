require_relative '../lib/board'

describe Board do
   describe "#initialize" do
      it "creates 6x7 game board filled with empty spaces" do
         board=Board.new
         expect(board.game_board).to eq([
        [" ", " ", " ", " ", " ", " ", " "],
        [" ", " ", " ", " ", " ", " ", " "],
        [" ", " ", " ", " ", " ", " ", " "],
        [" ", " ", " ", " ", " ", " ", " "],
        [" ", " ", " ", " ", " ", " ", " "],
        [" ", " ", " ", " ", " ", " ", " "]
      ])
      end
   end
end