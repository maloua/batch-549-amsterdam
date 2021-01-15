require_relative "../acronymize"

describe '#acronymize' do
	it "returns an upcased acronym" do
		result = acronymize("Laugh Out Loud")
		expected = "LOL"

		expect(result).to eq(expected)
	end

	it "returns an upcased acronym" do
		result = acronymize("thank god its thursday")
		expected = "TGIT"

		expect(result).to eq(expected)
	end

	it "returns an emptry string for an empty string" do
		result = acronymize("")
		expected = ""

		expect(result).to eq(expected)
	end
end
