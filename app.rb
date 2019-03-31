require 'optparse'
require 'sinatra'
require_relative './tesla_manager'

tesla = TeslaManager.new(
  email: ENV['TESLA_EMAIL'],
  password: ENV['TESLA_PASSWORD'],
)

configure { set :server, :puma }

get '/' do
  "Hello World!"
end

get '/open_frunk' do
  tesla.vehicle.open_frunk
  nil
end

get '/open_trunk' do
  tesla.vehicle.open_trunk
  nil
end
