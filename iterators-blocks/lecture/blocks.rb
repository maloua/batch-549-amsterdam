# students = ['Harm', 'Antony', 'Olivia']

# students.each do |student|
# 	puts "Hello #{student}"
# end 

def greet(name)
	puts "#{name}s' yielding method thingy!"

	puts "1. Im in the method"

	if block_given?
		yield('Antony')
	end

	puts "3. At the end of the method"
end

greet('Thomas') do |variable|
	puts "2. yielding the block for #{variable}"
end

puts
puts "Continuing program ..."
puts "Lots of interesting code ..."
puts "Oh look there comes the method again!"
puts "Without a block this time ..."
puts

greet('Monica')