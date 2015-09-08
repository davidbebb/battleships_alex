require 'missile'

describe Missile do

  let(:missile){Missile.new(1,2)}
  #double :boat, boat_position: nil
  #double :player, add_boat: [boat]
  let(:boat){double :boat, boat_position: nil}
  let(:player){double :player, add_boat: [boat]}
  # boat = instance_double('boat', :boat_position => nil)
  # player =instance_double('player', :add_boat => [boat])
  it 'should initialize with an x and a y coordinate' do
    expect(Missile).to respond_to(:new).with(2).argument
  end

  it 'should have a position' do
    expect(missile.missile_position.class).to eql(Array)
  end

  it 'checks a players array of boats and removes any with matching coordinates' do
    #player.add_boat

    expect(boat.boat_position).to eql(nil)
  end

end
