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

	it "should allow trains to stop" do
	station = Station.new
	station.dock_train(train)
	expect(station.platform).to include(train)
	end

end