#!/usr/bin/env ruby

require 'sinatra'

get '/' do # the root 'route'!
  @name = %w(Amigo Oscar Viking).sample
  erb :index
end


# at 'get' defines a block correspondng to a 'route' - i.e. a web page
get '/berry' do # defines a 'route' to a new page. layout.erb yields this block when the page is requested.
  erb :berry # if you want to specify a particualr layout do this:-
  # erb: berry, :layout => 'my_special_layout'
end
