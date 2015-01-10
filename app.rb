require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')

get('/form') do
  erb(:form)
end

get('/wc_output') do
  @result = params.fetch('text_block').word_count(params.fetch('word'))
  @word = params.fetch('word')
  @text_block = params.fetch('text_block')
  if @result < 2 and @result > 0
  end
  if @word == ""
     @error = "Nothing entered, try again please."
  end
  erb(:wc_output)
end
