require 'airport'
require 'plane'

describe Airport do
  
  describe 'land' do
    it 'instructs a plane to land at an airport' do
      plane = Plane.new
      subject.land(plane)
      expect(subject.hangar).to include plane
    end
  end

  describe 'take off' do
    it 'instructs a plane to take off from an airport' do
      plane = Plane.new
      subject.land(plane)
      subject.take_off(plane)
      expect(subject.hangar).to eq []
    end
  end

end