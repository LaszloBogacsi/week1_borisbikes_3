require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  attr_reader :capacity
  attr_reader :alerts


  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
    @alerts = []
  end

  def release_bike
    fail("No more bikes") if empty?
    @bikes.pop
  end

  def dock(customer_bike)
    fail("Station is full") if full?
    puts customer_bike.working?
    if customer_bike.working? == true
      @bikes << customer_bike
    else
      @alerts << customer_bike
    end
  end



  private
    def full?
      (@bikes + @alerts).size >= DEFAULT_CAPACITY ? true : false
    end

    def empty?
      @bikes.size == 0 ? true : false
    end
end
