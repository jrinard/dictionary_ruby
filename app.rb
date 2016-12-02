require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
# require('./lib/definition')       don't forget later

get('/') do
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

get('/word_list') do
  @word_list = Word.all()
  erb(:word_list)
end

post('/word_list') do
  word = params.fetch("word")
  Word.new(word).save()
  @word_list = Word.all()
  erb(:success)
end

get('/word_list/:id') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end
