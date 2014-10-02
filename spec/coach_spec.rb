require 'coach'

describe Coach do

	let(:coach) { Coach.new }

	it 'has no passengers' do
		expect(coach.passengers).to eq []
		expect(coach.passengers.count).to eq 0
		expect(coach).to be_empty
		expect(coach.empty?).to be true
	end

	it 'can board passengers' do
		expect(coach).to respond_to(:board)		
	end

	it 'has one passenger after boarding one' do
		some_passenger = double :passenger, :checked_in? => true
		coach.board(some_passenger)
		expect(coach.passengers).to eq [some_passenger]
	end

	it "cannot board a passenger if the passenger hasn't checked in" do
		passenger_not_checked_in = double :passenger, :checked_in? => false
		expect{coach.board(passenger_not_checked_in)}.to raise_error 'You need a valid ticked or oyster card to be on this train'
	end

end