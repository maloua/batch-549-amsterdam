class Animal
	def self.make_some_noise(animals)
		animals.each do |animal|
			puts animal.talk
		end
	end

	attr_reader :name

	def initialize(name, sound)
		@name = name
		@sound = sound
	end

	def talk
		return "#{@name} #{@sound}"
	end

	def eat(food)
		return "#{@name} eats a #{food}"
	end
end