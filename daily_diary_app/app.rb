require 'sinatra/base'

class DailyDiaryApp < Sinatra::Base

  get '/' do
    redirect '/diary'
  end

  get '/diary' do
    erb :index
  end

  post '/diary' do
    erb :create
  end

  get 'diary/add-entry' do
    'you are on the get page'
  end
  

  run! if app_file ==$0
end
