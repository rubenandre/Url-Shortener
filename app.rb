require 'sinatra'
require 'sinatra/activerecord'
require_relative 'controllers/resolve_destination'

class App < Sinatra::Base
  get '/' do
    p 'Hello'
  end
  get '/:local_parameter' do
    redirect ResolveLocalParameterDestination.new.redirect_to(params[:local_parameter])
  end
end
