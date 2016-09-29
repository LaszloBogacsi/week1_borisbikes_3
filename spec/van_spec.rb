require 'van'

describe Van do

  before :each do
    @van = Van.new
    @bikes = ['bike1', 'bike2', 'bike3']
  end
  describe 'Bike collection' do
    it 'saves an array of bikes' do
      expect(@van.take_bikes).to eq([@bikes])
    end
  end

end
