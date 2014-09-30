require 'station'


describe Station do

	let (:passenger) { double :passenger }
	let (:train) { double :train }

	it "should let passengers touch in" do
	station = Station.new
	station.touch_in(passenger)
	expect(station.passengers).to include(passenger)
	end

	it "should release passengers" do
	station = Station.new
	station.release(passenger)
	expect(station.passengers.count).to eq 0
	end

	it "should allow trains to stop at the platform" do
	station = Station.new
	station.dock_train(train)
	expect(station.platform).to include(train)
	end

	it "should allow trains to leave the platform" do
	station = Station.new
	station.dock_train(train)
	expect(station.platform.count).to eq 1
	station.depart_platform(train)
	expect(station.platform.count).to eq 0
	end

	it "should allow trains to transport between 2 stations" do
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