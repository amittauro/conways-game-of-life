class StarterBoard

  attr_reader :cell, :x, :y
  def initialize(x, y, cell = Cell.new)
    @x = x
    @y = y
    @cell = cell
  end

  def show
    Array.new(y).map { |row| create_row }
  end

  private

  def create_row
    Array.new(x, cell)
  end
end
