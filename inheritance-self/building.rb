require_relative 'construction'

class Building < Construction
	# class methods
	def self.categories
		['Pretty', 'Ugly']
	end

	# getter
	attr_reader :name

	# instance methods
	def floor_area
		super + 1
	end
end