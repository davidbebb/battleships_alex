require 'boat'

describe Boat do

  let(:boat){Boat.new(1,2)}

  it 'should initialize with an x and a y coordinate' do
    expect(Boat).to respond_to(:new).with(2).argument
  end

  it 'should have a position' do
    expect(boat.boat_position.class).to eql(Array)
  end

end
