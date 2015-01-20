require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_frequency.rb')

get('/form') do
  erb(:form)
end

get('/result') do
	@word = params.fetch('word')
	@phrase = params.fetch('phrase')
	@totalnumber = params.fetch('phrase').word_frequency(params.fetch('word'))
  erb(:result)
end
