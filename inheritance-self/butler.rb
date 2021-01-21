class Butler
	# getter
	attr_reader :castle

	# instance methods
	def initialize(name, castle)
		@name = name # String class
		@castle = castle # Castle class
	end

	def clean_house
		"All clean!"
	end
end