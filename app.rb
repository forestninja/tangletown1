require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'rack-google-analytics'

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
  erb :welcome
end

get '/czt' do
  @title = "TangleTown Brag Books - CZT Product Spec Sheet"
  redirect "/files/TT_Brag_Books_CZT_Spec_Sheet.pdf"
end