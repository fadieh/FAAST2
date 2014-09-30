require 'passenger'

describe Passenger do

	it "should initialize outside the station" do
		passenger = Passenger.new
		expect(passenger).to be_checked_out
	end

	it "can check in" do
		passenger = Passenger.new
		passenger.check_in
		expect(passenger).not_to be_checked_out
	end

end