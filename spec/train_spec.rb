require 'train'
require 'station'

describe Train do

	it "should travel between stations" do
		train = Train.new
		station_a = Station.new
		station_b = Station.new
		station_b.dock_train(train)
		expect(station_b.platform.count).to eq 1
		expect(station_a.platform.count).to eq 0
		station_a.platform << station_b.platform.delete_at(0)
		expect(station_b.platform.count).to eq 0
		expect(station_a.platform.count).to eq 1
	end

end