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
    s = y - 2
    l = x - 2
    l.times do |f|
      s.times do |i|
        board_row = []
        puts "i #{i}"
        puts "f #{f}"
        board_row.push(show[f][i..i+2])
        board_row.push(show[f+1][i..i+2])
        board_row.push(show[f+2][i..i+2])
        board.new(board_row)
      end
    end
    # 2..y.times do |column|
    #   board.push(show[0][y-2..])
    #
    #
    # board_row = []
    # x.times do |row|
    #   board_row.push(show[x][0..2])
    # end
    # board_row
    # board.new(board_row)
  end

  private

  def create_row
    Array.new(x, cell)
  end
end
