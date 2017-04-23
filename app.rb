require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rectangle')

get('/') do
  erb(:index)
end

get('/square') do
  length = params.fetch('length')
  width = params.fetch('width')
  @rectangle = Rectangle.new(length, width)
  @width = @rectangle.width()
  @length = @rectangle.length()
  erb(:square)
end
