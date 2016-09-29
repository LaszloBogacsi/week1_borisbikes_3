require 'docking_station'
require 'bike'

describe DockingStation do

  before :each do
    @station1 = DockingStation.new
    @bike = Bike.new
  end

  it 'releases bike' do
    expect(@station1).to respond_to(:release_bike)
  end

  it 'creates new bike when release_bike' do
    expect(@bike).to be_instance_of(Bike)
  end

  it 'tests if bike is working' do
    expect(@bike).to be_working
  end

  it 'docks a bike' do
    expect(@station1).to respond_to(:dock).with(1).argument
  end

  it "reads docked bike" do
    @station1.dock(@bike)
    expect(@station1.bikes).to eq([@bike])
  end

  it 'tests if there is an error thrown' do
    expect { @station1.release_bike }.to raise_error("No more bikes")
  end

  it 'raises error when the station is full' do
    expect {21.times{ @station1.dock(@bike) }}.to raise_error("Station is full")
  end


end
