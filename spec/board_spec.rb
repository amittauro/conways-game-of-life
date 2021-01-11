require './lib/board'

describe Board do
  let(:cell1) { double('cell', :live => true) }
  let(:cell2) { double('cell', :live => false) }
  describe '#survives?' do
    context 'when the cente cell is alive and survives' do
      it 'returns true for 2 live neighbours' do
        board = Board.new([
          [cell1, cell2, cell1],
          [cell2, cell1, cell2],
          [cell2, cell2, cell2],
        ])
        expect(board.survives?).to eq(true)
      end

      it 'returns true with 3 live neighbours' do
        board = Board.new([
          [cell1, cell2, cell1],
          [cell2, cell1, cell2],
          [cell2, cell2, cell1],
        ])
        expect(board.survives?).to eq(true)
      end
    end
  end

  describe '#underpopulation?' do
    context 'when the centre cell dies due to underpopulation' do
      it 'returns true when there are less than 2 live neighbours' do
        board = Board.new([
          [cell2, cell2, cell2],
          [cell2, cell1, cell2],
          [cell2, cell2, cell1],
        ])
        expect(board.underpopulation?).to eq(true)
      end

      it 'returns true when there are no live neighbours' do
        board = Board.new([
          [cell2, cell2, cell2],
          [cell2, cell1, cell2],
          [cell2, cell2, cell2],
        ])
        expect(board.underpopulation?).to eq(true)
      end
    end
  end

  describe '#overpopulation?' do
    context 'when the the centre cell dies due to overpopulation' do
      it 'returns true when there are more than 3 live neighbours' do
        board = Board.new([
          [cell1, cell1, cell2],
          [cell1, cell1, cell2],
          [cell1, cell2, cell1],
        ])
        expect(board.overpopulation?).to eq(true)
      end
    end
  end
end
