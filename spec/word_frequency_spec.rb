require 'rspec'
require 'word_frequency'

describe 'String#word_frequency' do
	it 'for a string with only one word, counts if the given word appears in the string' do
		phrase = "cat"
		word_to_find = "cat"
		expect(phrase.word_frequency(word_to_find)).to eq 1
  end
	
	it 'for a string with multiple words, counts how many times the given word appears in the string' do
		phrase = "cat cat"
		word_to_find = "cat"
		expect(phrase.word_frequency(word_to_find)).to eq 2
	end

	it 'for a string with multiple words and punctuation, counts how many times the given word appears in the string' do
		phrase = "the. cat ate everything in in sight."
		word_to_find = "in"
		expect(phrase.word_frequency(word_to_find)).to eq 2
	end
	
	it 'for a string with punctuation will count the punctuation' do
		phrase = ". . . ,"
		word_to_find = "."
		expect(phrase.word_frequency(word_to_find)).to eq 3 
	end
	
	it 'for a string it will only count full words' do
		phrase = "cat cat"
		word_to_find = "at"
		expect(phrase.word_frequency(word_to_find)).to equal 0
	end
end
