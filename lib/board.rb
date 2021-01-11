class Board

  attr_reader :cells
  def initialize(cells)
    @cells = cells.flatten!
  end

  def survives?
    count_live_cells == 3 || count_live_cells == 4
  end

  private

  def count_live_cells
    cells.count{ |cell| cell.live }
  end

end
