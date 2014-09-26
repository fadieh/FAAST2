class City 

	DEFAULT_CAPACITY = 5000000

	attr_accessor :capacity

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end
	
end