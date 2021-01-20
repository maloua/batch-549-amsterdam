require_relative '../citizen'

describe Citizen do
	describe '#can_vote?' do
		it 'should return true for citizens over 18' do
			corey = Citizen.new(33, 'Corey', 'McCue')

			actual = corey.can_vote?
			expected = true

			expect(actual).to eq(expected)
		end

		it 'should return false for citizens under 18' do
			baby = Citizen.new(0, 'Baby', 'McBaby')

			actual = baby.can_vote?
			expected = false

			expect(actual).to eq(expected)
		end
	end

	describe '#full_name' do
		it 'returns a formatted string' do
			fran = Citizen.new(26, 'Francesca', 'Santoriello')

			actual = fran.full_name
			expected = "name: Francesca, surname: Santoriello"

			expect(actual).to eq(expected)
		end
	end
end