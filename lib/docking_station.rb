require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail("No more bikes") unless @bike
    @bike
  end

  def dock(customer_bike)
    fail("Station is full") while @bike
    @bike = customer_bike
  end

end
