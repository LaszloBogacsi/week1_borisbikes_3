require_relative 'docking_station'

docking_station = DockingStation.new

15.times {docking_station.dock Bike.new}
docking_station.release_bike
puts docking_station.bikes.length
