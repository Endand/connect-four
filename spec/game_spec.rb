require_relative '../lib/game'

describe Game do
   describe "#initialize" do
      context "sets up board and players" do
         let(:game) { described_class.new("Jo", "Cat") }
         it "creates an empty board" do
            expect(game.board.game_board).to eq(Array.new(6) { Array.new(7) { " " } })
         end
         it "sets two players" do
            expect(game.player1.name).to eq("Jo")
            expect(game.player2.name).to eq("Cat")
         end
      end
   end

   describe "#play" do

   end
end