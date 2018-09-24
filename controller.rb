require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/rps.rb')
also_reload('../models.*')

get '/game/:hand1/:hand2' do

  game = RockPaperScissors.new(params[:hand1], params[:hand2])

  @results = game.find_result
  erb(:result)
end

get '/rules' do
  erb(:rules)
end
