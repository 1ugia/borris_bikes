require_relative 'bike' 

class DockingStation
    attr_reader :bike
#   attribute defines method without writing all down.
#   reader = allows you to read object
#   acessor = allows you to amend object
#  def bike
#     @bike # returns bike
#   end



    # def initialize 
    # @bikes = []
    # end

  def release_bike
    
    fail 'No bikes available' unless @bike
    @bike # keeps creating new bikes
    # Bike.new # now that we want to check that there is
    # a bike inside, we don't need to create 
    # new bikes ecery time. so get rid of new bikes.
  end

  def dock_bike(bike)
    @bike = bike 
  end

end

# The ability to remember docked bikes ('state')
# The ability to report docked bikes ('behaviour')
