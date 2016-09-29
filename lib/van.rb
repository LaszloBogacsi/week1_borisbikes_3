

class Van

  def take_bikes(location)
    @transport_bikes = location.bikes_to_van
  end

  def dropoff(location)
    location.receive_fixed_bikes(@transport_bikes)
  end

end
