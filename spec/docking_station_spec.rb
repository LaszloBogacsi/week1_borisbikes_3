require 'docking_station'
require 'bike'

describe DockingStation do

  before :each do
    @station1 = DockingStation.new
    @bike = double(:bike)
    allow(@bike).to receive(:working?).and_return(true)
    @broken_bike = double(:broken_bike)
    allow(@broken_bike).to receive(:working?).and_return(false)
  end

  describe 'Docking bikes' do
    it 'docks a working bike' do
      expect(@station1.dock(@bike)).to eq([@bike])
    end

    it 'docks a broken bike' do
      expect(@station1.dock(@broken_bike)).to eq([@broken_bike])
    end

    it "reads docked bike" do
      @station1.dock(@bike)
      expect(@station1.bikes).to eq([@bike])
    end

    it "reports broken bikes" do
      @station1.dock(@broken_bike)
      expect(@station1.broken_bikes).to eq([@broken_bike])
    end
  end

  describe 'Releasing bikes' do
    it 'releases bike' do
      expect(@station1).to respond_to(:release_bike)
    end

    it 'creates new bike when release_bike' do
      expect(Bike.new).to be_instance_of(Bike)
    end
  end

  describe 'Bike functionality' do
    it 'tests if bike is working' do
      expect(@bike).to be_working
    end
  end

  describe 'error handling' do
    it 'tests if there is an error thrown' do
      expect { @station1.release_bike }.to raise_error("No more working bikes")
    end

    it 'raises error when the station is full' do
      expect {(DockingStation::DEFAULT_CAPACITY + 1).times{ @station1.dock(@bike) }}.to raise_error("Station is full")
    end
  end

  describe 'setting DEFAULT_CAPACITY' do
    it 'capacity defaults to 20 when no arg provided at init' do
      expect(@station1.capacity).to eq 20
    end

    it 'capacity can be set at initialization' do
      expect(DockingStation.new(35).capacity).to eq 35
    end
  end


end
