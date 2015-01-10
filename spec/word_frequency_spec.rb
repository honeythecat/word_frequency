require('rspec')
require('word_frequency')

describe('String#word_frequency') do
	
	it("splits a string into an array") do
		expect(("i love you").split()).to(eq(["i", "love", "you"]))
	end
	it("finds duplicate words in an array and counts the number of instances") do
		expect(("i").word_frequency()).to(eq(1))
	end
	it("when given the phrase 'love love love', with the variable 'love', it should return 3") do
		expect(("love love love").word_frequency()).to(eq(3))
	end
end