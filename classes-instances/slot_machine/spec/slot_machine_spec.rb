# ['⭐️', '⭐️', '⭐️']
# ['⭐️', '⭐️', '7️⃣']
# ['⭐️', '🔔', '7️⃣']

require_relative '../slot_machine'

describe SlotMachine do
	describe '#score' do
		it "should give 50 points if score is 3 stars are the same" do
			machine = SlotMachine.new

			expected = 50

			symbols = ['⭐️', '⭐️', '⭐️']
			actual = machine.score(symbols)

			expect(actual).to eq(expected)
		end

			it "should give 50 points if score is 3 bells are the same" do
			machine = SlotMachine.new

			expected = 50

			score = ['🔔', '🔔', '🔔']
			actual = machine.score(score)

			expect(actual).to eq(expected)
		end

		it "should give 25 points if 2 symbols are the same" do
			machine = SlotMachine.new

			expected = 25

			score = ['⭐️', '⭐️', '7️⃣']
			actual = machine.score(score)

			expect(actual).to eq(expected)
		end


		it "should give 25 points if 2 symbols are the same" do
			machine = SlotMachine.new

			expected = 25

			score = ['⭐️', '7️⃣', '⭐️']
			actual = machine.score(score)

			expect(actual).to eq(expected)
		end

		it "should give 0 points if no symbols are the same" do
			machine = SlotMachine.new

			expected = 0

			score = ['⭐️', '🔔', '7️⃣']
			actual = machine.score(score)

			expect(actual).to eq(expected)
		end
	end

	describe '#play' do
		it 'gives a random results array with 3 symbols' do
			machine = SlotMachine.new

			expected = 3
			actual = machine.play.length

			expect(actual).to eq(expected)
		end
	end
end