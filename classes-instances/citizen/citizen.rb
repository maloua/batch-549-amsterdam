class Citizen
	def initialize(age, first_name, last_name)
		@age = age
		@first_name = first_name
		@last_name = last_name
	end

	def can_vote?
		@age > 18
	end

	def full_name
		"name: #{@first_name}, surname: #{@last_name}"
	end
end