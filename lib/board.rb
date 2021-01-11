class Board

  attr_reader :cells, :centre_cell
  def initialize(cells)
    @cells = cells.flatten!
    @centre_cell = @cells[4]
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
    centre_cell.update_to_die if centre_cell_will_die?

    centre_cell.update_to_live if centre_cell_becomes_live?
  end

  private

  def count_live_cells
    cells.count{ |cell| cell.live }
  end

  def centre_cell_will_die?
    centre_cell.live and (underpopulation? || overpopulation? || reproduction?)
  end

  def centre_cell_becomes_live?
    !centre_cell.live and reproduction?
  end
end
