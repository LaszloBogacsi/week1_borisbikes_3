require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_reader :capacity
  attr_reader :broken_bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @broken_bikes = []
  end

  def release_bike
    fail("No more working bikes") if empty?
    @bikes.pop
  end

  def dock(customer_bike)
    fail("Station is full") if full?
    if customer_bike.working? == true
      @bikes << customer_bike
    else
      @broken_bikes << customer_bike
    end
  end

  def bikes_to_van
    temp_broken_bikes = @broken_bikes
    @broken_bikes = []
    return temp_broken_bikes
  end

  def bikes_from_van(incoming_bikes)
    @bikes << incoming_bikes
  end

  private
    def full?
      (@bikes + @broken_bikes).size >= DEFAULT_CAPACITY ? true : false
    end

    def empty?
      @bikes.size == 0 ? true : false
    end
end
