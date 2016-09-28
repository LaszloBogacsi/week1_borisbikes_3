require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end
  def release_bike
    fail("No more bikes") if @bikes.size == 0
    @bikes.pop
  end

  def dock(customer_bike)
    fail("Station is full") if @bikes.size >= 20
    @bikes << customer_bike
  end

end
