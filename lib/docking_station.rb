require_relative 'bike'

class DockingStation
  attr_reader :bike
  attr_accessor :capacity

  DEFAULT_CAP = 80

  def initialize(capacity=DEFAULT_CAP)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private 

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end
  
end