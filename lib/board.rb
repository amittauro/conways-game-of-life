class Board

  attr_reader :cells
  def initialize(cells)
    @cells = cells
  end

  def survives?
    cells.flatten!
    live_cells = cells.count{ |cell| cell.live }
    live_cells == 3 || live_cells == 4
  end
end
