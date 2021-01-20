class SlotMachine
	# def initialize
	# 	@coins = 0
	# end

	# def insert_coins(amount)
	# 	@coins += amount
	# end

	def play
		# if @coins >= 100
		# 	@coins -= 100
			reel = ['💎', '⭐️', '🔔', '🌈', '🍒']
			[reel.sample, reel.sample, reel.sample]
		# else
		# 	puts "insert some coins!"
		# end
	end

	def score(symbols_array)
		if symbols_array[0] == symbols_array[1] &&
			symbols_array[1] == symbols_array[2]
			# if all three symbols are the same, return 50 points
			return 50
		elsif symbols_array[0] == symbols_array[1] ||
			symbols_array[1] == symbols_array[2] ||
			symbols_array[0] == symbols_array[2]
			# if only two symbols are the same, return 25 points
			return 25
		else
			return 0
		end
	end
end
