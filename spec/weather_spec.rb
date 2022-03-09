require 'weather'

describe Weather do
  describe '#stormy' do
    it 'returns true if stormy' do
      allow(subject).to receive(:stormy?) {true}
      expect(subject).to be_stormy
    end

    it 'returns false if it is not stormy' do
      allow(subject).to receive(:stormy?) {false}
      expect(subject).not_to be_stormy
    end
  end
end