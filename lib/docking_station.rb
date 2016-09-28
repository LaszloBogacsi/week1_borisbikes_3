class DockingStation
  attr_reader :bike

  def release_bike
    bike1 = Bike.new
  end

  def dock(customer_bike)
    @bike = customer_bike
  end
end
