require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    bike1 = Bike.new
  end

  def dock(customer_bike)
    @bike = customer_bike
  end

  def dock(bike)
    @bike = bike
  end

end
