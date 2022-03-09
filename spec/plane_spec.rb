require 'plane'

describe Plane do 
  describe 'flying' do
    it 'confirms that the plane is no longer at the airport' do
      expect(subject.flying).to eq :airborne
    end
  end
  
  describe 'grounded' do
    it 'confirms that the plane is at the airport' do
      subject.grounded
      expect(subject.grounded).to eq :grounded
    end
  end

end