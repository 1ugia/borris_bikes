require_relative 'bike'

class DockingStation
  attr_reader :bike, :bikes

  DEFAULT_CAP = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.count >= DEFAULT_CAP
    @bikes << bike
  end

  private 

  def full?
    bikes.count >= DEFAULT_CAP
  end

  def empty?
    @bikes.empty?
  end
  
end