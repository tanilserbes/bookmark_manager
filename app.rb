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

  run! if app_file == $0
end