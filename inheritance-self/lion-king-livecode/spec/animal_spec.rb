require_relative '../animal'

describe Animal do
	describe '#name' do
		cow = Animal.new('Lucy', 'mooo')

		expected = 'Lucy'
		actual = cow.name

		it 'gives the beast a name we can read' do
			expect(actual).to eq(expected)
		end
	end
end