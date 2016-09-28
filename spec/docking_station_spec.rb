require 'docking_station'

describe DockingStation do
  it 'releases bike' do
    station1 = DockingStation.new
    expect(station1).to respond_to(:release_bike)
  end

  it 'creates new bike when release_bike' do
    station1 = DockingStation.new
    expect(station1.release_bike).to be_instance_of(Bike)
  end

  it 'tests if bike is working' do
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

end
