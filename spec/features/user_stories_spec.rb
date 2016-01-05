describe 'User stories' do
  # As an air traffic controller
  # So planes can land safely at my airport
  # I want to instruct a plane to land
  it 'so planes land at airport, instruct plane to land' do
    airport = Airport.new
    plane = Plane.new
    expect { airport.land(plane) }.not_to raise_error
  end

  # As an air traffic controller
  # So planes can take off safely from my airport
  # I want to instruct a plane to take off
  it 'so planes take off from airport, instruct planes to take off' do
    airport = Airport.new
    plane = Plane.new
    expect { airport.take_off(plane) }.not_to raise_error
  end
end