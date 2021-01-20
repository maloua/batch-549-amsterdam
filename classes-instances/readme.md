# Classes & Instances

## Debugging
There are more powerful tools to debug your ruby files then `puts`. Today we learn about `pry-byebug`. To use it we need to install this gem through the terminal:

```
gem install pry-byebug
```

To use it, type `binding.pry` wherever you want in your ruby file. The terminal will pause on the line where you typed it. There are two ways to move forward in the terminal:
- `next` will execute only the next line of code, and pause again
- `continue` (or `ctrl + D`, or `exit`) will execute the rest of the code until the next breakpoint (that's either the end of the file or the next `binding.pry`)

**Don't forget to remove all the breakpoints before testing and commiting your code!**

## Object Oriented Programming
OOP makes use of *Data* and *Behavior*. Behavior is the set of methods that can act upon a piece of data. Data is the actual information. To take an example of a string:
```
# name = String.new('John')
name = 'John'
name.split
```
In this example, `'John'` is data and `#split` is behavior. The string `John` is an instance of the class `String`.

Built-in classes you know: String, Integer, Array, etc.

A class is like a cake mold (or blueprint, or factory). An instance is like a single cake from that mold (actual object with data and behavior).

We create a new file with a `lower_snake_case_name.rb` to make a new class with an `UpperCamelCase` name, like this:
```
class Car
end
```

### Instantiate
To create an instance of a class, we call `#new` on the class: `Car.new`. This will call the `#initialize` method *within* the Car class. We call this method the contructor.

Just like with Strings, Integers etc. we can assign this Car to a variable.

```
class Car
	def initialize
		puts "You've created a new car!"
	end
end

car = Car.new
```

### Instance variable - Data
Classes have properties, e.g. with a car: the color, and if the enige has started. Those are the *instance variables*. Mind the `@` in front of the variable name!

```
class Car
	def initialize(color)
		@color = color
	end
end

car = Car.new('blue')
```

### Reading data
Instance variables are hidden by default. You can't access them without writing some code. If you want to know if a car is started, you would have to write a method:
```
class Car
	# ...
	
	def engine_started?
		return @engine_started
	end
end

car = Car.new('blue')
car.engine_started?
```

If we have a lot of properties, we would have to write a lot of methods to be able to read our instance variables. There's a shortcut:
```
class Car
	# ...

	attr_reader :engine_started
	
	# def engine_started?
	#	return @engine_started
	# end
end
```

### Writing data
Methods (behavior) can change data. We can define behavior for our instance using *instance methods*. Say we want to be able to start the enige of the car:

Just like with reading, we need a method. In the example below you can see the method, as well as a shortcut, we can use to change an instance variable:

```
class Car
	# ...

	attr_writer :color
	
	# def color=(color)
	#	@color = color
	# end

	def start
		@engine_started = true
	end
end

car = Car.new('blue')
car.color = 'red'
car.start
```

`#start` is an instance methods of the Car class. You can only call it on an instance of the class (`my_car.start`), and it will apply the code inside to that instance.

### Reading and writing data
- `#attr_reader`: if you only need to read an instance variable
- `#attr_writer`: if you only need to write an instance variable
- `#attr_accessor`: if you need to both read and write an instance variable


```
class Car
	# ...

	attr_accessor :color
	
	# def color
	# 	return @color
	# end

	# def color=(color)
	#	@color = color
	# end
end

car = Car.new('blue')
car.color
car.color = 'red'
```

### Hiding methods
Complex methods that should only be available within your class, you can put beneath a `private` keyword:


```
class Car
	# ...

	def public_method
		puts "You can access this public_method"
		private_method
	end

	private

	def private_method
		puts "This method can only be called from within the class, like the #public_method, but not from outside the class."
	end
end

car = Car.new
car.public_method # will execute the method, so you'll see 2 puts statements!
car.private_method # impossible!
```
