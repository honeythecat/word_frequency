class String#word_frequency
	def word_frequency(word_to_find)
		phrase = downcase.split
		word_frequency = 0
		
		phrase.each do |word|
			if word == word_to_find
				word_frequency += 1
			end
		end
		word_frequency
	end
end		
