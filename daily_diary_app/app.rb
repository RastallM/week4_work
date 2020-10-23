require 'sinatra/base'

class DailyDiaryApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/diary/add-entry' do
    redirect '/diary/add-entry'
    "you're on the post page"
  end

  get 'diary/add-entry' do
    'you are on the get page'
  end
  

  run! if app_file ==$0
end
