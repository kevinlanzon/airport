describe 'User stories' do
  # As an air traffic controller
  # So planes can land safely at my airport
  # I want to instruct a plane to land
  it 'so planes land at airport, instruct plane to land' do
    airport = Airport.new(20)
    plane = Plane.new
    expect { airport.land(plane) }.not_to raise_error
  end

  # As an air traffic controller
  # So planes can take off safely from my airport
  # I want to instruct a plane to take off
  it 'so planes take off from airport, instruct planes to take off' do
    airport = Airport.new(20)
    plane = Plane.new
    expect { airport.take_off(plane) }.not_to raise_error
  end

  # As an air traffic controller
  # So I can avoid collisions
  # I want to prevent planes landing when my aiport is full
  it 'should not allow planes to land when airport is full' do
    airport = Airport.new(20)
    plane = Plane.new
    20.times { airport.land(plane) }
    expect { airport.land(plane) }.to raise_error 'Cannot land plane: airport full'
  end
end