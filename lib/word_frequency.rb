class String	
	define_method(:word_frequency) do |word_to_find|
		phrase = self.split()
	 	word_to_find = [""]
		word_frequency = phrase.count(word_to_find)
		word_frequency.+(1)
	end
end
		
		
