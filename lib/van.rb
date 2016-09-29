

class Van

  def take_bikes(station_id)
    @broken_bikes = station_id.broken_bikes
    station_id.broken_bikes = []
  end


end
