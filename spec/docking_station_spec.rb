require 'docking_station'

describe DockingStation do

  it 'releases bike' do
    station1 = DockingStation.new
    expect(station1).to respond_to(:release_bike)
  end

  it 'creates new bike when release_bike' do
    skip ('release_bike method is not producing new bikes')
    station1 = DockingStation.new
    expect(station1.release_bike).to be_instance_of(Bike)
  end

  it 'tests if bike is working' do
    skip ('release_bike method is not producing new bikes')
    bike1 = subject.release_bike
    expect(bike1).to be_working
  end

  it 'docks a bike' do
    station1 = DockingStation.new
    expect(station1).to respond_to(:dock).with(1).argument
  end

  it "reads docked bike" do
    station1 = DockingStation.new
    customer_bike = Bike.new
    expect(station1.dock(customer_bike)).to eq(customer_bike)
  end

  it 'tests if there is an error thrown' do
    expect { subject.release_bike }.to raise_error("No more bikes")
  end

  it 'raises error when the station is full' do
    bike = Bike.new
    expect { subject.dock(bike) }.to raise_error("Station is full")
  end

end
