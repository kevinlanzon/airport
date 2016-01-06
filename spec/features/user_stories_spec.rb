describe 'User stories' do

  let(:airport) { Airport.new(20) }
  let(:plane) { Plane.new }

  context 'when not stormy' do
    before do
      allow(airport).to receive(:stormy?).and_return false
    end
  # As an air traffic controller
  # So planes can land safely at my airport
  # I want to instruct a plane to land
    it 'so planes land at airport, instruct plane to land' do
      expect { airport.land(plane) }.not_to raise_error
    end

    # As an air traffic controller
    # So planes can take off safely from my airport
    # I want to instruct a plane to take off
    it 'so planes take off from airport, instruct planes to take off' do
      expect { airport.take_off(plane) }.not_to raise_error
    end

    # As an air traffic controller
    # So I can avoid collisions
    # I want to prevent planes landing when my aiport is full
    context 'when airport is full' do
      it 'does not allow planes to land' do
        20.times { airport.land(plane) }
        expect { airport.land(plane) }.to raise_error 'Cannot land plane: airport is full'
      end
    end
  end

  # As an air traffic controller
  # So I can avoid accidents
  # I want to prevent planes landing or taking off when the weather is stormy
  context 'when weather is stormy' do
    before do
      allow(airport).to receive(:stormy?).and_return true
    end

    it 'does not allow planes to land' do
      expect { airport.land(plane) }.to raise_error 'Cannot land plane: weather is stormy'
    end

    it 'does not allow planes to take off' do
      expect { airport.take_off(plane) }.to raise_error 'Cannot take off plane: weather is stormy'
    end
  end
end
