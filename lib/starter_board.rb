class StarterBoard

  attr_reader :cell, :x, :y, :board
  def initialize(x, y, cell = Cell.new, board = Board)
    @x = x
    @y = y
    @cell = cell
    @board = board
  end

  def show
    Array.new(y).map { |row| create_row }
  end

  def get_boards
    board_row = []
    3.times do |row|
      board_row.push(show[row][0..2])
    end
    board_row
    board.new(board_row)
  end

  private

  def create_row
    Array.new(x, cell)
  end
end
