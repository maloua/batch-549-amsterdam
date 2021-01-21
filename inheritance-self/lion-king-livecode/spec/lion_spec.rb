require_relative '../lion'

describe Lion do
	describe '#talk' do
		it "roars" do
			simba = Lion.new('Simba', 'roars')

			expected = "Simba roars"
			actual = simba.talk

			expect(actual).to eq(expected)
		end
	end

	describe '#eat(food)' do
		it 'returns a string' do
			simba = Lion.new('Simba', 'roars')

			expected = 'Simba eats a gazelle. Law of the Jungle!'
			actual = simba.eat('gazelle')

			expect(actual).to eq(expected)
		end
	end	
end