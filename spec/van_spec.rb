require 'van'
describe Van do

  before :each do
    @van = Van.new
    @station = double(:station)
    allow(@station).to receive(:bikes_to_van).and_return(['bike1', 'bike2', 'bike3'])
  end

  describe 'Bike collection' do
    it 'saves an array of bikes' do
      expect(@van.take_bikes(@station)).to eq(['bike1', 'bike2', 'bike3'])
    end
  end

  describe 'Bike dropoff' do
    it 'Drops off bikes at "location"' do
    end
  end

end
