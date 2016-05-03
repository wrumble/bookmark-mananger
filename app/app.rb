require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
	
	get '/links' do
		@links = Link.all
		erb :'links/index'
	end

	# get '/links/new' do

	# end

	# post '/links' do
		
	# end

  run! if app_file == $0	
end