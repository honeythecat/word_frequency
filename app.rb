require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_frequency.rb')
set(:bind, '0.0.0.0')
set(:port, 3000)

get('/') do
  erb(:form)
end

get('/form') do
	@word = params.fetch('word')
	@phrase = params.fetch('phrase')
	@totalnumber = params.fetch('phrase').word_frequency(params.fetch('word'))
	erb(:result)
end
