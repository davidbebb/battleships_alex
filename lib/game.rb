class Game

  attr_accessor :player_1
  attr_accessor :player_2


  def initialize
    @player_1 = Player.new
    @player_2 = Player.new
    @boat_sizes = [2, 1, 1]
  end

  def create_boats(player)
    i=0
    @boat_sizes.each do |size|
      puts "For your boat of length #{size}."
      puts "Enter y coordinate"
      y = gets.chomp.to_i
      puts "Enter x coordinate"
      x = gets.chomp.to_i
      puts "Enter orientation (N, S ,E, W)"
      orientation = gets.chomp
      boat = Boat.new(size, y, x, orientation)
      player.add_boat(boat)
      instance_variable_set("@Boat#{i += 1}", boat)
      end
  end



end


#todo recieve boats overlap and deal with it - new boat?
