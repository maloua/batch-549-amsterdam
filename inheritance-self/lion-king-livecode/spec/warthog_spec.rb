require_relative '../warthog'

describe Warthog do
	describe '#talk' do
		it "grunts" do
			pumbaa = Warthog.new('Pumbaa', 'grunts')

			expected = "Pumbaa grunts"
			actual = pumbaa.talk

			expect(actual).to eq(expected)
		end
	end

	describe '#eat(food)' do
		it 'returns a string' do
			pumbaa = Warthog.new('Pumbaa', 'grunts')

			expected = 'Pumbaa eats a bug'
			actual = pumbaa.eat('bug')

			expect(actual).to eq(expected)
		end
	end
end