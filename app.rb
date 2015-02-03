require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/word_frequency.rb'
set :bind, '0.0.0.0'
set :port, 3000

get '/' do
  erb :form
end

get '/form' do
	@word = params['word']
	@phrase = params['phrase']
	@total_number = params['phrase'].word_frequency(params['word'])
	erb :result
end
