class Cell

  attr_reader :live
  def initialize(live)
    @live = live
  end

  def update_to_die
    @live = false
  end

  def update_to_live
    @live = true
  end
end
