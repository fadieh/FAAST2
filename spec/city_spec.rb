require 'city'

describe City do

	let (:passenger) { double :passenger }

	it "initialize with a default capacity" do
		city = City.new
		expect(city.capacity).to eq(5000000)
	end

	it "should contain passengers" do
	end

end
