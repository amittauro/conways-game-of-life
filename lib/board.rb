class Board

  attr_reader :cells
  def initialize(cells)
    @cells = cells.flatten!
  end

  def survives?
    count_live_cells == 3 || count_live_cells == 4
  end

  def underpopulation?
    count_live_cells == 2 || count_live_cells == 1
  end

  def overpopulation?
    count_live_cells > 4
  end

  def reproduction?
    count_live_cells == 3
  end

  def run
    centre_cell = cells[4]
    if centre_cell.live and underpopulation?
      centre_cell.update_to_die
    elsif centre_cell.live and overpopulation?
      centre_cell.update_to_die
    end
  end

  private

  def count_live_cells
    cells.count{ |cell| cell.live }
  end

end
