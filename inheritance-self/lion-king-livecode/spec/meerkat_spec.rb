require_relative '../meerkat'

describe Meerkat do
	describe '#talk' do
		it "barks" do
			timon = Meerkat.new('Timon', 'barks')

			expected = "Timon barks"
			actual = timon.talk

			expect(actual).to eq(expected)
		end
	end

	describe '#eat(food)' do
		it 'returns a string' do
			timon = Meerkat.new('Timon', 'barks')

			expected = 'Timon eats a leaf'
			actual = timon.eat('leaf')

			expect(actual).to eq(expected)
		end
	end
end