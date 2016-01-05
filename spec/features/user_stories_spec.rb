describe 'User stories' do
  # As an air traffic controller
  # So planes can land safely at my airport
  # I want to instruct a plane to land
  it 'so planes land at airport, instruct plane to land' do
    airport = Airport.new
    plane = Plane.new
    expect { airport.land(plane) }.not_to raise_error
  end

end