require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end
  def release_bike
    fail("No more bikes") if empty?
    @bikes.pop
  end

  def dock(customer_bike)
    fail("Station is full") if full?
    @bikes << customer_bike
  end

  private
    def full?
      @bikes.size >= 20 ? true : false
    end

    def empty?
      @bikes.size == 0 ? true : false
    end
end
