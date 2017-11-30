require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'lib/caesar_cipher'

get '/' do
  message = params["message"]

  unless params["shift"].nil?
    shift = params["shift"].to_i
  end

  unless message.nil? && shift.nil?
    encrypted = caesar_cipher(message, shift)
  end

  erb :index, :locals => { :encrypted => encrypted }
end