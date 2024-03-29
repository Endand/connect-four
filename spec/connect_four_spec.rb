require_relative '../lib/connect_four'

describe ConnectFour do
  let(:connect_four) { ConnectFour.new }

  describe "#start" do
    
  end

  describe "#play_again?" do
    it "returns true if user inputs 'y'" do
      allow(connect_four).to receive(:gets).and_return("y\n")
      expect(connect_four.play_again?).to be true
    end

    it "returns false if user inputs 'n'" do
      allow(connect_four).to receive(:gets).and_return("n\n")
      expect(connect_four.play_again?).to be false
    end
  end

  
end
