require_relative 'bike'

class DockingStation
  attr_reader :bike
  # def bike
  #   @bike
  # end 
  def initialize
    @bikes = []
  end

  def release_bike
    # Bike.new # creates new bike everytime
    # fail 'No bikes available' unless @bike
    # @bike
    # old code for raising error for one capacify and return a bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    # raise 'Docking station full' if @bike
    # @bike = bike
    # old code for raising error for one capacify and return a bike
    fail 'Docking station full' if @bikes.count >= 20
    @bikes << bike
  end

  def view_bikes
    @bikes
  end
  
end