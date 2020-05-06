require 'sinatra'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.all 
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end
  
  post '/bookmarks' do
   Bookmarks.create(url: params['url'])
   redirect '/bookmarks'
   
  end

  run! if app_file == $0
end