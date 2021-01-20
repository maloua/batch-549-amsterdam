class Car
	attr_reader :year, :engine_started
	attr_accessor :color

	def initialize(color, year)
		@color = color
		@year = year
		@engine_started = false

		# not writable from outside the class
		@odometer = 0 

		# not readable or writable from outside the class
		@sparks_ignited = false
	end

	def start_engine
		start_fuel_pump
    	init_spark_plug

    	if @sparks_ignited
			@engine_started = true
		end
	end

	private # everything below is not accessible from outside the class

	def start_fuel_pump
		# stuff happening
	end

	def init_spark_plug
		puts "sparking those plugs"
		@sparks_ignited = true
	end
end

old_car = Car.new('red', 1995)
new_car = Car.new('blue', 2021)

new_car.color = 'purple'
new_car.start_engine
# new_car.init_spark_plug # --> not allowed! it's private

p new_car