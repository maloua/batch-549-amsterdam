require 'pry-byebug'

def greet(name)
	capitalized_name = name.capitalize
	greeting = ['hello', 'bonjour'].sample
	
	binding.pry
	
	sentence = "#{greeting}, #{capitalized_name}"
	sentence
end

p greet('sjors')

