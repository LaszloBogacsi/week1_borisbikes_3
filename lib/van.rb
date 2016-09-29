

class Van

  def take_bikes(location)
    @transport_bikes = location.bikes_to_van
  end

  def dropoff(location)
    temp_transport_bikes = @transport_bikes
    location.bikes_from_van(temp_transport_bikes)
  end

end
