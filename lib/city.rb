class City 

	DEFAULT_CAPACITY = 5000000

	attr_accessor :capacity

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@holder = []
	end

	def accept_passenger(passenger)
		@holder << passenger
	end


	def holder_count
		@holder.count
	end

	def release_passenger(passenger)
		@holder.delete(passenger)
	end


	# def holder
	# 	@holder = []
	# end
	
end