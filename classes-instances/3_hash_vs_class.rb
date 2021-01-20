class Car
	def initialize(color, year)
		@color = color
		@year = year
		@odometer = 0 
		@engine_started = false
	end

	attr_reader :year, :engine_started


	attr_accessor :color

	def start_engine
		# doing difficult car stuff
		# something under the hood
		# more car stuff
		@engine_started = true
	end
end

# CLASS
class_car = Car.new('grey', 2010)
# only read color, year and engine_started
# only change color
# only start engine
# restrictions to protect us
# methods to help us
# all cars will have the same properties (instance variables)

# HASH
hash_car = {
	color: 'black',
	year: 2010,
	odomoter: 0,
	engine_started: false
}

# read, add, change or delete anything you want
# no methods (behavior) to make a complicated change for us
# every car hash can have different keys, with different values, of different classes...
# very hard to work with!

hash_car[:color]
hash_car[:odometer] = 10.000
hash_car[:engine_started] = true
hash_car.delete(:color)
