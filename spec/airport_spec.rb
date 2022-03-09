require 'airport'
require 'plane'

describe Airport do
  let(:plane) { Plane.new }
  
  describe 'land' do
    it 'instructs a plane to land at an airport' do
      subject.land(plane)
      expect(subject.hangar).to include plane
    end

    it 'confirms that the plane is at the airport' do
      subject.land(plane)
      expect(subject.land(plane)).to eq :grounded
    end

    it 'prevents from landing when airport is full' do
      10.times{ subject.land(Plane.new) }
      expect{ subject.land(plane) }.to raise_error 'Airport is full'
    end  

  end

  describe '#take off' do
    it 'instructs a plane to take off from an airport' do
      subject.land(plane)
      subject.take_off(plane)
      expect(subject.hangar).to eq []
    end

    it 'confirms that the airplane is no longer in the airport' do
      subject.land(plane)
      expect(subject.take_off(plane)).to eq :airborne
    end
  end

  describe 'capacity' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
    end
  end

end