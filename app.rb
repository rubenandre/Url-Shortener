require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base
  get '/' do
    p 'Hello'
  end
end
