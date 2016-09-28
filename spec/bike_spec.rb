require 'bike'

describe Bike do
  it "should responds to working?" do
    bike1 = Bike.new
    expect(bike1).to respond_to(:working?)
  end

end
