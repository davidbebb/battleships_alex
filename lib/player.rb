class Player

  attr_accessor :harbor

  def initialize
    @harbor = []
  end

  def add_boat(boat)
    @harbor << boat
  end

  def launch(player, coord)
    player.harbor.each do |boat|
    boat.boat_position.delete(coord)
    end
  end
end
