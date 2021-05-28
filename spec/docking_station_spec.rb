require 'docking_station'

describe DockingStation do # descirbes the behaviour
  it { is_expected.to respond_to :release_bike }
    # expect(subject).to respond_to :release_bike
    # require looks for the :release_bike method
    #  in the docking_station file. 
    # .to = is a matcher
    # respond_to = matcher to see if it responds to..

    # it 'releases working bikes' do 
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end
    # This part is no longer needed as it gets updaded further down the 
    # line as the method needs to be called

  it {is_expected.to respond_to :dock_bike}
#   it 'dock bike at station' do
#   dock = subject.dock_bike
#   expect(dock).to be_working
  it { is_expected.to respond_to(:dock_bike).with(1).argument }


  it { is_expected.to respond_to(:bike) } 

  it 'dock something' do
    bike = Bike.new # it puts in new bike every time when docking
    expect(subject.dock_bike(bike)).to eq bike
# its expecting every time we dock a bike, to equal a new bike
  end

  it 'shows docked bikes available' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bike).to eq bike
  end

  it 'raise an error if no bikes available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end
 
  describe '#release_bike' do
    it 'release a bike' do
        bike = Bike.new
        subject.dock_bike(bike)
        expect(subject.release_bike).to eq bike
    end
end

end