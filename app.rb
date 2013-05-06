require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'rack-google-analytics'
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/pattern'

use Rack::GoogleAnalytics, :tracker => 'UA-40494819-1'

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
  @title = "TangleTown"
  @patterns = Pattern.all
  erb :welcome
end

get '/create-pattern' do
  erb :create_pattern
end

post '/submit' do
	@pattern = Pattern.new(params[:pattern])
	if @pattern.save
		redirect '/'
	else
		"Sorry, there was an error!"
	end
end