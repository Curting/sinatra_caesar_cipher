require 'sinatra'
require 'sinatra/reloader'

require_relative 'lib/caesar_cipher'

get '/' do
  erb :index
end