require 'sinatra'
require 'sinatra/activerecord'
require_relative 'controllers/resolve_destination'
require_relative 'controllers/store_urls'

set :public_folder, 'public'

class App < Sinatra::Base
  get '/' do
    @cond = false
    erb :home
  end

  post '/' do
    url = params[:urls]
    @new_url = StoreUrls.new.store(url)
    p @new_url
    @cond = true
    @local_endpoint = "http://localhost:3000/#{@new_url[0].local_parameter}"
    erb :home
  end

  get '/:local_parameter' do
    redirect ResolveLocalParameterDestination.new.redirect_to(params[:local_parameter])
  end
end
