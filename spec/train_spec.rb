require 'train'
require 'station'

describe Train do

	it "has no coaches when created" do
		train = Train.new
		expect(train.coaches).to eq []
	end
	



end