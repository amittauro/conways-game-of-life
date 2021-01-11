require './lib/board'

describe Board do
  describe '#run' do
    let(:cell1) { double('cell', :live => true) }
    let(:cell2) { double('cell', :live => false) }
    context 'when there are 2 or 3 neighbours' do
      it 'returns a live cell for 2 neighbours' do
        board = Board.new([
          [cell1, cell2, cell1],
          [cell2, cell1, cell2],
          [cell2, cell2, cell2],
        ])
        expect(board.survives?).to eq(true)
      end
    end
  end
end
