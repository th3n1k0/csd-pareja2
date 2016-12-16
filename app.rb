require 'sinatra'
require 'better_errors'
require './lib/contador.rb'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	erb :juego
end

post '/marcar/j1' do
 # session["contador"].marcar "j1"
#  session["contador"].marcar "j1"

  
  erb :juego
end

post '/marcar/j2' do
 # session["contador"].marcar "j2"
  erb :juego
end

post '/marcar/j3' do
  #session["contador"].marcar "j3"
  erb :juego
end

post '/marcar/j4' do
  #session["contador"].marcar "j4"
  erb :juego
end


post '/validar/' do
  
  session["contador"] = ContadorPuntos.new 
  session["score"] = session["contador"].score
  erb :juego
end

