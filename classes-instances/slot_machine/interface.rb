require_relative 'slot_machine'

machine = SlotMachine.new
playing = true

while playing
	symbols = machine.play
	score = machine.score(symbols)

	puts "***************"

	print "  " + symbols[0] + "  "
	sleep(1)
	print symbols[1] + "  "
	sleep(1)
	puts symbols[2] + "  "
	
	if score > 0
		puts "You've won #{score} points!"
	else
		puts "You're not so good at this..."
	end

	puts "Continue playing? yes/no"
	
	input = gets.chomp
	playing = false if input == 'no'
end