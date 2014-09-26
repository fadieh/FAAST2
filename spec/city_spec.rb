require 'city'

describe City do

	let (:passenger) { double :passenger }

	it "initialize with a default capacity" do
		city = City.new
		expect(city.capacity).to eq(5000000)
	end

	it "should accept passengers" do
		city = City.new
		city.accept_passenger(passenger)
		expect(city.holder_count).to eq(1)
	end

	it "should release passengers" do
		city = City.new
		city.accept_passenger(passenger)
		expect(city.holder_count).to eq(1)
		city.release_passenger(passenger)
		expect(city.holder_count).to eq(0)
	end

	it "should print a list of people" do
		city = City.new
		city.list_all_passengers
	end

end