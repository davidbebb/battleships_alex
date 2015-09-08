require 'player'

describe Player do

  it { is_expected.to respond_to(:boats) }

  it { is_expected.to respond_to(:add_boat).with(1).argument }

  it { is_expected.to respond_to(:launch).with(2).arguments }

  it 'hits boat if coords match' do
    boat = double :boat, boat_position: [[0,0],[0,1]]
    subject.add_boat(boat)
    subject.launch(subject, [0,0])
    expect(boat.boat_position).to eql([[0,1]])
  end

end
