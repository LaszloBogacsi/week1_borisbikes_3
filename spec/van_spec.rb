require 'van'
describe Van do

  before :each do
    @van = Van.new
    @location = double(:location)
    allow(@location).to receive(:bikes_to_van).and_return(['bike1', 'bike2', 'bike3'])
    allow(@location).to receive(:receive_fixed_bikes).and_return(['bike4', 'bike5', 'bike6'])
  end

  describe 'Bike collection' do
    it 'saves an array of bikes' do
      expect(@van.take_bikes(@location)).to eq(['bike1', 'bike2', 'bike3'])
    end
  end

  describe 'Bike dropoff' do
    it 'Drops off bikes at "location"' do
      expect(@van.dropoff(@location)).to eq(['bike4', 'bike5', 'bike6'])
    end
  end

end
