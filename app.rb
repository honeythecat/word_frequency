require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rps.rb')

get('/form') do
	@word = params.fetch('word')
	@phrase = params.fetch('phrase')
  erb(:form)
end

get('/result') do
	@word = params.fetch('word')
	@phrase = params.fetch('phrase')
	@totalnumber = params.fetch('phrase').scrabble(params.fetch('word')
  erb(:result)
end
