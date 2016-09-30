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
      expect(subject.bikes_from_van(['bike1', 'bike2', 'bike3'])).to eq(@fixed_bikes_in_test)
    end

    it 'sends the fixed bikes to van' do
      subject.fixed_bikes = @fixed_bikes_in_test
      expect(subject.bikes_to_van).to eq(@fixed_bikes_in_test)
    end
  end

  describe "#fix_bikes" do
    subject { Garage.new }
    it "fixes the bikes" do
      bike = spy('bike')
      subject.bikes_to_fix = [bike]
      subject.fix_bikes
      expect(bike).to have_received(:working=).with(true)
    end
  end
end
