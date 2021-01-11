require './lib/cell'

describe Cell do
  describe '#live' do
    it 'returns true' do
      cell = Cell.new(true)
      expect(cell.live).to eq(true)
    end

    it 'returns false starting dead' do
      cell = Cell.new(false)
      expect(cell.live).to eq(false)
    end
  end
end
