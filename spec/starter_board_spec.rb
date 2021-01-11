require './lib/starter_board'

describe StarterBoard do
  describe '#create' do
    context 'when creating the started board' do
      it 'returns a 2d array of x and y' do
        cell = double('cell')
        starter_board = StarterBoard.new(3, 3, cell)
        expect(starter_board.show).to eq(
          [[cell, cell, cell],
          [cell ,cell , cell],
          [cell, cell, cell]]
        )
      end
    end
  end

  describe '#get_boards' do
    context 'getting the board' do
      it 'calls upon the board class' do
        cell = double('cell')
        board = double('board')
        starter_board = StarterBoard.new(3, 3, cell, board)
        expect(board).to receive(:new).with(
          [[cell, cell, cell],
          [cell, cell, cell],
          [cell, cell, cell]]
        )
        starter_board.get_boards
      end

      it 'calls upon the board class multiple times' do
        cell = double('cell')
        board = double('board')
        starter_board = StarterBoard.new(4, 4, cell, board)
        expect(board).to receive(:new).exactly(4).times
        starter_board.get_boards
      end
    end
  end
end
