require 'garage'

describe Garage do

  let(:bike_broken) {double :bike_broken}

  before :each do
    @garage1 = Garage.new
    @fixed_bikes_in_test = ['bike1', 'bike2', 'bike3']
    allow(bike_broken).to receive(:working?).and_return(false)
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
    it 'processes bike' do
      bike = spy("bike")
      @garage1.bikes_to_fix = [bike]
      @garage1.process_bikes
      expect(bike).to have_received(fix_bike)
    end
  end


end
