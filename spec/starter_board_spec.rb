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
end
