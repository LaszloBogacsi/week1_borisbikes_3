class Bike
  #bike that contains the value working = true by default, and methods to
  #change working to false, and return the value of working


  attr_writer :working

  def initialize(working = true)
    #initializes the value of working as true
    @working = working
  end

  def working?
    #returns the bool of working
    @working
  end
end
