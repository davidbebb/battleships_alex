class Boat

  attr_accessor :boat_position

  def initialize(size, y, x, orientation)
    @boat_position = []
    size.times do
      fail 'ship out of bounds' if x > 2 || x < 0 || y > 2 || y < 0
      boat_position << [y,x]
      case orientation
        when 'N'
          y -= 1
        when 'S'
          y += 1
        when 'E'
          x += 1
        when 'W'
          x -= 1
      end
    end
  end

  def destroyed?
    self.boat_position.empty?
  end
end
