require './lib/cell'

describe Cell do
  describe '#live' do
    it 'returns true' do
      cell = Cell.new(true)
      expect(cell.live).to eq(true)
    end
  end
end
