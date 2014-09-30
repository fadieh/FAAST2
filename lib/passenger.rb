class Passenger

	def initialize(name = "Joe")
		@checked_out = true
		@name = name
	end

	def checked_out?
		@checked_out
	end

	def check_in
		@checked_out = false
	end

	# def Passenger.fadie
	# 	new("Fadie")
	# end

end

# fadie = Passenger.fadie
# p fadie

