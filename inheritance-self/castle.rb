require_relative 'building'
require_relative 'butler'

# Castle --> child class
# Building --> parent class
class Castle < Building
	attr_accessor :butler

	# class methods
	def self.categories
		super + ['Medieval', 'Norman', 'Ancient']
	end

	def initialize(name, width, length, butler_name)
		super(name, width, length)
		@butler = Butler.new(butler_name, self)
	end


	# instance methods
	def has_a_butler?
		@butler != nil
	end

	def floor_area
		# super goes to (first) parent method 
		# with the exact same name
		super + 300
	end
end