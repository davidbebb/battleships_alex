require 'player'

describe Player do

  let(:boat) { double :boat, boat_position: [[0,0],[0,1]] }

  it { is_expected.to respond_to(:harbor) }

  it { is_expected.to respond_to(:add_boat).with(1).arguments }

  it { is_expected.to respond_to(:launch).with(2).arguments }

  describe '#add_boat' do
    it 'adds boat to players harbor array' do
      subject.add_boat(boat)
      expect(subject.harbor.include? boat).to be true
    end

    it 'raises error if ships overlap' do
      subject.add_boat boat
      expect{subject.add_boat(boat)}.to raise_error 'ship overlapping'
    end
  end

  describe '#launch' do
    it 'hits boat if coords match' do
      subject.add_boat(boat)
      subject.launch(subject, [0,0])
      expect(boat.boat_position).to eql([[0,1]])
    end
  end
end
