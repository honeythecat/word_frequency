require('rspec')
require('word_frequency')

describe("String#word_frequency") do
	it("for a string with only one word, counts if the given word appears in the string") do
		phrase = ("cat")
		word_to_find = ("cat")
		expect(phrase.word_frequency(word_to_find)).to(eq(1))
  end
	
	it("for a string with multiple words, counts how many times the given word appears in the string") do
		phrase = ("cat cat")
		word_to_find = ("cat")
		expect(phrase.word_frequency(word_to_find)).to(eq(2))
	end
end