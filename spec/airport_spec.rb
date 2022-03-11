require 'airport'
require 'plane'


describe Airport do
  let(:plane) { Plane.new }
  before do
    allow_any_instance_of(Weather).to receive(:stormy?) {false}
  end
  
  describe '#land' do
    it 'instructs a plane to land at an airport' do
      subject.land(plane)
      expect(subject.hangar).to include plane
    end

    it 'confirms that the plane is at the airport' do
      expect(subject.land(plane)).to eq :grounded
    end

    it 'prevents from landing when airport is full' do
      allow(Plane).to receive(:grounded) {:false} 
      10.times{ subject.land(plane) }
      expect{ subject.land(plane) }.to raise_error 'Airport is full'
    end  
    
    it 'prevents landing when weather is stormy' do
      allow_any_instance_of(Weather).to receive(:stormy?) { true }
      expect{ subject.land(plane) }.to raise_error 'Too stormy for landing'
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

    it 'prevents from take off when weather is stormy' do
      allow_any_instance_of(Weather).to receive(:stormy?) {true}
      expect { subject.take_off(plane) }.to raise_error 'Too stormy for take-off'
    end 

    it 'cannot take off if is not in the airport' do
      expect{ subject.take_off(plane) }.to raise_error 'Plane not in airport'
    end
  end

  describe '#capacity' do
    it 'has a default capacity' do
      expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
    end

    it 'has a default capacity that can be overridden as appropriate' do
      airport = Airport.new(20)
      expect(airport.capacity).to eq 20
    end
  end

end