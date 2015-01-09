require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rps.rb')

get('/form') do
  erb(:form)
end

get('/result') do
  erb(:result)
end
