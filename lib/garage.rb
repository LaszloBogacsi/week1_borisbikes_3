class Garage
  attr_writer :fixed_bikes
  def bikes_from_van(incoming_bikes)
    @bikes_to_fix = incoming_bikes
  end

  

  def bikes_to_van
    temp_fixed_bikes = @fixed_bikes
    @fixed_bikes = []
    temp_fixed_bikes
  end
end
