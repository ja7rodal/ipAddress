require 'sinatra'
require './helpers'


#routes

get '/' do
  erb :home
end

post '/' do
  @binary_mask = get_mask(params[:mask])
  @subnet_id = get_subnet_id(params[:mask], params[:ipaddress])
  erb :home
end
