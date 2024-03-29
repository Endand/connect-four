require_relative '../lib/connect_four'

describe ConnectFour do
   describe "#initialize" do
      context "sets up board and players" do
         let(:connect_four) {described_class.new}
         it "creates an empty board" do
         allow(connect_four).to receive(:gets).and_return("Jo", "Cat")
         expect(connect_four.board.game_board).to eq(Array.new(6) { Array.new(7) { " " } })
         end
         it "sets two players" do
            allow(connect_four).to receive(:gets).and_return("Jo", "Cat")
            expect(connect_four.player1.name).to eq("Jo")
            expect(connect_four.player2.name).to eq("Cat")
         end
      end
   end

   describe "#play" do

   end

   describe "#again" do

   end

end