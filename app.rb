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
	erb :inicio
end

post '/iniciar' do
  session["jugador"] = params["textj1"]
  session["contador"] = ContadorPuntos.new
  
	erb :juego
end

post '/marcar/j1' do
 session["contador"].marcar "j1"
 erb :juego
end

post '/marcar/j2' do
 erb :juego
end

post '/marcar/j3' do
  erb :juego
end

post '/marcar/j4' do
  erb :juego
end


post '/validar' do
  
  
  session["score"] = session["contador"].score
  erb :juego  
end

post '/marcar/j4' do
  erb :juego
end

