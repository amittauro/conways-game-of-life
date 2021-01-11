class StarterBoard

  attr_reader :cell
  def initialize(x, y, cell = Cell.new)
    @x = x
    @y = y
    @cell = cell
  end

  def show
    array = []
    @y.times do
      array.push(Array.new(@x, cell))
    end
    array
  end
end
