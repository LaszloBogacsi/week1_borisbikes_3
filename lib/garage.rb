class Garage
  attr_writer :fixed_bikes
  attr_accessor :bikes_to_fix

  def initialize
    @fixed_bikes = []
    @bikes_to_fix = []
  end

  def bikes_from_van(incoming_bikes)
    @bikes_to_fix = incoming_bikes
  end

  def bikes_to_van
    temp_fixed_bikes = @fixed_bikes
    @fixed_bikes = []
    temp_fixed_bikes
  end

  def fix_bike(bike_to_fix)
    bike_to_fix.working = true
  end

  def process_bikes
    @bikes_to_fix.map {|x|
    fix_bike(x)
    @fixed_bikes << x
    }
    @fixed_bikes
  end
end
