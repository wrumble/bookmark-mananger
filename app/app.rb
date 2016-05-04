ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative './models/data_mapper_setup'

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
		tags = Tag.create(:name => params[:tags])
		link.tags << tags
		link.save
		redirect '/links'
	end

	get '/tags/:name' do
		tag = Tag.first(:name => params[:name])
		@links = tag ? tag.links : []
		erb :'links/index'
	end

  run! if app_file == $0
end
