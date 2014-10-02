class Coach

	def initialize
		@passengers = []
	end

	def passengers
		@passengers
	end

	def empty?
		true
	end

	def board(passenger)
		raise 'You need a valid ticked or oyster card to be on this train' unless passenger.checked_in?
		@passengers << passenger
	end

end