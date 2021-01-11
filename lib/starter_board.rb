class StarterBoard

  attr_reader :cell, :board
  def initialize(x, y, cell = Cell.new, board = Board)
    @x = x
    @y = y
    @cell = cell
    @board = board
  end

  def show
    Array.new(@y).map { |row| create_row }
  end

  def get_boards
    y = @y - 2
    x = @x - 2
    y.times do |y|
      x.times do |x|
        board.new(create_table(x, y))
      end
    end
  end

  private

  def create_row
    Array.new(@x, cell)
  end

  def create_table(x, y)
    square = []
    square.push(show[y][x..x+2])
    square.push(show[y+1][x..x+2])
    square.push(show[y+2][x..x+2])
    square
  end
end
