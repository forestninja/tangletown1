require 'rubygems'
require 'bundler/setup'
require 'sinatra'

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

helpers do
  # add your helpers here
end

before do
    @request = request
end

get '/' do
  @title = "page title, this is simple, look in layout.erb. The @ sign is magic"
  erb :home
end


get '/test*' do
  @title = "page title, this is simple, look in layout.erb. The @ sign is magic"
  erb :home
end

get '/things' do
  @array_of_things = []
  @array_of_things << "cats"
  @array_of_things << "dogs"
  @array_of_things << "cars"
  erb :things
end

get '/test' do
  "hello"
end

get '/signup' do
  @title = "signup"
  erb :signup
end