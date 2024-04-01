require_relative '../lib/game'

describe Game do
  describe '#initialize' do
    context 'sets up board and players' do
      let(:game) { described_class.new('Jo', 'Cat') }
      it 'creates an empty board' do
        expect(game.board.game_board).to eq(Array.new(6) { Array.new(7) { ' ' } })
      end
      it 'sets two players' do
        expect(game.player1.name).to eq('Jo')
        expect(game.player2.name).to eq('Cat')
      end
    end
  end

  describe '#play' do
    let(:game) { described_class.new('Player1', 'Player2') }

    context 'when there is a winner' do
      it 'declares the winner' do
        allow(game.player1).to receive(:choose_col).and_return(0)
        allow(game.player2).to receive(:choose_col).and_return(1, 1, 1, 1)

        expect { game.play }.to output(/Player1 Won!/).to_stdout
      end
    end

    context 'when there is a tie' do
      it 'declares a tie' do
        allow(game.player1).to receive(:choose_col).and_return(0, 1, 2, 3, 4, 5, 6)
        allow(game.player2).to receive(:choose_col).and_return(0, 1, 2, 3, 4, 5, 6)

        expect { game.play }.to output(/Board is full! It's a tie!/).to_stdout
      end
    end
  end
end
