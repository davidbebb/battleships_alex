require 'boat'

describe Boat do

  it 'should initialize with an x and a y coordinate' do
    expect(Boat).to respond_to(:new).with(1).argument
  end

  it 'should have a position' do
    boat = Boat.new(5, [0,0], 'east')
    expect(boat.boat_position.class).to eql(Array)
  end

end
