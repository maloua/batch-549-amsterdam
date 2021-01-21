require_relative 'animal'

class Lion < Animal
	def eat(food)
		# the eat method in the parent class (Animal)
		# --> takes the exact same argument as this
		# --> eat method received! Because of this,
		# --> we don't have to explicitly pass the argument
		# --> super is the same as super(food)
		"#{super}. Law of the Jungle!"
	end
end
