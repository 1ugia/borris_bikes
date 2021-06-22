require 'docking_station' 

describe DockingStation do  

  it { is_expected.to respond_to :bike }

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error if no bikes' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'docks a bike' do
      bikes = []
      bike = Bike.new
      bikes << bike 
      expect(subject.dock(bike)).to eq (bikes)
    end 
  
    it 'raises an error when full' do
      subject.capacity.times {subject.dock(Bike.new)}
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq(DockingStation::DEFAULT_CAP)
    end
  end 

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) {Bike.new}
    it 'defaults capacity' do
      described_class::DEFAULT_CAP.times {subject.dock(bike)}
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    # it 'has a variable capacity' do
    #   station = DockingStation.new(50)
    #   50.times { station.dock(Bike.new)}
    #   expect{station.dock(Bike.new)}.to raise_error 'Docking station full'
    end
  end
end