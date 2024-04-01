require_relative '../lib/player'

describe Player do
  let(:player) { Player.new('Alice', '⚫') }

  describe '#initialize' do
    it 'initializes player with name and color' do
      expect(player.name).to eq('Alice')
      expect(player.color).to eq('⚫')
    end
  end

  describe '#choose_col' do
    it 'asks the player to choose a column' do
      allow(player).to receive(:gets).and_return("1\n")
      expect { player.choose_col }.to output(/Alice, please choose a column to put token in \(1...7\)/).to_stdout
    end

    it 'returns the chosen column number' do
      allow(player).to receive(:gets).and_return("4\n")
      expect(player.choose_col).to eq(3)
    end

    it 'handles invalid input - out of range' do
      allow(player).to receive(:gets).and_return("8\n", "2\n")
      expect { player.choose_col }.to output(/Please choose a number between 1 to 7, inclusive/).to_stdout
    end

    it 'handles invalid input - non-integer' do
      allow(player).to receive(:gets).and_return("abc\n", "3\n")
      expect { player.choose_col }.to output(/Please enter a NUMBER, not any other type/).to_stdout
    end
  end
end
