class Station

	def passengers
		@passengers ||= []
	end

	def touch_in(passenger)
		passengers << passenger
	end

	def release(passenger)
		passengers.delete(passenger)
	end

	def platform
		@platform ||= [].take(1)
	end

	def dock_train(train)
		platform << train
	end

end