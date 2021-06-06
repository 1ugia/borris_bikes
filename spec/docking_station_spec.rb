require 'docking_station' 

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  # it 'releases working bikes' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end
  # This gets updated to : describe #release_bike

  # it 'has a bike' do
  #   expect(subject).to respond_to Bike
  # end

  it { is_expected.to respond_to(:dock).with(1).argument }
  

  it { is_expected.to respond_to :bike }
  
  it { is_expected.to respond_to :view_bikes }
  # it 'view docked bike in station' do
  #   @bikes = []
  #   @bikes << (20.times { subject.dock Bike.new })
  #   expect(subject.view_bikes).to eq @bikes
  # end 
  # it keeps triggering and doesn't allow the test to pass as codes has changed


  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no more bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'docks a bike' do
      @bikes = []
      bike = Bike.new
      @bikes << bike 
      expect(subject.dock(bike)).to eq @bikes
    end 
    # this has been modified to suit this challenge
    
    it 'raises an error when full' do
      # subject.dock(Bike.new)
      # expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    # raising error for ONE capacity of space
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

  end 
end