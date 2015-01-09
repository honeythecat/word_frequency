class String
	define_method(:word_frequency) do
		phrase_array = self.split()
		word = Hash.new(0)
		
		duplicates = 1
		phrase_array.each do |compare|
			duplicates = duplicates.+(word[compare])
		end
		duplicates
	end
end	