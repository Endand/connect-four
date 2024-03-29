require_relative '../lib/connect_four'

describe ConnectFour do
  describe "#play" do
    context "when playing a game" do
      let(:connect_four) { ConnectFour.new }

      it "plays the game" do
        allow(connect_four).to receive(:gets).and_return("Alice\n", "Bob\n", "n\n")
        expect_any_instance_of(Game).to receive(:play)
        connect_four.play
      end
   
    end
  end
end
