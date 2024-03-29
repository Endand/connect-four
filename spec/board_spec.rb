require_relative '../lib/board'

describe Board do
   describe "#initialize" do
      let(:board) { described_class.new }
      it "creates 6x7 game board filled with empty spaces" do
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

   describe "#display" do
      let(:board) { described_class.new }
      context "displays current board state" do
         
         it "shows empty board in the beginning" do
            
            expected_output = <<~BOARD
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            BOARD
         expect { board.display }.to output(expected_output).to_stdout
         end
         it "shows board with inputs" do
            expected_output = <<~BOARD
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    |    |    |    |    |    |
            +----+----+----+----+----+----+----+
            |    |    | ⚫ | ⚪ |    |    |    |
            +----+----+----+----+----+----+----+
            BOARD
            black='⚫'
            white='⚪'
            board.mark_cell(black,2)
            board.mark_cell(white,3)
            expect { board.display }.to output(expected_output).to_stdout
         end

      end
   end

   describe "#mark_cell" do
      context "fills one space" do
         black = '⚫'
         white = '⚪'
         let(:board) { described_class.new }
         it "adds black" do
            board.mark_cell(black, 2)
            expect(board.game_board[5][2]).to eq(black)
         end
   
         it "adds white" do
            board.mark_cell(white, 3)
            expect(board.game_board[5][3]).to eq(white)
         end

         it "adds on top if already present" do
            board.mark_cell(white, 3)
            board.mark_cell(black, 3)
            expect(board.game_board[5][3]).to eq(white)
            expect(board.game_board[4][3]).to eq(black)
         end

         it "returns false if col full" do
            6.times {board.mark_cell(white, 3)}
            expect(board.mark_cell(white, 3)).to be(false)
         end

      end

   end

   describe "#reset" do
      
   end
end