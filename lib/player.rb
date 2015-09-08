class Player

  attr_accessor :harbor

  def initialize
    @harbor = []
  end

  def add_boat(boat)
    overlapping?(boat)
    @harbor << boat
  end

  def launch(player, coord)
    player.harbor.each do |boat|
    boat.boat_position.delete(coord)
    end
  end

  def overlapping?(boat)
    @harbor.each do |ship|
      if ship.boat_position == boat.boat_position
        fail 'ship overlapping'
      end
    end
  end
end
