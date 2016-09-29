require 'garage'

describe Garage do
  before :each do
    @garage1 = Garage.new
    @fixed_bikes_in_test = ['bike1', 'bike2', 'bike3']
  end
  describe 'van transfer' do
    it 'receives bikes from van' do
      expect(@garage1.bikes_from_van(['bike1', 'bike2', 'bike3'])).to eq(@fixed_bikes_in_test)
    end

    it 'sends the fixed bikes to van' do
      @garage1.fixed_bikes = @fixed_bikes_in_test
      expect(@garage1.bikes_to_van).to eq(@fixed_bikes_in_test)
    end
  end

  describe 'fixing bikes' do

  end


end
