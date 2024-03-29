require_relative '../lib/game'

describe Game do
   describe "#initialize" do
      context "sets up board and players" do
         let(:game) {described_class.new}
         it "creates an empty board" do
            allow(game).to receive(:gets).and_return("Jo\n", "Cat\n")
         expect(game.board.game_board).to eq(Array.new(6) { Array.new(7) { " " } })
         end
         it "sets two players" do
            allow(game).to receive(:gets).and_return("Jo\n", "Cat\n")
            expect(game.player1.name).to eq("Jo")
            expect(game.player2.name).to eq("Cat")
         end
      end
   end

   describe "#play" do

   end
end