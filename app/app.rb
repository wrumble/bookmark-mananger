ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base

	get '/' do
		redirect '/links'
	end

	get '/links' do
		@links = Link.all
		erb :'links/index'
	end

	get '/links/new' do
		erb :'links/new'
	end

	post '/links/save' do
		link = Link.create(:title => params[:title], :url => params[:url])
		tags = Tag.create(:tags => params[:tags])
		link.tags << tags
		link.save
		redirect '/links'
	end

  run! if app_file == $0
end
