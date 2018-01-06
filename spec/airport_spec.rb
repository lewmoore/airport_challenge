require 'airport.rb'

describe Airport do
  it 'a plane lands in the airport' do
    plane = Plane.new
    expect(subject.land(plane)).to eq [plane]
  end

  it 'a plane takes off from the airport' do
    plane = Plane.new
    subject.land(plane)
    expect(subject.take_off).to eq plane
  end

  it 'planes cant take off when stormy' do
    airport = Airport.new('stormy')
    plane = Plane.new
    airport.land(plane)
    expect { airport.take_off }.to raise_error 'the weather is too stormy'
  end
end
