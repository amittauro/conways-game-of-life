require './lib/board'

describe Board do
  describe '#run' do
    let(:cell1) { double('cell', :live => true) }
    let(:cell2) { double('cell', :live => false) }
    context 'when the cente cell is alive and survives' do
      it 'returns true for 2 neighbours' do
        board = Board.new([
          [cell1, cell2, cell1],
          [cell2, cell1, cell2],
          [cell2, cell2, cell2],
        ])
        expect(board.survives?).to eq(true)
      end

      it 'returns true with 3 neighbours' do
        board = Board.new([
          [cell1, cell2, cell1],
          [cell2, cell1, cell2],
          [cell2, cell2, cell1],
        ])
        expect(board.survives?).to eq(true)
      end
    end
  end
end
