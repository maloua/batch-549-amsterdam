class Construction
	def initialize(name, width, length)
		# instance variables
		@name = name
		@width = width
		@length = length
	end

	def floor_area
		@width * @length
	end
end