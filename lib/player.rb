class Player

  attr_accessor :boats

  def initialize
    @boats =[]
  end

  def add_boat(boat)
    @boats << boat
  end

  def launch(player, coord)
    player.boats.each do |boat|
    boat.boat_position.delete(coord)
    end
  end



end
