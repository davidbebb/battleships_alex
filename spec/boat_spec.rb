require 'boat'

describe Boat do

  it 'should initialize size, coordinates and orientation' do
    expect(Boat).to respond_to(:new).with(4).argument
  end

  it 'Creates ship with correct size and coordinates' do
    boat = Boat.new(3, 0, 0, 'south')
    expect(boat.boat_position).to eql [[0,0],[1,0],[2,0]]
  end

  it 'raises error if created out of bounds' do
    expect{Boat.new(3, 0, 8, 'east')}.to raise_error 'ship out of bounds'
  end
end
