class Garage
  #contains functions to accept, fix and send off 'bikes'

  #accessors to allow manipulation of bike arrays, to enable easier testing
  attr_accessor :fixed_bikes
  attr_accessor :bikes_to_fix

  def initialize
    #creates empty arrays for later use
    @fixed_bikes = []
    @bikes_to_fix = []
  end

  def bikes_from_van(incoming_bikes)
    #accepts bikes from van
    @bikes_to_fix = incoming_bikes  #returns array of bikes
  end

  def bikes_to_van
    #sends fixed bikes to van
    temp_fixed_bikes = @fixed_bikes  #temporary variable
    @fixed_bikes = []  #clears array
    temp_fixed_bikes  #returns contents of temporary variable
  end

  def fix_bikes
    #fixes bikes, iterates over each instance
    @bikes_to_fix.map {|bike_in_progress|
      bike_in_progress.working = true  #changes value of bike.working to true
      @fixed_bikes << bike_in_progress  #appends to array of fixed bikes
    }
  end
end
