require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:form)
end

get('/result') do
  @word = params.fetch('word')
  @word = params.fetch('count')
  @result = params.fetch('word').word_count(params.fetch('count'))
  erb(:result)
end
